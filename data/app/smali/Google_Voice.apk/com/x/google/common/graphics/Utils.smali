.class public Lcom/x/google/common/graphics/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final ELLIPSIS:Ljava/lang/String; = "..."

.field public static final ESCAPE_CHAR:C = '\u0001'

.field private static final FIRST_WIDTH_IDX:I = 0x2

.field public static final FONT_BASE:C = '\uff00'

.field public static final NO_FONTS:Lcom/x/google/common/graphics/FontProvider; = null

.field public static final NO_ICONS:Lcom/x/google/common/graphics/IconProvider; = null

.field private static final SPACES:Ljava/lang/String; = " \u2003"

.field private static clipStack:Lcom/x/google/common/LongVector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/x/google/common/graphics/Utils;->NO_ICONS:Lcom/x/google/common/graphics/IconProvider;

    sput-object v0, Lcom/x/google/common/graphics/Utils;->NO_FONTS:Lcom/x/google/common/graphics/FontProvider;

    new-instance v0, Lcom/x/google/common/LongVector;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/x/google/common/LongVector;-><init>(I)V

    sput-object v0, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static breakUpSegments(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    add-int v1, p1, p2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_c
    if-ltz v0, :cond_2b

    if-ge v0, v1, :cond_2b

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_24

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_c

    :cond_2b
    if-ge p1, v1, :cond_38

    if-nez p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_42

    :goto_35
    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_38
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_42
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_35
.end method

.method public static breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;)[Ljava/lang/String;
    .registers 12

    const/4 v6, 0x0

    if-nez p4, :cond_6

    new-array v0, v6, [Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/x/google/common/graphics/Utils;->breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;Z)[Ljava/lang/String;
    .registers 20

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    :cond_c
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    :goto_f
    return-object v2

    :cond_10
    if-lez p3, :cond_28

    :goto_12
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lcom/x/google/common/graphics/Utils;->parseInterpolatedString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)[I

    move-result-object v7

    if-nez p6, :cond_2c

    const/4 v2, 0x0

    aget v2, v7, v2

    if-gt v2, p2, :cond_2c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_f

    :cond_28
    const p3, 0x7fffffff

    goto :goto_12

    :cond_2c
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p1}, Lcom/x/google/common/graphics/Utils;->findBreakFromBegin(Ljava/lang/String;)I

    move-result v10

    if-nez p6, :cond_45

    if-ltz v10, :cond_df

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, p3

    if-gt v2, v0, :cond_df

    :cond_45
    const/4 v3, 0x0

    const/4 v2, 0x2

    :goto_47
    array-length v4, v7

    if-ge v2, v4, :cond_df

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    :goto_4f
    array-length v5, v7

    if-ge v4, v5, :cond_133

    aget v5, v7, v4

    add-int/2addr v5, v2

    if-le v5, p2, :cond_67

    if-eqz p6, :cond_63

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xa

    if-eq v5, v11, :cond_67

    :cond_63
    add-int/lit8 v5, v4, -0x2

    if-ne v5, v3, :cond_133

    :cond_67
    if-eqz p6, :cond_93

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xa

    if-ne v5, v11, :cond_93

    const/4 v2, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v6, v4

    :goto_78
    add-int/lit8 v4, v6, -0x2

    if-eqz v5, :cond_9a

    if-le v4, v3, :cond_9a

    add-int/lit8 v2, v4, -0x1

    :goto_80
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_84
    if-ge v4, v9, :cond_9c

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/x/google/common/graphics/Utils;->isBreak(C)Z

    move-result v11

    if-eqz v11, :cond_9c

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_93
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_4f

    :cond_9a
    move v2, v4

    goto :goto_80

    :cond_9c
    if-nez v5, :cond_131

    add-int/lit8 v5, v6, -0x2

    if-ne v4, v5, :cond_131

    array-length v5, v7

    if-ge v6, v5, :cond_131

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, Lcom/x/google/common/graphics/Utils;->findBreakFromEnd(Ljava/lang/String;C)I

    move-result v5

    if-ltz v5, :cond_131

    add-int v4, v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v4

    :goto_b6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/x/google/common/graphics/Utils;->isBreak(C)Z

    move-result v4

    if-eqz v4, :cond_d8

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b6

    :cond_d8
    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x2

    goto/16 :goto_47

    :cond_df
    if-nez p6, :cond_126

    if-ltz v10, :cond_eb

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_126

    :cond_eb
    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    :goto_f0
    array-length v4, v7

    if-ge v2, v4, :cond_126

    const/4 v4, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    :goto_f7
    array-length v5, v7

    if-ge v4, v5, :cond_10a

    aget v5, v7, v4

    add-int/2addr v5, v2

    if-le v5, p2, :cond_103

    add-int/lit8 v5, v4, -0x2

    if-ne v5, v3, :cond_10a

    :cond_103
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_f7

    :cond_10a
    add-int/lit8 v2, v4, -0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v3, v2

    :goto_111
    if-ge v3, v9, :cond_120

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/x/google/common/graphics/Utils;->isBreak(C)Z

    move-result v2

    if-eqz v2, :cond_120

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    :cond_120
    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x2

    goto :goto_f0

    :cond_126
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_131
    move v3, v4

    goto :goto_b6

    :cond_133
    move v5, v6

    move v6, v4

    goto/16 :goto_78
.end method

.method public static drawFittedText(Lcom/x/google/common/graphics/GoogleGraphics;IILjava/lang/String;I)V
    .registers 11

    const-string v5, "..."

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/common/graphics/Utils;->drawFittedText(Lcom/x/google/common/graphics/GoogleGraphics;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static drawFittedText(Lcom/x/google/common/graphics/GoogleGraphics;IILjava/lang/String;ILjava/lang/String;)V
    .registers 13

    const/4 v2, 0x0

    if-gtz p4, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getFont()Lcom/x/google/common/graphics/GoogleFont;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v1

    if-gt v1, p4, :cond_12

    invoke-interface {p0, p3, p1, p2}, Lcom/x/google/common/graphics/GoogleGraphics;->drawString(Ljava/lang/String;II)V

    goto :goto_3

    :cond_12
    invoke-static {p3, v0, p4, p5}, Lcom/x/google/common/graphics/Utils;->getFittedStringLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;ILjava/lang/String;)I

    move-result v3

    invoke-interface {v0, p3, v2, v3}, Lcom/x/google/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/x/google/common/graphics/GoogleGraphics;->drawSubstring(Ljava/lang/String;IIII)V

    add-int v0, p1, v6

    invoke-interface {p0, p5, v0, p2}, Lcom/x/google/common/graphics/GoogleGraphics;->drawString(Ljava/lang/String;II)V

    goto :goto_3
.end method

.method public static drawInterpolatedString(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)V
    .registers 18

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/x/google/common/graphics/Utils;->drawInterpolatedSubstring(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)V

    return-void
.end method

.method public static drawInterpolatedSubstring(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)V
    .registers 19

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/x/google/common/Config;->isRTL()Z

    move-result v1

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lcom/x/google/common/graphics/GoogleGraphics;->setFont(Lcom/x/google/common/graphics/GoogleFont;)V

    :cond_e
    invoke-static {p2, p3, p4}, Lcom/x/google/common/graphics/Utils;->breakUpSegments(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_29

    array-length v4, v5

    const/4 v1, 0x0

    :goto_16
    div-int/lit8 v6, v4, 0x2

    if-ge v1, v6, :cond_29

    sub-int v6, v4, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v7, v5, v1

    aget-object v8, v5, v6

    aput-object v8, v5, v1

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, v5

    if-ge v1, v4, :cond_be

    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_49

    if-eqz p0, :cond_3f

    aget-object v4, v5, v1

    add-int v6, p5, v3

    invoke-interface {p1, p0, v4, v6, p6}, Lcom/x/google/common/graphics/GoogleFont;->drawString(Lcom/x/google/common/graphics/GoogleGraphics;Ljava/lang/String;II)V

    :cond_3f
    aget-object v4, v5, v1

    invoke-interface {p1, v4}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_49
    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v4, 0xff00

    if-lt v6, v4, :cond_79

    const v4, 0xff00

    sub-int v4, v6, v4

    int-to-char v4, v4

    if-eqz p9, :cond_46

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Lcom/x/google/common/graphics/FontProvider;->hasFont(C)Z

    move-result v6

    if-eqz v6, :cond_46

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Lcom/x/google/common/graphics/FontProvider;->getFont(C)Lcom/x/google/common/graphics/GoogleFont;

    move-result-object p1

    invoke-interface {p1}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p0, :cond_46

    invoke-interface {p0, p1}, Lcom/x/google/common/graphics/GoogleGraphics;->setFont(Lcom/x/google/common/graphics/GoogleFont;)V

    goto :goto_46

    :cond_79
    if-eqz p8, :cond_46

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lcom/x/google/common/graphics/IconProvider;->hasIcon(C)Z

    move-result v4

    if-eqz v4, :cond_46

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lcom/x/google/common/graphics/IconProvider;->getIconHeight(C)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p0, :cond_a4

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lcom/x/google/common/graphics/IconProvider;->getIconAlignment(C)I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    move v2, p6

    :goto_99
    add-int v7, p5, v3

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p8

    invoke-interface {v0, v6, p0, v7, v2}, Lcom/x/google/common/graphics/IconProvider;->drawIcon(CLcom/x/google/common/graphics/GoogleGraphics;II)Z

    :cond_a4
    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lcom/x/google/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v2

    add-int/2addr v3, v2

    move v2, v4

    goto :goto_46

    :pswitch_ad
    sub-int v2, v4, v7

    add-int/2addr v2, p6

    goto :goto_99

    :pswitch_b1
    sub-int v2, v4, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p6

    goto :goto_99

    :pswitch_b7
    invoke-interface {p1}, Lcom/x/google/common/graphics/GoogleFont;->getBaselinePosition()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/2addr v2, p6

    goto :goto_99

    :cond_be
    if-eqz p7, :cond_c6

    const/4 v1, 0x0

    aput v3, p7, v1

    const/4 v1, 0x1

    aput v2, p7, v1

    :cond_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_b1
        :pswitch_b7
    .end packed-switch
.end method

.method public static drawInterpolatedText(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)[I
    .registers 15

    const/4 v0, 0x2

    new-array v7, v0, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/x/google/common/graphics/Utils;->drawInterpolatedText(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static drawInterpolatedText(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;[Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;[I)[I
    .registers 19

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    move v10, v2

    :goto_6
    array-length v0, p2

    if-ge v8, v0, :cond_53

    invoke-static {}, Lcom/x/google/common/Config;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_31

    if-lez v8, :cond_31

    aget-object v0, p2, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    aget-object v0, p2, v8

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/x/google/common/util/text/TextUtil;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v8

    :cond_31
    aget-object v2, p2, v8

    add-int v4, p4, v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/x/google/common/graphics/Utils;->drawInterpolatedString(Lcom/x/google/common/graphics/GoogleGraphics;Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)V

    const/4 v0, 0x0

    aget v0, p7, v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v0, 0x1

    aget v0, p7, v0

    add-int v1, v9, v0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    move v10, v2

    goto :goto_6

    :cond_53
    const/4 v0, 0x0

    aput v10, p7, v0

    const/4 v0, 0x1

    aput v9, p7, v0

    return-object p7
.end method

.method private static findBreakFromBegin(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/x/google/i18n/LineBreakingProperties;->canBreak(CC)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private static findBreakFromEnd(Ljava/lang/String;C)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lcom/x/google/i18n/LineBreakingProperties;->canBreak(CC)Z

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

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/x/google/i18n/LineBreakingProperties;->canBreak(CC)Z

    move-result v1

    if-nez v1, :cond_14

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_31
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static getFittedInterpolatedStringLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;ILjava/lang/String;)I
    .registers 9

    invoke-interface {p1, p5}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p4, v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/x/google/common/graphics/Utils;->getFittedInterpolatedTextLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;I)I

    move-result v0

    :goto_a
    if-lez v0, :cond_27

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/x/google/common/util/text/TextUtil;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_27
    return v0
.end method

.method public static getFittedInterpolatedText(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static/range {p0 .. p5}, Lcom/x/google/common/graphics/Utils;->getFittedInterpolatedStringLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method public static getFittedInterpolatedTextLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;I)I
    .registers 10

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-gtz p4, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-static {p1, p0, p2, p3}, Lcom/x/google/common/graphics/Utils;->parseInterpolatedString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)[I

    move-result-object v3

    aget v2, v3, v0

    if-gt v2, p4, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_4

    :cond_12
    move v2, v0

    move v0, v1

    :goto_14
    array-length v4, v3

    if-ge v0, v4, :cond_1f

    if-gt v2, p4, :cond_1f

    aget v4, v3, v0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    array-length v2, v3

    if-ge v0, v2, :cond_24

    add-int/lit8 v0, v0, -0x1

    :cond_24
    add-int/lit8 v0, v0, -0x2

    :goto_26
    if-lt v0, v1, :cond_4

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff00

    if-lt v2, v3, :cond_4

    add-int/lit8 v0, v0, -0x2

    goto :goto_26
.end method

.method private static getFittedStringLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;ILjava/lang/String;)I
    .registers 6

    invoke-interface {p1, p3}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Lcom/x/google/common/graphics/Utils;->getFittedTextLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;I)I

    move-result v0

    :goto_a
    if-lez v0, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/x/google/common/util/text/TextUtil;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1b
    return v0
.end method

.method public static getFittedText(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-interface {p1, p0}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/x/google/common/graphics/Utils;->getFittedStringLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;ILjava/lang/String;)I

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

    move-result-object p0

    goto :goto_6
.end method

.method public static getFittedTextLength(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;I)I
    .registers 7

    const/4 v1, 0x0

    if-gtz p2, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, p0}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_11

    move v0, v2

    goto :goto_4

    :cond_11
    mul-int/lit8 v3, p2, 0x2

    if-le v0, v3, :cond_26

    move v0, v1

    :goto_16
    if-ge v0, v2, :cond_4

    invoke-interface {p1, p0, v1, v0}, Lcom/x/google/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v3

    if-ge v3, p2, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_21
    if-eq v3, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_26
    move v0, v2

    :goto_27
    if-lez v0, :cond_4

    invoke-interface {p1, p0, v1, v0}, Lcom/x/google/common/graphics/GoogleFont;->substringWidth(Ljava/lang/String;II)I

    move-result v2

    if-le v2, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_27
.end method

.method public static getFontSizes([I[I)[I
    .registers 9

    const/4 v1, 0x0

    array-length v0, p0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sizes supported by device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v4, v0, [I

    aget v0, p0, v1

    move v2, v0

    move v0, v1

    :goto_13
    array-length v3, p0

    if-ge v0, v3, :cond_36

    aget v3, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_1d
    array-length v5, p1

    if-ge v3, v5, :cond_33

    aget v5, p0, v0

    aget v6, p1, v3

    if-gt v5, v6, :cond_30

    aget v5, p0, v0

    aget v6, v4, v3

    if-le v5, v6, :cond_30

    aget v5, p0, v0

    aput v5, v4, v3

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_36
    :goto_36
    array-length v0, v4

    if-ge v1, v0, :cond_42

    aget v0, v4, v1

    if-nez v0, :cond_3f

    aput v2, v4, v1

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_42
    return-object v4
.end method

.method public static inClip(Lcom/x/google/common/graphics/GoogleGraphics;IIII)Z
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipY()I

    move-result v1

    add-int v2, p2, p4

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_20

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipX()I

    move-result v1

    add-int v2, p1, p3

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private static indexAfterFirstWordEnd(Ljava/lang/String;)I
    .registers 4

    const/4 v2, -0x1

    const-string v0, " \u2003"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/x/google/common/graphics/Utils;->indexOfCharNot(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string v1, " \u2003"

    invoke-static {p0, v1, v0}, Lcom/x/google/common/graphics/Utils;->indexOfChar(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_e
.end method

.method private static indexOfChar(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_12

    :goto_11
    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    goto :goto_11
.end method

.method private static indexOfCharNot(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    goto :goto_11
.end method

.method private static indexOfNextWord(Ljava/lang/String;I)I
    .registers 4

    const-string v0, " \u2003"

    invoke-static {p0, v0, p1}, Lcom/x/google/common/graphics/Utils;->indexOfCharNot(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_d
    return v0
.end method

.method public static interpolatedStringDimensions(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)Lcom/x/google/common/geom/Rectangle;
    .registers 13

    const v8, 0xff00

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v1

    if-nez p2, :cond_16

    if-nez p3, :cond_16

    invoke-interface {p0, p1}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v2

    :cond_10
    new-instance v0, Lcom/x/google/common/geom/Rectangle;

    invoke-direct {v0, v4, v4, v2, v1}, Lcom/x/google/common/geom/Rectangle;-><init>(IIII)V

    return-object v0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v4

    move v2, v4

    move-object v3, p0

    :goto_1d
    if-ge v0, v5, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2e

    invoke-interface {v3, v6}, Lcom/x/google/common/graphics/GoogleFont;->charWidth(C)I

    move-result v6

    add-int/2addr v2, v6

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2e
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v5, :cond_2b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_4a

    sub-int v3, v6, v8

    int-to-char v3, v3

    invoke-interface {p3, v3}, Lcom/x/google/common/graphics/FontProvider;->getFont(C)Lcom/x/google/common/graphics/GoogleFont;

    move-result-object v3

    invoke-interface {v3}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2b

    :cond_4a
    invoke-interface {p2, v6}, Lcom/x/google/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v7

    add-int/2addr v2, v7

    invoke-interface {p2, v6}, Lcom/x/google/common/graphics/IconProvider;->getIconHeight(C)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2b
.end method

.method private static isBreak(C)Z
    .registers 3

    const-string v0, " \u2003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static parseInterpolatedString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;Lcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;)[I
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, 0x2

    new-array v5, v0, [I

    const/4 v3, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    move-object v1, p0

    :goto_f
    if-ge v2, v4, :cond_8d

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_30

    invoke-interface {v1, v7}, Lcom/x/google/common/graphics/GoogleFont;->charWidth(C)I

    move-result v7

    aput v7, v5, v6

    aget v6, v5, v6

    add-int/2addr v3, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v0, v1

    move-object v1, v3

    move v3, v2

    move v2, v9

    goto :goto_f

    :cond_30
    add-int/lit8 v7, v2, 0x1

    if-lt v7, v4, :cond_3d

    const/4 v7, 0x0

    aput v7, v5, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    :cond_3d
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xff00

    if-lt v7, v8, :cond_6f

    if-eqz p3, :cond_5c

    const v1, 0xff00

    sub-int v1, v7, v1

    int-to-char v1, v1

    invoke-interface {p3, v1}, Lcom/x/google/common/graphics/FontProvider;->getFont(C)Lcom/x/google/common/graphics/GoogleFont;

    move-result-object v1

    invoke-interface {v1}, Lcom/x/google/common/graphics/GoogleFont;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5c
    const/4 v7, 0x0

    aput v7, v5, v6

    :goto_5f
    aget v7, v5, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    :cond_6f
    if-eqz p2, :cond_80

    invoke-interface {p2, v7}, Lcom/x/google/common/graphics/IconProvider;->getIconWidth(C)I

    move-result v8

    aput v8, v5, v6

    invoke-interface {p2, v7}, Lcom/x/google/common/graphics/IconProvider;->getIconHeight(C)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5f

    :cond_80
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    goto :goto_5f

    :cond_8d
    const/4 v1, 0x0

    aput v3, v5, v1

    const/4 v1, 0x1

    aput v0, v5, v1

    return-object v5
.end method

.method public static popClip(Lcom/x/google/common/graphics/GoogleGraphics;)V
    .registers 9

    const-wide v6, 0xffffffffL

    const/16 v5, 0x20

    sget-object v0, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v0}, Lcom/x/google/common/LongVector;->lastElement()J

    move-result-wide v0

    and-long/2addr v0, v6

    long-to-int v0, v0

    sget-object v1, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v1}, Lcom/x/google/common/LongVector;->lastElement()J

    move-result-wide v1

    ushr-long/2addr v1, v5

    long-to-int v1, v1

    sget-object v2, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    sget-object v3, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v3}, Lcom/x/google/common/LongVector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/x/google/common/LongVector;->removeElementAt(I)V

    sget-object v2, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v2}, Lcom/x/google/common/LongVector;->lastElement()J

    move-result-wide v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    sget-object v3, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v3}, Lcom/x/google/common/LongVector;->lastElement()J

    move-result-wide v3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    sget-object v4, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    sget-object v5, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-virtual {v5}, Lcom/x/google/common/LongVector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/x/google/common/LongVector;->removeElementAt(I)V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/x/google/common/graphics/GoogleGraphics;->setClip(IIII)V

    return-void
.end method

.method public static pushClip(Lcom/x/google/common/graphics/GoogleGraphics;)V
    .registers 9

    const-wide v6, 0xffffffffL

    const/16 v5, 0x20

    sget-object v0, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipHeight()I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v5

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipWidth()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/LongVector;->addElement(J)V

    sget-object v0, Lcom/x/google/common/graphics/Utils;->clipStack:Lcom/x/google/common/LongVector;

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipY()I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v5

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleGraphics;->getClipX()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/LongVector;->addElement(J)V

    return-void
.end method

.method public static splitLines(IILcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    :goto_c
    return-object v0

    :cond_d
    if-lez p4, :cond_d3

    invoke-static {p3}, Lcom/x/google/common/graphics/Utils;->indexAfterFirstWordEnd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    :goto_22
    const/4 v1, 0x0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_40

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, Lcom/x/google/common/graphics/GoogleFont;->charWidth(C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3b
    invoke-interface {p2, p3}, Lcom/x/google/common/graphics/GoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    :cond_40
    const-string v7, ""

    sub-int v0, p0, p4

    if-le v0, v1, :cond_5b

    sub-int v2, p0, p4

    const/4 v3, 0x1

    sget-object v4, Lcom/x/google/common/graphics/Utils;->NO_ICONS:Lcom/x/google/common/graphics/IconProvider;

    sget-object v5, Lcom/x/google/common/graphics/Utils;->NO_FONTS:Lcom/x/google/common/graphics/FontProvider;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lcom/x/google/common/graphics/Utils;->breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;Z)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_5b

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v7, v0

    :cond_5b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Lcom/x/google/common/graphics/Utils;->indexOfNextWord(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    const v3, 0x7fffffff

    sget-object v4, Lcom/x/google/common/graphics/Utils;->NO_ICONS:Lcom/x/google/common/graphics/IconProvider;

    sget-object v5, Lcom/x/google/common/graphics/Utils;->NO_FONTS:Lcom/x/google/common/graphics/FontProvider;

    const/4 v6, 0x1

    move-object v0, p2

    move v2, p0

    invoke-static/range {v0 .. v6}, Lcom/x/google/common/graphics/Utils;->breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;Z)[Ljava/lang/String;

    move-result-object v0

    :cond_80
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_8f
    array-length v1, v0

    if-le v1, p1, :cond_e4

    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    const-string v3, "..."

    invoke-static {v0, p2, p0, v3}, Lcom/x/google/common/graphics/Utils;->getFittedText(Ljava/lang/String;Lcom/x/google/common/graphics/GoogleFont;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_c2
    if-eqz p5, :cond_e1

    const/4 v0, 0x0

    :goto_c5
    array-length v2, v1

    if-ge v0, v2, :cond_e1

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/x/google/common/graphics/Utils;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_d3
    const/4 v3, -0x1

    sget-object v4, Lcom/x/google/common/graphics/Utils;->NO_ICONS:Lcom/x/google/common/graphics/IconProvider;

    sget-object v5, Lcom/x/google/common/graphics/Utils;->NO_FONTS:Lcom/x/google/common/graphics/FontProvider;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    move v2, p0

    invoke-static/range {v0 .. v6}, Lcom/x/google/common/graphics/Utils;->breakUpString(Lcom/x/google/common/graphics/GoogleFont;Ljava/lang/String;IILcom/x/google/common/graphics/IconProvider;Lcom/x/google/common/graphics/FontProvider;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    :cond_e1
    move-object v0, v1

    goto/16 :goto_c

    :cond_e4
    move-object v1, v0

    goto :goto_c2
.end method

.method public static trimSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v0, " "

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/x/google/common/graphics/Utils;->indexOfCharNot(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1c

    const-string p0, ""

    goto :goto_a

    :cond_1c
    add-int/lit8 v0, v1, -0x1

    :goto_1e
    if-ltz v0, :cond_2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2d

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_2d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method
