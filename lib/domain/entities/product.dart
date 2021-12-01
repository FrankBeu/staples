import 'package:equatable/equatable.dart';

//// comments are identifier used by ecoinform.de
//// default: css-classes of the container-element or nearest element
//// dkey:    content of the related .dkey
//// tv:      content of the preceding .tv_name
class Product extends Equatable {
  final int ean; // EuropeanArticleNumber tv: 'GTIN Stück'
  final String producerIconPath; // mrk_bild
  final String producerIconAlt; // mrk_bild
  final String imagePath; // p_bild
  final String imageAlt;
  final String name; // p_name_name
  final String slogan; // SLOGAN
  final String qualityIconPath; // qualitaet
  final String qualityIconAlt; //
  final String description; // dkey: Allgemeines
  final String nameDescription; // dkey: 'Bezeichnung des Lebensmittels'
  final String coo; // CountryOfOrigin dkey: Herkunft
  // TODO final []<Ingredient> ingredients; // dkey: Zutaten
  final String ingredients; // dkey: Zutaten
  final String ingredientsLegende; // dkey: Zutaten
  // TODO final []<NutritionalValue> nutritionalValues; // dkey: 'Nährwerte bezogen auf 100 g'
  final String legalStatus; // tv: 'Rechtlicher Status'
  final String peculiarity; // tv: 'Besonderheiten'
  final String storageHint; // tv: 'Lager- und Aufbewahrungshinweis'
  final String periodOfUsage; // tv: Verwendungsdauer
  final bool cooVariable; // tv: 'Wechselnde Ursprungsländer'
  final String cooMain; // tv: Ursprungsland/ -region Hauptzutaten:
  final bool organic; // tv: Bio-Erzeugnis
  final String organicCertification; // tv: 'Staatliches Siegel'
  final String organicCertificationAddition; // tv: 'Länderzusatz des EU-Logos'
  final String organicBody; // tv: Öko-Kontrollstelle:
  final String standard; // tv: 'Welcher Standard wird erfüllt'
  final String distributor; // tv: Inverkehrbringer
  final String additives; // tv: 'Zusatzstoffe, Rechtlicher Hinweis'
  final String vegan; // tv: vegan
  final String vegetarian; // tv: vegetarian
  final String unsweetened; // tv: ungesüßt
  final String raw; // tv: Rohkostqualität
  final String vegan; // tv: vegan
  final String productKey; // tv: 'Art. Nr'
  // TODO final AllergyInformation allergy; // tv: Allergiehinweise
  // TODO AllergyInformation:String contains css:enthalten; String excluded css:nichtenthalten; String traces css:'Spurenmöglich' sic!;
  final String allergy; // tv: Allergiehinweise
  final String productKey; // tv: 'Art. Nr'

  double rating;
  // TODO final Category category

  const Product({
    required this.ean,
    this.producerIconPath,
    this.producerIconAlt,
    this.imagePath,
    this.imageAlt,
    this.name,
    this.slogan,
    this.qualityIconPath,
    this.qualityIconAlt,
    this.description,
    this.nameDescription,
    this.coo,
    this.ingredients,
    this.ingredientsLegende,
    this.legalStatus,
    this.peculiarity,
    this.storageHint,
    this.periodOfUsage,
    this.cooVariable,
    this.cooMain,
    this.organic,
    this.organicCertification,
    this.organicCertificationAddition,
    this.organicBody,
    this.standard,
    this.distributor,
    this.additives,
    this.vegan,
    this.vegetarian,
    this.unsweetened,
    this.raw,
    this.vegan,
    this.productKey,
    this.allergy,
    this.productKey,
    this.rating,
  });

  @override
  List<Object> get props {
    return [
      ean,
      producerIconPath,
      producerIconAlt,
      imagePath,
      imageAlt,
      name,
      slogan,
      qualityIconPath,
      qualityIconAlt,
      description,
      nameDescription,
      coo,
      ingredients,
      ingredientsLegende,
      legalStatus,
      peculiarity,
      storageHint,
      periodOfUsage,
      cooVariable,
      cooMain,
      organic,
      organicCertification,
      organicCertificationAddition,
      organicBody,
      standard,
      distributor,
      additives,
      vegan,
      vegetarian,
      unsweetened,
      raw,
      vegan,
      productKey,
      allergy,
      productKey,
      rating,
    ];
  }

  @override
  bool get stringify => true;
}
