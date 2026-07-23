import SwiftUI
import MapKit

struct ClusterMapView: UIViewRepresentable {

    let locations: [Location]

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()

        mapView.delegate = context.coordinator

        mapView.register(
            MKMarkerAnnotationView.self,
            forAnnotationViewWithReuseIdentifier: "Marker"
        )

        mapView.register(
            MKMarkerAnnotationView.self,
            forAnnotationViewWithReuseIdentifier: "Cluster"
        )

        return mapView
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {

        mapView.removeAnnotations(mapView.annotations)

        let annotations = locations.map { location in
            let annotation = MKPointAnnotation()

            annotation.title = location.name

            annotation.coordinate = CLLocationCoordinate2D(
                latitude: location.latitude,
                longitude: location.longitude
            )

            return annotation
        }

        mapView.addAnnotations(annotations)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, MKMapViewDelegate {

        func mapView(
            _ mapView: MKMapView,
            viewFor annotation: MKAnnotation
        ) -> MKAnnotationView? {

            if annotation is MKUserLocation {
                return nil
            }

            if let cluster = annotation as? MKClusterAnnotation {

                let view = mapView.dequeueReusableAnnotationView(
                    withIdentifier: "Cluster",
                    for: cluster
                ) as! MKMarkerAnnotationView

                view.markerTintColor = .systemBlue
                view.glyphText = "\(cluster.memberAnnotations.count)"

                return view
            }

            let view = mapView.dequeueReusableAnnotationView(
                withIdentifier: "Marker",
                for: annotation
            ) as! MKMarkerAnnotationView

            view.clusteringIdentifier = "location"

            return view
        }
    }
}
