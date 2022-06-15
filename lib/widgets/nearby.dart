// To parse this JSON data, do
//
//     final nearbyPlaces = nearbyPlacesFromJson(jsonString);

import 'dart:convert';

NearbyPlaces nearbyPlacesFromJson(String str) => NearbyPlaces.fromJson(json.decode(str));

String nearbyPlacesToJson(NearbyPlaces data) => json.encode(data.toJson());

class NearbyPlaces {
    NearbyPlaces({ 
        this.businessStatus,
        this.geometry,
        this.icon,
        this.iconBackgroundColor,
        this.iconMaskBaseUri,
        this.name,
        this.placeId,
        this.rating,
        this.reference,
        this.scope,
        this.types,
        this.userRatingsTotal,
        this.vicinity,
});

    String? businessStatus;
    Geometry? geometry;
    String? icon;
    String? iconBackgroundColor;
    String? iconMaskBaseUri;
    String? name;
    String? placeId;
    double? rating;
    String? reference;
    String? scope;
    List<String>? types;
    int? userRatingsTotal;
    String? vicinity;

    factory NearbyPlaces.fromJson(Map<String, dynamic> json) => NearbyPlaces(
        businessStatus: json["business_status"],
        geometry: Geometry.fromJson(json["geometry"]),
        icon: json["icon"],
        iconBackgroundColor: json["icon_background_color"],
        iconMaskBaseUri: json["icon_mask_base_uri"],
        name: json["name"],
        placeId: json["place_id"],
        rating: json["rating"].toDouble(),
        reference: json["reference"],
        scope: json["scope"],
        types: List<String>.from(json["types"].map((x) => x)),
        userRatingsTotal: json["user_ratings_total"],
        vicinity: json["vicinity"],
    );

    Map<String, dynamic> toJson() => {
        "business_status": businessStatus,
        "geometry": geometry!.toJson(),
        "icon": icon,
        "icon_background_color": iconBackgroundColor,
        "icon_mask_base_uri": iconMaskBaseUri,
        "name": name,
        "place_id": placeId,
        "rating": rating,
        "reference": reference,
        "scope": scope,
        "types": List<dynamic>.from(types!.map((x) => x)),
        "user_ratings_total": userRatingsTotal,
        "vicinity": vicinity,
    };
}

class Geometry {
    Geometry({
        this.location,
        this.viewport,
    });

    Location? location;
    Viewport? viewport;

    factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
        location: Location.fromJson(json["location"]),
        viewport: Viewport.fromJson(json["viewport"]),
    );

    Map<String, dynamic> toJson() => {
        "location": location!.toJson(),
        "viewport": viewport!.toJson(),
    };
}

class Location {
    Location(
        this.lat,
        this.lng,
    );

    double lat;
    double lng;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        json["lat"].toDouble(),
        json["lng"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Viewport {
    Viewport({
        this.northeast,
        this.southwest,
    });

    Location? northeast;
    Location? southwest;

    factory Viewport.fromJson(Map<String, dynamic> json) => Viewport(
        northeast: Location.fromJson(json["northeast"]),
        southwest: Location.fromJson(json["southwest"]),
    );

    Map<String, dynamic> toJson() => {
        "northeast": northeast!.toJson(),
        "southwest": southwest!.toJson(),
    };
}
