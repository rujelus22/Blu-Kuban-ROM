.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final ESCAPE_CHAR:C = '\u0001'

.field private static clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static breakUpSegments(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 9

    const/4 v4, 0x1

    add-int v0, p1, p2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, p1

    :goto_d
    if-ltz v2, :cond_2f

    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_25

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_25
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_d

    :cond_2f
    if-ge v3, v0, :cond_3d

    if-nez v3, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_47

    move-object v0, p0

    :goto_3a
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3d
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_47
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public static breakUpString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)[Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    if-nez p4, :cond_6

    new-array v0, v5, [Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->breakUpString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static breakUpString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;Z)[Ljava/lang/String;
    .registers 15

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :goto_f
    return-object p0

    :cond_10
    if-lez p3, :cond_24

    :goto_12
    invoke-static {p0, p1, p4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->parseInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)[I

    move-result-object p0

    if-nez p5, :cond_28

    const/4 p4, 0x0

    aget p4, p0, p4

    if-gt p4, p2, :cond_28

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    goto :goto_f

    :cond_24
    const p3, 0x7fffffff

    goto :goto_12

    :cond_28
    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->findBreakFromBegin(Ljava/lang/String;)I

    move-result v1

    if-nez p5, :cond_3f

    if-ltz v1, :cond_e1

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, p3, :cond_e1

    :cond_3f
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_44
    array-length v4, p0

    if-ge v2, v4, :cond_e1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v4

    move v4, v2

    move v2, v8

    :goto_4c
    array-length v6, p0

    if-ge v4, v6, :cond_13c

    aget v6, p0, v4

    add-int/2addr v6, v2

    if-le v6, p2, :cond_66

    if-eqz p5, :cond_61

    const/4 v6, 0x1

    sub-int v6, v4, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_66

    :cond_61
    const/4 v6, 0x1

    sub-int v6, v4, v6

    if-ne v6, v3, :cond_13c

    :cond_66
    if-eqz p5, :cond_93

    const/4 v6, 0x1

    sub-int v6, v4, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_93

    const/4 v2, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_76
    const/4 v5, 0x1

    sub-int v5, v4, v5

    if-eqz v2, :cond_9a

    if-le v5, v3, :cond_9a

    const/4 v6, 0x1

    sub-int v6, v5, v6

    :goto_80
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_84
    if-ge v5, v0, :cond_9c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->isBreak(C)Z

    move-result v7

    if-eqz v7, :cond_9c

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_93
    add-int/lit8 v6, v4, 0x1

    aget v4, p0, v4

    add-int/2addr v2, v4

    move v4, v6

    goto :goto_4c

    :cond_9a
    move v6, v5

    goto :goto_80

    :cond_9c
    if-nez v2, :cond_138

    const/4 v2, 0x1

    sub-int v2, v4, v2

    if-ne v5, v2, :cond_138

    array-length v2, p0

    if-ge v4, v2, :cond_138

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v6, v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->findBreakFromEnd(Ljava/lang/String;C)I

    move-result v2

    if-ltz v2, :cond_138

    add-int/2addr v2, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    :goto_b8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_da

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->isBreak(C)Z

    move-result v4

    if-eqz v4, :cond_da

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b8

    :cond_da
    invoke-virtual {p4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_44

    :cond_e1
    if-nez p5, :cond_12d

    if-ltz v1, :cond_eb

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p5

    if-le p5, p3, :cond_12d

    :cond_eb
    const/4 p3, 0x0

    const/4 p5, 0x1

    invoke-virtual {p4}, Ljava/util/Vector;->removeAllElements()V

    move v8, p5

    move p5, p3

    move p3, v8

    :goto_f3
    array-length v1, p0

    if-ge p3, v1, :cond_12d

    const/4 v1, 0x0

    move v8, v1

    move v1, p3

    move p3, v8

    :goto_fa
    array-length v2, p0

    if-ge v1, v2, :cond_10e

    aget v2, p0, v1

    add-int/2addr v2, p3

    if-le v2, p2, :cond_107

    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne v2, p5, :cond_10e

    :cond_107
    add-int/lit8 v2, v1, 0x1

    aget v1, p0, v1

    add-int/2addr p3, v1

    move v1, v2

    goto :goto_fa

    :cond_10e
    const/4 p3, 0x1

    sub-int p3, v1, p3

    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    :goto_115
    if-ge p3, v0, :cond_124

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->isBreak(C)Z

    move-result v1

    if-eqz v1, :cond_124

    add-int/lit8 p3, p3, 0x1

    goto :goto_115

    :cond_124
    invoke-virtual {p4, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p5, p3, 0x1

    move v8, p5

    move p5, p3

    move p3, v8

    goto :goto_f3

    :cond_12d
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_138
    move-object v2, v6

    move v3, v5

    goto/16 :goto_b8

    :cond_13c
    move v2, v5

    goto/16 :goto_76
.end method

.method public static drawFittedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;IILjava/lang/String;I)V
    .registers 11

    const-string v5, "..."

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawFittedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static drawFittedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;IILjava/lang/String;ILjava/lang/String;)V
    .registers 13

    const/4 v2, 0x0

    if-gtz p4, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v1

    if-gt v1, p4, :cond_12

    invoke-interface {p0, p3, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawString(Ljava/lang/String;II)V

    goto :goto_3

    :cond_12
    invoke-static {p3, v0, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->getFittedStringLength(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;ILjava/lang/String;)I

    move-result v3

    invoke-interface {v0, p3, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawSubstring(Ljava/lang/String;IIII)V

    add-int v0, p1, v6

    invoke-interface {p0, p5, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawString(Ljava/lang/String;II)V

    goto :goto_3
.end method

.method public static drawInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    .registers 16

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V

    return-void
.end method

.method public static drawInterpolatedSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    .registers 14

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->isRTL()Z

    move-result v2

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)V

    :cond_e
    invoke-static {p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->breakUpSegments(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_29

    array-length p3, p2

    const/4 p4, 0x0

    :goto_16
    div-int/lit8 v2, p3, 0x2

    if-ge p4, v2, :cond_29

    sub-int v2, p3, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v3, p2, p4

    aget-object v4, p2, v2

    aput-object v4, p2, p4

    aput-object v3, p2, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_16

    :cond_29
    const/4 p3, 0x0

    move p4, v1

    :goto_2b
    array-length v1, p2

    if-ge p3, v1, :cond_75

    aget-object v1, p2, p3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4a

    if-eqz p0, :cond_40

    aget-object v1, p2, p3

    add-int v2, p5, v0

    invoke-interface {p0, v1, v2, p6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawString(Ljava/lang/String;II)V

    :cond_40
    aget-object v1, p2, p3

    invoke-interface {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_47
    :goto_47
    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    :cond_4a
    aget-object v1, p2, p3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {p8, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->hasIcon(C)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p8, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconHeight(C)I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result p4

    if-eqz p0, :cond_6f

    add-int v2, p5, v0

    invoke-interface {p8, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconHeight(C)I

    move-result v3

    sub-int v3, p4, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p6

    invoke-interface {p8, v1, p0, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->drawIcon(CLcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;II)Z

    :cond_6f
    invoke-interface {p8, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_47

    :cond_75
    if-eqz p7, :cond_7d

    const/4 p0, 0x0

    aput v0, p7, p0

    const/4 p0, 0x1

    aput p4, p7, p0

    :cond_7d
    return-void
.end method

.method public static drawInterpolatedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)[I
    .registers 13

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static drawInterpolatedText(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;[I)[I
    .registers 17

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v2

    move v8, v1

    move v9, v0

    :goto_6
    array-length v0, p2

    if-ge v7, v0, :cond_4f

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_31

    if-lez v7, :cond_31

    aget-object v0, p2, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    aget-object v0, p2, v7

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    :cond_31
    aget-object v2, p2, v7

    add-int v4, p4, v8

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object/from16 v5, p6

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V

    const/4 v0, 0x0

    aget v0, p6, v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget v1, p6, v1

    add-int/2addr v1, v8

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v1

    move v9, v0

    goto :goto_6

    :cond_4f
    const/4 p0, 0x0

    aput v9, p6, p0

    const/4 p0, 0x1

    aput v8, p6, p0

    return-object p6
.end method

.method private static findBreakFromBegin(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x1

    move v0, v3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/i18n/LineBreakingProperties;->canBreak(CC)Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private static findBreakFromEnd(Ljava/lang/String;C)I
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/i18n/LineBreakingProperties;->canBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1a
    if-lt v0, v3, :cond_2f

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/i18n/LineBreakingProperties;->canBreak(CC)Z

    move-result v1

    if-nez v1, :cond_14

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2f
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private static getFittedStringLength(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;ILjava/lang/String;)I
    .registers 6

    invoke-interface {p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->getFittedTextLength(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;I)I

    move-result v0

    :goto_a
    if-lez v0, :cond_1c

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1c
    return v0
.end method

.method public static getFittedText(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-interface {p1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->getFittedStringLength(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;ILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getFittedTextLength(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;I)I
    .registers 7

    const/4 v3, 0x0

    if-gtz p2, :cond_5

    move v0, v3

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v1

    if-le v1, p2, :cond_4

    mul-int/lit8 v2, p2, 0x2

    if-le v1, v2, :cond_28

    move v1, v3

    :goto_14
    if-ge v1, v0, :cond_31

    invoke-interface {p1, p0, v3, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v2

    if-ge v2, p2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    if-ne v2, p2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    :cond_26
    add-int/lit8 v0, v0, -0x1

    :cond_28
    if-lez v0, :cond_4

    invoke-interface {p1, p0, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v1

    if-gt v1, p2, :cond_26

    goto :goto_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public static getFontSizes([I[I)[I
    .registers 9

    const/4 v6, 0x0

    array-length v0, p0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sizes supported by device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v0, v0, [I

    aget v1, p0, v6

    move v2, v1

    move v1, v6

    :goto_13
    array-length v3, p0

    if-ge v1, v3, :cond_36

    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v6

    :goto_1d
    array-length v4, p1

    if-ge v3, v4, :cond_33

    aget v4, p0, v1

    aget v5, p1, v3

    if-gt v4, v5, :cond_30

    aget v4, p0, v1

    aget v5, v0, v3

    if-le v4, v5, :cond_30

    aget v4, p0, v1

    aput v4, v0, v3

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_36
    move v1, v6

    :goto_37
    array-length v3, v0

    if-ge v1, v3, :cond_43

    aget v3, v0, v1

    if-nez v3, :cond_40

    aput v2, v0, v1

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_43
    return-object v0
.end method

.method public static inClip(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;IIII)Z
    .registers 8

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipY()I

    move-result v0

    add-int v1, p2, p4

    if-ge v0, v1, :cond_23

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_23

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipX()I

    move-result v0

    add-int v1, p1, p3

    if-ge v0, v1, :cond_21

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    move v0, v2

    goto :goto_20

    :cond_23
    move v0, v2

    goto :goto_20
.end method

.method public static interpolatedStringDimensions(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)Lcom/google/android/apps/uploader/googlemobile/common/geom/Rectangle;
    .registers 10

    const/4 v6, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->getHeight()I

    move-result v0

    if-nez p2, :cond_11

    invoke-interface {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v1

    :goto_b
    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/common/geom/Rectangle;

    invoke-direct {v2, v6, v6, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/geom/Rectangle;-><init>(IIII)V

    return-object v2

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v3, v6

    move v0, v6

    :goto_18
    if-ge v0, v1, :cond_41

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    invoke-interface {p0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->charWidth(C)I

    move-result v4

    add-int/2addr v3, v4

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_26

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v5

    add-int/2addr v3, v5

    invoke-interface {p2, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_26

    :cond_41
    move v0, v2

    move v1, v3

    goto :goto_b
.end method

.method private static isBreak(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static parseInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)[I
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    move v2, v7

    move v3, v6

    :goto_c
    if-gt v2, v0, :cond_48

    sub-int v4, v2, v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_20

    invoke-interface {p0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->charWidth(C)I

    move-result v4

    aput v4, v1, v2

    add-int/2addr v3, v4

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    if-lt v2, v0, :cond_25

    aput v6, v1, v2

    goto :goto_1d

    :cond_25
    if-eqz p2, :cond_39

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v4

    aput v4, v1, v2

    :goto_31
    aget v4, v1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aput v6, v1, v2

    goto :goto_1d

    :cond_39
    sub-int v4, v2, v7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    goto :goto_31

    :cond_48
    aput v3, v1, v6

    return-object v1
.end method

.method public static popClip(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)V
    .registers 10

    const-wide v7, 0xffffffffL

    const/16 v5, 0x20

    const/4 v6, 0x1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->lastElement()J

    move-result-wide v0

    and-long/2addr v0, v7

    long-to-int v0, v0

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->lastElement()J

    move-result-wide v1

    ushr-long/2addr v1, v5

    long-to-int v1, v1

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    sget-object v3, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->removeElementAt(I)V

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->lastElement()J

    move-result-wide v2

    and-long/2addr v2, v7

    long-to-int v2, v2

    sget-object v3, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->lastElement()J

    move-result-wide v3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    sget-object v4, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    sget-object v5, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->removeElementAt(I)V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setClip(IIII)V

    return-void
.end method

.method public static pushClip(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)V
    .registers 9

    const-wide v6, 0xffffffffL

    const/16 v5, 0x20

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipHeight()I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v5

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipWidth()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->addElement(J)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->clipStack:Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipY()I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v5

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getClipX()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->addElement(J)V

    return-void
.end method
