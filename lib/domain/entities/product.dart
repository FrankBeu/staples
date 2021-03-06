import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:staples/config/constants.dart';

//// comments are identifier used by ecoinform.de
//// default: css-classes of the container-element or nearest element
//// dkey:    content of the related .dkey
//// tv:      content of the preceding .tv_name
@Entity(tableName: productTableName)
class Product extends Equatable {
  @PrimaryKey()
  final int gtin; // EuropeanArticleNumber tv: 'GTIN Stück'
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
  // TODO final List<Ingredient> ingredients; // dkey: Zutaten
  final String ingredients; // dkey: Zutaten
  final String ingredientsLegende; // dkey: Zutaten
  // TODO final List<NutritionalValue> nutritionalValues; // dkey: 'Nährwerte bezogen auf 100 g'
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
  final bool vegan; // tv: vegan
  final bool vegetarian; // tv: vegetarian
  final bool unsweetened; // tv: ungesüßt
  final bool raw; // tv: Rohkostqualität
  final String productKey; // tv: 'Art. Nr'
  // TODO final AllergyInformation allergy; // tv: Allergiehinweise
  // TODO AllergyInformation: String contains css:enthalten; String excluded css:nichtenthalten; String traces css:'Spurenmöglich' sic!;
  final String allergy; // tv: Allergiehinweise

  // TODO equatable has to be imutable; XOR remove equatable or move rating to item
  final double rating;
  // TODO final Category category

  const Product({
    required this.gtin,
    this.producerIconPath = '',
    this.producerIconAlt = '',
    this.imagePath = '',
    this.imageAlt = '',
    this.name = '',
    this.slogan = '',
    this.qualityIconPath = '',
    this.qualityIconAlt = '',
    this.description = '',
    this.nameDescription = '',
    this.coo = '',
    this.ingredients = '',
    this.ingredientsLegende = '',
    this.legalStatus = '',
    this.peculiarity = '',
    this.storageHint = '',
    this.periodOfUsage = '',
    this.cooVariable = false,
    this.cooMain = '',
    this.organic = false,
    this.organicCertification = '',
    this.organicCertificationAddition = '',
    this.organicBody = '',
    this.standard = '',
    this.distributor = '',
    this.additives = '',
    this.vegan = false,
    this.vegetarian = false,
    this.unsweetened = false,
    this.raw = false,
    this.productKey = '',
    this.allergy = '',
    this.rating = 0,
  });

  @override
  List<Object> get props {
    return [
      gtin,
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
