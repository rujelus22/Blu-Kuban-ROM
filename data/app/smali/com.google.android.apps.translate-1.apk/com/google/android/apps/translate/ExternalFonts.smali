.class public Lcom/google/android/apps/translate/ExternalFonts;
.super Ljava/lang/Object;
.source "ExternalFonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/ExternalFonts$style;
    }
.end annotation


# static fields
.field private static final ARABIC:Lcom/google/android/apps/translate/ExternalFonts; = null

.field private static final ARABIC_FONT_SCALE:F = 1.25f

.field private static final DEFAULT:Lcom/google/android/apps/translate/ExternalFonts; = null

.field private static final HEBREW:Lcom/google/android/apps/translate/ExternalFonts; = null

.field private static final HEBREW_FONT_SCALE:F = 1.0f

.field private static sAssets:Landroid/content/res/AssetManager;


# instance fields
.field private final mFontName:Ljava/lang/String;

.field private mTextSize:[F

.field private mTtf:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/ExternalFonts;-><init>(Landroid/graphics/Typeface;)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    .line 28
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts;

    const-string v1, "ScheherazadeRegOT.ttf"

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/ExternalFonts;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts;->ARABIC:Lcom/google/android/apps/translate/ExternalFonts;

    .line 30
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts;

    const-string v1, "SILEOTSR.ttf"

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/ExternalFonts;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts;->HEBREW:Lcom/google/android/apps/translate/ExternalFonts;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts;->sAssets:Landroid/content/res/AssetManager;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "face"

    .prologue
    .line 77
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/ExternalFonts;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTtf:Landroid/graphics/Typeface;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fontName"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTtf:Landroid/graphics/Typeface;

    .line 82
    iput-object p1, p0, Lcom/google/android/apps/translate/ExternalFonts;->mFontName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->sAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private static getFontByLanguage(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/ExternalFonts;
    .registers 2
    .parameter "lang"

    .prologue
    .line 175
    if-nez p0, :cond_5

    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/ExternalFonts;->getFontByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/ExternalFonts;

    move-result-object v0

    goto :goto_4
.end method

.method public static getFontByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/ExternalFonts;
    .registers 2
    .parameter "lang"

    .prologue
    .line 158
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useExternalFontsForUnsupportedLanguages()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 159
    const-string v0, "ar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 160
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->ARABIC:Lcom/google/android/apps/translate/ExternalFonts;

    .line 165
    :goto_14
    return-object v0

    .line 161
    :cond_15
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 162
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->HEBREW:Lcom/google/android/apps/translate/ExternalFonts;

    goto :goto_14

    .line 165
    :cond_20
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    goto :goto_14
.end method

.method private getIndexOfTextSize(Lcom/google/android/apps/translate/Constants$AppearanceType;)I
    .registers 4
    .parameter "type"

    .prologue
    .line 141
    sget-object v0, Lcom/google/android/apps/translate/Constants;->TEXT_APPEARANCE:[Lcom/google/android/apps/translate/ExternalFonts$style;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Constants$AppearanceType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/apps/translate/ExternalFonts$style;->ordinal()I

    move-result v0

    return v0
.end method

.method public static hasAssets()Z
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts;->sAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static initialize(Landroid/content/res/AssetManager;Landroid/content/Context;)V
    .registers 8
    .parameter "assets"
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetManager;

    sput-object v4, Lcom/google/android/apps/translate/ExternalFonts;->sAssets:Landroid/content/res/AssetManager;

    .line 97
    const/4 v4, 0x5

    new-array v3, v4, [I

    const/4 v4, 0x0

    sget v5, Lcom/google/android/apps/translate/R$style;->TextAppearance_Small:I

    aput v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/google/android/apps/translate/R$style;->TextAppearance_Default:I

    aput v5, v3, v4

    const/4 v4, 0x2

    sget v5, Lcom/google/android/apps/translate/R$style;->TextAppearance_Medium:I

    aput v5, v3, v4

    const/4 v4, 0x3

    sget v5, Lcom/google/android/apps/translate/R$style;->TextAppearance_Large:I

    aput v5, v3, v4

    const/4 v4, 0x4

    sget v5, Lcom/google/android/apps/translate/R$style;->TextAppearance_Huge:I

    aput v5, v3, v4

    .line 106
    .local v3, textAppearances:[I
    array-length v1, v3

    .line 107
    .local v1, length:I
    sget-object v4, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    new-array v5, v1, [F

    iput-object v5, v4, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    if-ge v0, v1, :cond_43

    .line 109
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    aget v4, v3, v0

    invoke-direct {v2, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v2, span:Landroid/text/style/TextAppearanceSpan;
    sget-object v4, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    iget-object v4, v4, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 114
    .end local v2           #span:Landroid/text/style/TextAppearanceSpan;
    :cond_43
    sget-object v4, Lcom/google/android/apps/translate/ExternalFonts;->ARABIC:Lcom/google/android/apps/translate/ExternalFonts;

    const/high16 v5, 0x3fa0

    invoke-direct {v4, v5}, Lcom/google/android/apps/translate/ExternalFonts;->setDefaultTextSize(F)V

    .line 115
    sget-object v4, Lcom/google/android/apps/translate/ExternalFonts;->HEBREW:Lcom/google/android/apps/translate/ExternalFonts;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v5}, Lcom/google/android/apps/translate/ExternalFonts;->setDefaultTextSize(F)V

    .line 116
    return-void
.end method

.method public static isUsingExternalFont(Lcom/google/android/apps/translate/Language;)Z
    .registers 3
    .parameter "lang"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/android/apps/translate/ExternalFonts;->getFontByLanguage(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/ExternalFonts;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setDefaultTextSize(F)V
    .registers 6
    .parameter "scale"

    .prologue
    .line 119
    sget-object v2, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    iget-object v2, v2, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    array-length v1, v2

    .line 120
    .local v1, length:I
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 122
    iget-object v2, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    sget-object v3, Lcom/google/android/apps/translate/ExternalFonts;->DEFAULT:Lcom/google/android/apps/translate/ExternalFonts;

    iget-object v3, v3, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    aget v3, v3, v0

    mul-float/2addr v3, p1

    aput v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 124
    :cond_1a
    return-void
.end method


# virtual methods
.method public getTextSize(Lcom/google/android/apps/translate/Constants$AppearanceType;)F
    .registers 4
    .parameter "type"

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->UNCHANGED:Lcom/google/android/apps/translate/Constants$AppearanceType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTextSize:[F

    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/ExternalFonts;->getIndexOfTextSize(Lcom/google/android/apps/translate/Constants$AppearanceType;)I

    move-result v1

    aget v0, v0, v1

    goto :goto_5
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTtf:Landroid/graphics/Typeface;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/google/android/apps/translate/ExternalFonts;->hasAssets()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/translate/ExternalFonts;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/ExternalFonts;->mFontName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTtf:Landroid/graphics/Typeface;

    .line 134
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/translate/ExternalFonts;->mTtf:Landroid/graphics/Typeface;

    return-object v0
.end method
