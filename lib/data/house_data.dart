import '../model/house_model.dart';
// json data imported from the API
final allHouses = <House>[
  House(
      id: 2,
      image: "https://img.freepik.com/free-photo/house-isolated-field_1303-23773.jpg?w=996&t=st=1699535487~exp=1699536087~hmac=1df1182bc43879291bff8a2975a1abc8fdf10b847f6e796753afb46fa7667cd6",
      price: 287000,
      bedrooms: 6,
      bathrooms: 4,
      size: 205,
      description: "Elegant three-story canal house with classic Dutch architecture, featuring high ceilings, large windows, and a private garden overlooking the picturesque canal.",
      zip: "1035 HZ",
      city: "Amsterdam",
      latitude: 52,
      longitude: 4,
      createdDate: "2023-04-17"
  ),
  House(
      id: 3,
      image: "https://img.freepik.com/free-photo/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-estate-home-house-property-ge_1258-150749.jpg?w=996&t=st=1699535420~exp=1699536020~hmac=26e9397393896d29c4fdc71909b158af3a78b0b76e36109507cce73da868d917",
      price: 933000,
      bedrooms: 4,
      bathrooms: 2,
      size: 145,
      description: "Modern two-bedroom apartment in the heart of Utrecht's historic city center, offering panoramic views of the Dom Tower and convenient access to shops and cafes.",
      zip: "3514 BV",
      city: "Utrecht",
      latitude: 52,
      longitude: 5,
      createdDate: "2022-06-27"
  ),
  House(
      id: 4,
      image: "https://img.freepik.com/premium-photo/osnabruck-lower-saxony-germany-street-suburb-osnabruck-third-largest-city-state_496593-1110.jpg?w=996",
      price: 795000,
      bedrooms: 3,
      bathrooms: 1,
      size: 153,
      description: "Stylish loft in the trendy Jordaan district, boasting exposed brick walls, contemporary furnishings, and a rooftop terrace with stunning views of the city skyline.",
      zip: "1092 CK",
      city: "Amsterdam",
      latitude: 52,
      longitude: 5,
      createdDate: "2021-02-16"
  ),
  House(
      id: 5,
      image: "https://img.freepik.com/free-photo/design-house-modern-villa-with-open-plan-living-private-bedroom-wing-large-terrace-with-privacy_1258-169741.jpg?t=st=1699528425~exp=1699532025~hmac=bd4928291cb6b8842de57118c097beaee3d8ff1b63928a97705fcb5d3d94b908&w=996",
      price: 1500000,
      bedrooms: 5,
      bathrooms: 2,
      size: 160,
      description: "Spacious riverside villa with a private dock, perfect for boat enthusiasts. This luxurious property includes a landscaped garden, multiple living areas, and a state-of-the-art kitchen.",
      zip: "3582 EV",
      city: "Utrecht",
      latitude: 51,
      longitude: 4,
      createdDate: "2020-05-07"
  ),
  House(
      id: 6,
      image: "https://img.freepik.com/free-psd/modern-farmhouse-meadow-hill-generative-ai_587448-2243.jpg?w=1380&t=st=1699535855~exp=1699536455~hmac=f6a44f0b1e2f86b785f542f401f87612e7c29a03b12bbbac52abdc9817dd70a8",
      price: 725000,
      bedrooms: 6,
      bathrooms: 3,
      size: 157,
      description: "Unique houseboat on one of Amsterdam's iconic canals, featuring a cozy interior with panoramic windows, a sun deck, and the charm of waterfront living in the heart of the city.",
      zip: "1067 TV",
      city: "Amsterdam",
      latitude: 52,
      longitude: 5,
      createdDate: "2020-05-14"
  ),
  House(
      id: 7,
      image: "https://img.freepik.com/premium-photo/cozy-modern-house-with-garage-cobblestone-driveway-modern-architecture_116317-5584.jpg?w=996",
      price: 645000,
      bedrooms: 3,
      bathrooms: 1,
      size: 95,
      description: "Penthouse apartment on the top floor of a modern building, offering floor-to-ceiling windows, a large terrace, and breathtaking views of the Utrecht skyline.",
      zip: "3572 AE",
      city: "Utrecht",
      latitude: 52,
      longitude: 5,
      createdDate: "2020-05-07"
  ),
  House(
      id: 8,
      image: "https://img.freepik.com/premium-photo/european-suburban-house_266732-5574.jpg?w=826",
      price: 1175000,
      bedrooms: 4,
      bathrooms: 3,
      size: 185,
      description: "Quaint townhouse in Amsterdam's historic center, combining classic Dutch architecture with modern amenities. A secluded courtyard adds a touch of tranquility to city living.",
      zip: "1081 JP",
      city: "Amsterdam",
      latitude: 52,
      longitude: 5,
      createdDate: "2020-05-07"
  ),
  House(
      id: 9,
      image: "https://img.freepik.com/premium-photo/exterior-image-new-modern-house-with-large-windows-with-garden-rural-area-beautiful-sky-generative-ai_438099-14197.jpg?w=1060",
      price: 1300000,
      bedrooms: 3,
      bathrooms: 1,
      size: 116,
      description: "Family-friendly home in a quiet Utrecht neighborhood, featuring a spacious backyard, play area, and proximity to excellent schools and parks.",
      zip: "3572 TS",
      city: "Utrecht",
      latitude: 52,
      longitude: 5,
      createdDate: "2020-05-07"
  ),
  House(
      id: 10,
      image: "https://img.freepik.com/free-photo/luxury-house-real-estate-sale-property-generative-ai_169016-29360.jpg?w=1060&t=st=1699536693~exp=1699537293~hmac=33b06a715dc6a3b0833942573d5e0e360a8274bdd7dccd7fc3cd362860e563f1",
      price: 475000,
      bedrooms: 4,
      bathrooms: 1,
      size: 89,
      description: "Contemporary duplex apartment with sleek design and open-plan living. This property is situated in a vibrant neighborhood, close to cultural attractions and dining hotspots.",
      zip: "1012 TS",
      city: "Amsterdam",
      latitude: 53,
      longitude: 5,
      createdDate: "2020-05-07"
  ),
  House(
      id: 11,
      image: "https://img.freepik.com/premium-photo/3d-visualization-modern-house-bright-colors-house-facade-design-modern-architecture_727625-165.jpg?w=360",
      price: 500000,
      bedrooms: 3,
      bathrooms: 1,
      size: 97,
      description: "Sustainable and energy-efficient residence in Utrecht, equipped with solar panels, green roofing, and smart home technology. A perfect blend of modern living and environmental consciousness.",
      zip: "3531 TS",
      city: "Utrecht",
      latitude: 52,
      longitude: 5,
      createdDate: "2020-05-07"
  )
];