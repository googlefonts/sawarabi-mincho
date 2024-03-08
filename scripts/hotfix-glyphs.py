from glyphsLib.classes import GSFont, GSFontInfoValue, GSClass, GSFeature
import sys

infile, output = sys.argv[1:]
font = GSFont(infile)
font.versionMajor = 1
font.properties = [
    GSFontInfoValue(
        "copyrights",
        "Copyright 2024 The Sawarabi Mincho Project Authors (https://github.com/googlefonts/sawarabi-mincho)",
    ),
    GSFontInfoValue(
        "licenses",
        "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: openfontlicense.org",
    ),
]
font.glyphs["uni00A0"].layers[0].width = font.glyphs["space"].layers[0].width
# Keep GF vertical metrics
font.masters[0].customParameters["weightClass"] = 400
font.masters[0].customParameters["typoDescender"] = -165
font.masters[0].customParameters["typoLineGap"] = 90
font.masters[0].customParameters["winAscent"] = 1071
font.masters[0].customParameters["winDescent"] = 320
font.masters[0].customParameters["hheaAscender"] = 1070
font.masters[0].customParameters["hheaDescender"] = -319
font.masters[0].customParameters["hheaLineGap"] = 90

# Until babelfont gets better, we need to add the vert feature by hand
vert_glyphs = [g.name for g in font.glyphs if g.name.endswith(".vert")]
to_vert = [g.replace(".vert", "") for g in vert_glyphs]
font.classes.append(GSClass("vert", " ".join(vert_glyphs)))
font.classes.append(GSClass("to_vert", " ".join(to_vert)))
font.features.append(GSFeature('vert', "sub @to_vert by @vert;"))

font.save(output)
