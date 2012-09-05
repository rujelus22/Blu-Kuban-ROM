.class public Lcom/diotek/dhwr/eur/b2b/DioHWRService;
.super Ljava/lang/Object;
.source "DioHWRService.java"


# instance fields
.field private final MAX_CANDIDATES_BOXMODE:I

.field mCands:[I

.field mCharBuffer:[C

.field private mEnableSymbols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mErrorCode:I

.field private mHWRAutoSpaceAdded:Z

.field private mHWRAutoSpaceInset:Z

.field private mHWRCandidateShown:Z

.field private mHWRHangulJohapUse:Z

.field private mHWRInputMode:I

.field mIMEService:Landroid/content/Context;

.field private mInputLanguage:S

.field mInputMode:[[I

.field private mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private mLanguageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mModeCount:I

.field mResult:[C

.field private final mSizeRate:I

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSymbols:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRCandidateShown:Z

    .line 30
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRHangulJohapUse:Z

    .line 31
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceInset:Z

    .line 32
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    .line 34
    const/16 v0, 0xd2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    .line 35
    const/16 v0, 0xd2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    .line 36
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    .line 37
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    .line 38
    iput v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 39
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 45
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v2

    const-string v1, "-"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+"

    aput-object v2, v0, v1

    const-string v1, "/"

    aput-object v1, v0, v5

    const-string v1, "&"

    aput-object v1, v0, v6

    const/16 v1, 0xb

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u00a7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\uffe6"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u00bf"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u00a1"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u00a4"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u00a2"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u00ab"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u00bb"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u00ae"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u00b0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    .line 55
    iput v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->MAX_CANDIDATES_BOXMODE:I

    .line 57
    const/16 v0, 0x3c

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSizeRate:I

    .line 58
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRInputMode:I

    .line 63
    iput-short v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputLanguage:S

    .line 66
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->init()V

    .line 67
    return-void
.end method

.method private handleAutoSpaceInset()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 876
    iget-boolean v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceInset:Z

    if-eqz v0, :cond_12

    .line 877
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v1

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 881
    :goto_11
    return-void

    .line 879
    :cond_12
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v1

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_11
.end method

.method private handleGestureShift()V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 289
    :cond_6
    return-void
.end method

.method private handleHangulRecogMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1b

    .line 867
    iget-boolean v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRHangulJohapUse:Z

    if-eqz v0, :cond_1c

    .line 868
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 873
    :cond_1b
    :goto_1b
    return-void

    .line 870
    :cond_1c
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_1b
.end method

.method private handleHwrSettingValue()V
    .registers 1

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleHangulRecogMode()V

    .line 862
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleAutoSpaceInset()V

    .line 863
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->create()V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 74
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 76
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->initLanguage()V

    .line 77
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    .line 80
    :cond_1d
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setSettingValues()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 84
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 86
    :cond_39
    return-void
.end method

.method private isAlphabetMode()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 820
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v3, v3, v1

    aget v0, v3, v2

    .line 821
    .local v0, type:I
    sget v3, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    and-int/2addr v3, v0

    sget v4, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    if-eq v3, v4, :cond_16

    sget v3, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    and-int/2addr v3, v0

    sget v4, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    if-ne v3, v4, :cond_17

    :cond_16
    move v1, v2

    .line 825
    :cond_17
    return v1
.end method

.method private isRecognizeSymbolMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v0

    aget v1, v1, v0

    const/16 v2, 0x84

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private isRecognizeTextMode()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v2, v2, v1

    aget v0, v2, v1

    .line 807
    .local v0, mode:I
    const/16 v2, 0x84

    if-eq v0, v2, :cond_13

    const/16 v2, 0x82

    if-eq v0, v2, :cond_13

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_14

    .line 812
    :cond_13
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private onPostProcessor(C)C
    .registers 5
    .parameter "cResult"

    .prologue
    .line 569
    move v0, p1

    .line 570
    .local v0, ret:C
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeTextMode()Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v0

    .line 576
    .end local v0           #ret:C
    .local v1, ret:C
    :goto_8
    return v1

    .line 573
    .end local v1           #ret:C
    .restart local v0       #ret:C
    :cond_9
    const/16 v2, 0x20a9

    if-ne v0, v2, :cond_10

    .line 574
    const v0, 0xffe6

    :cond_10
    move v1, v0

    .line 576
    .end local v0           #ret:C
    .restart local v1       #ret:C
    goto :goto_8
.end method

.method private recognizeGesture()Z
    .registers 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 141
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 142
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 143
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v7, v4, v2

    .line 144
    filled-new-array {v6, v6}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 145
    .local v0, inputMode:[[I
    aget-object v4, v0, v2

    const/16 v5, 0x7f

    aput v5, v4, v2

    .line 146
    aget-object v4, v0, v2

    sget v5, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v5, v4, v3

    .line 148
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v2, v0, v4, v5}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 149
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_39

    .line 153
    :cond_39
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    move-object v0, v1

    .line 154
    check-cast v0, [[I

    .line 155
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_4a

    move v1, v2

    .line 187
    :goto_49
    return v1

    .line 160
    :cond_4a
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v4, v4, v2

    if-lez v4, :cond_86

    .line 163
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v2

    sparse-switch v4, :sswitch_data_88

    move v1, v2

    .line 182
    goto :goto_49

    .line 165
    :sswitch_59
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 184
    :goto_61
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v1, v3

    .line 185
    goto :goto_49

    .line 169
    :sswitch_66
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, v7, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_61

    .line 172
    :sswitch_6e
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleGestureShift()V

    goto :goto_61

    .line 175
    :sswitch_72
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_61

    .line 178
    :sswitch_7c
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_61

    :cond_86
    move v1, v2

    .line 187
    goto :goto_49

    .line 163
    :sswitch_data_88
    .sparse-switch
        0x3 -> :sswitch_66
        0x8 -> :sswitch_59
        0x9 -> :sswitch_7c
        0xd -> :sswitch_66
        0x10 -> :sswitch_6e
        0x20 -> :sswitch_72
    .end sparse-switch
.end method

.method private setSettingValues()V
    .registers 1

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleHwrSettingValue()V

    .line 858
    return-void
.end method


# virtual methods
.method public addPoint(SS)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 587
    invoke-static {p1, p2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->AddPoint(SS)I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 588
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_c

    .line 590
    const/4 v0, 0x0

    .line 592
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public clearInk()V
    .registers 1

    .prologue
    .line 775
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->InkClear()I

    .line 776
    return-void
.end method

.method public create()V
    .registers 2

    .prologue
    .line 580
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Create()I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 581
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_a

    .line 584
    :cond_a
    return-void
.end method

.method public endStroke()V
    .registers 2

    .prologue
    .line 596
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->EndStroke()I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 597
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_a

    .line 600
    :cond_a
    return-void
.end method

.method public getInkCounter()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 603
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v2, v0, v2

    .line 604
    .local v0, count:[I
    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->GetInkCount([I)I

    move-result v1

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 605
    iget v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v1, :cond_10

    .line 609
    :cond_10
    aget v1, v0, v2

    return v1
.end method

.method public initLanguage()V
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 90
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguageInfoList:Ljava/util/List;

    .line 91
    return-void
.end method

.method public makeSentenceSuggestion(Ljava/util/List;[CI)V
    .registers 7
    .parameter
    .parameter "result"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[CI)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 303
    :cond_4
    :goto_4
    return-void

    .line 294
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 296
    if-lez p3, :cond_4

    .line 297
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 298
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, p3, :cond_1c

    .line 299
    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 301
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public makeSuggestion(Ljava/util/List;[CI)V
    .registers 6
    .parameter
    .parameter "result"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[CI)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 566
    :cond_4
    return-void

    .line 559
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 561
    if-eqz p3, :cond_4

    .line 562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p3, :cond_4

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 563
    aget-char v1, p2, v0

    invoke-direct {p0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->onPostProcessor(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public recognize()I
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, result:I
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 484
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGestureForSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v5

    .line 553
    :goto_12
    return v3

    .line 486
    :cond_13
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGesture()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v5

    goto :goto_12

    .line 489
    :cond_1b
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v4, 0xa

    aput v4, v3, v5

    .line 491
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v5, v3, v4, v6}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 492
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_31

    .line 496
    :cond_31
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 497
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 498
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_42

    .line 502
    :cond_42
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 511
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v5

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v7

    if-nez v3, :cond_53

    move v3, v5

    goto :goto_12

    .line 513
    :cond_53
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 515
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v3, v3, v5

    if-lez v3, :cond_92

    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_60
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v3, v3

    if-ge v0, v3, :cond_91

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v0

    if-eqz v3, :cond_91

    .line 521
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 522
    add-int/lit8 v1, v1, -0x1

    .line 520
    :goto_83
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 525
    :cond_88
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    aput-char v4, v3, v1

    goto :goto_83

    .line 527
    :cond_91
    move v2, v1

    .line 537
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_92
    if-lez v2, :cond_f1

    .line 538
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v3, v4, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSuggestion(Ljava/util/List;[CI)V

    .line 539
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-virtual {v3, v4, v7, v7, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 540
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 542
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e5

    .line 543
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 544
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentComposing(Ljava/lang/StringBuilder;)V

    .line 545
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setComposingText(Ljava/lang/CharSequence;)Z

    .line 548
    :cond_e5
    iget-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    if-eqz v3, :cond_f1

    .line 549
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    :cond_f1
    move v3, v2

    .line 553
    goto/16 :goto_12
.end method

.method public recognizeBackSpace()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 238
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 239
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v5, 0xa

    aput v5, v4, v2

    .line 240
    filled-new-array {v6, v6}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 241
    .local v0, inputMode:[[I
    aget-object v4, v0, v2

    const/16 v5, 0x7f

    aput v5, v4, v2

    .line 242
    aget-object v4, v0, v2

    sget v5, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v5, v4, v3

    .line 244
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v2, v0, v4, v5}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 245
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_39

    .line 249
    :cond_39
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    move-object v0, v1

    .line 250
    check-cast v0, [[I

    .line 251
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_4a

    move v1, v2

    .line 269
    :goto_49
    return v1

    .line 256
    :cond_4a
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v4, v4, v2

    if-lez v4, :cond_66

    .line 259
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v2

    packed-switch v4, :pswitch_data_68

    move v1, v2

    .line 264
    goto :goto_49

    .line 261
    :pswitch_59
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 266
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v1, v3

    .line 267
    goto :goto_49

    :cond_66
    move v1, v2

    .line 269
    goto :goto_49

    .line 259
    :pswitch_data_68
    .packed-switch 0x8
        :pswitch_59
    .end packed-switch
.end method

.method public recognizeBoxMode()I
    .registers 2

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognize()I

    move-result v0

    return v0
.end method

.method public recognizeGestureForSymbolMode()Z
    .registers 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 193
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 194
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 195
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v7, v4, v2

    .line 196
    filled-new-array {v6, v6}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 197
    .local v0, inputMode:[[I
    aget-object v4, v0, v2

    const/16 v5, 0x7f

    aput v5, v4, v2

    .line 198
    aget-object v4, v0, v2

    sget v5, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v5, v4, v3

    .line 200
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v2, v0, v4, v5}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 201
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_39

    .line 205
    :cond_39
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    move-object v0, v1

    .line 206
    check-cast v0, [[I

    .line 207
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_4a

    move v1, v2

    .line 231
    :goto_49
    return v1

    .line 212
    :cond_4a
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v4, v4, v2

    if-lez v4, :cond_78

    .line 215
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v2

    sparse-switch v4, :sswitch_data_7a

    move v1, v2

    .line 226
    goto :goto_49

    .line 217
    :sswitch_59
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 228
    :goto_61
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v1, v3

    .line 229
    goto :goto_49

    .line 220
    :sswitch_66
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_61

    .line 223
    :sswitch_70
    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, v7, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_61

    :cond_78
    move v1, v2

    .line 231
    goto :goto_49

    .line 215
    :sswitch_data_7a
    .sparse-switch
        0x8 -> :sswitch_59
        0xd -> :sswitch_70
        0x1f -> :sswitch_66
    .end sparse-switch
.end method

.method public recognizeSentence()I
    .registers 11

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, result:I
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v5, 0xa

    aput v5, v4, v6

    .line 309
    const/4 v1, 0x1

    .line 311
    .local v1, isRecognizedSentence:Z
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 312
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGestureForSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v6

    .line 400
    :goto_19
    return v4

    .line 314
    :cond_1a
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGesture()Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v6

    goto :goto_19

    .line 317
    :cond_22
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v7, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v8, v4, v5, v7}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 318
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_32

    .line 322
    :cond_32
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 323
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 324
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_43

    .line 328
    :cond_43
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 337
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 338
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v6

    if-nez v4, :cond_59

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v8

    if-nez v4, :cond_59

    move v4, v6

    goto :goto_19

    .line 340
    :cond_59
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v8

    if-nez v4, :cond_e9

    .line 345
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_61
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v4, v4

    if-ge v0, v4, :cond_92

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_92

    .line 346
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 347
    add-int/lit8 v2, v2, -0x1

    .line 345
    :goto_84
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 350
    :cond_89
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    aput-char v5, v4, v2

    goto :goto_84

    .line 352
    :cond_92
    move v3, v2

    .line 353
    const/4 v1, 0x0

    .line 376
    :goto_94
    if-lez v3, :cond_e6

    .line 377
    if-eqz v1, :cond_11f

    .line 378
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v4, v5, v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSentenceSuggestion(Ljava/util/List;[CI)V

    .line 379
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 385
    :goto_a6
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    if-eqz v4, :cond_da

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-eqz v4, :cond_da

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 386
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 387
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentComposing(Ljava/lang/StringBuilder;)V

    .line 388
    if-eqz v1, :cond_138

    .line 389
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitCurrentComposing()V

    .line 395
    :cond_da
    :goto_da
    iget-boolean v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    if-eqz v4, :cond_e6

    .line 396
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    :cond_e6
    move v4, v3

    .line 400
    goto/16 :goto_19

    .line 359
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_e9
    const/4 v0, 0x0

    .restart local v0       #i:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_eb
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v4, v4

    if-ge v0, v4, :cond_11c

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_11c

    .line 360
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_113

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_113

    .line 361
    add-int/lit8 v2, v2, -0x1

    .line 359
    :goto_10e
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 364
    :cond_113
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    aput-char v5, v4, v2

    goto :goto_10e

    .line 366
    :cond_11c
    move v3, v2

    goto/16 :goto_94

    .line 381
    :cond_11f
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v4, v5, v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSuggestion(Ljava/util/List;[CI)V

    .line 382
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-virtual {v4, v5, v8, v8, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 383
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_a6

    .line 391
    :cond_138
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setComposingText(Ljava/lang/CharSequence;)Z

    goto :goto_da
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public setHwrInputMode(IS)V
    .registers 10
    .parameter "inputMode"
    .parameter "inputLanguage"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    const/4 v0, 0x1

    .line 629
    .local v0, mModeCount:I
    packed-switch p1, :pswitch_data_1a0

    .line 747
    :pswitch_8
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    .line 751
    :goto_e
    :pswitch_e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aget v1, v1, v4

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRInputMode:I

    .line 752
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v6, v1, v4

    .line 753
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v4, v1, v0, v2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v1

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 754
    iget v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v1, :cond_28

    .line 758
    :cond_28
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setSettingValues()V

    .line 759
    return-void

    .line 631
    :pswitch_2c
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x82

    aput v2, v1, v4

    .line 632
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v2, v1, v5

    goto :goto_e

    .line 635
    :pswitch_3d
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x84

    aput v2, v1, v4

    .line 636
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v2, v1, v5

    goto :goto_e

    .line 640
    :pswitch_4e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    sget v3, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v2, v3

    aput v2, v1, v5

    .line 641
    sparse-switch p2, :sswitch_data_1b0

    goto :goto_e

    .line 643
    :sswitch_5d
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x21

    aput v2, v1, v4

    goto :goto_e

    .line 646
    :sswitch_66
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x5

    aput v2, v1, v4

    goto :goto_e

    .line 649
    :sswitch_6e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x6

    aput v2, v1, v4

    goto :goto_e

    .line 652
    :sswitch_76
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x7

    aput v2, v1, v4

    goto :goto_e

    .line 655
    :sswitch_7e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x8

    aput v2, v1, v4

    goto :goto_e

    .line 658
    :sswitch_87
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x9

    aput v2, v1, v4

    goto/16 :goto_e

    .line 661
    :sswitch_91
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    goto/16 :goto_e

    .line 664
    :sswitch_99
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v6, v1, v4

    goto/16 :goto_e

    .line 667
    :sswitch_a1
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xb

    aput v2, v1, v4

    goto/16 :goto_e

    .line 670
    :sswitch_ab
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v4

    goto/16 :goto_e

    .line 673
    :sswitch_b4
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x22

    aput v2, v1, v4

    goto/16 :goto_e

    .line 676
    :sswitch_be
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xe

    aput v2, v1, v4

    goto/16 :goto_e

    .line 679
    :sswitch_c8
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xf

    aput v2, v1, v4

    goto/16 :goto_e

    .line 682
    :sswitch_d2
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xc

    aput v2, v1, v4

    goto/16 :goto_e

    .line 685
    :sswitch_dc
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x10

    aput v2, v1, v4

    goto/16 :goto_e

    .line 688
    :sswitch_e6
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x23

    aput v2, v1, v4

    goto/16 :goto_e

    .line 691
    :sswitch_f0
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x65

    aput v2, v1, v4

    .line 692
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_WANSUNG:I

    aput v2, v1, v5

    goto/16 :goto_e

    .line 695
    :sswitch_102
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x11

    aput v2, v1, v4

    goto/16 :goto_e

    .line 698
    :sswitch_10c
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v4

    goto/16 :goto_e

    .line 701
    :sswitch_116
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x24

    aput v2, v1, v4

    goto/16 :goto_e

    .line 704
    :sswitch_120
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x13

    aput v2, v1, v4

    goto/16 :goto_e

    .line 707
    :sswitch_12a
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x14

    aput v2, v1, v4

    goto/16 :goto_e

    .line 710
    :sswitch_134
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x15

    aput v2, v1, v4

    goto/16 :goto_e

    .line 713
    :sswitch_13e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x17

    aput v2, v1, v4

    goto/16 :goto_e

    .line 716
    :sswitch_148
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x26

    aput v2, v1, v4

    goto/16 :goto_e

    .line 719
    :sswitch_152
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x18

    aput v2, v1, v4

    goto/16 :goto_e

    .line 722
    :sswitch_15c
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x19

    aput v2, v1, v4

    goto/16 :goto_e

    .line 725
    :sswitch_166
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1a

    aput v2, v1, v4

    goto/16 :goto_e

    .line 728
    :sswitch_170
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xd

    aput v2, v1, v4

    goto/16 :goto_e

    .line 731
    :sswitch_17a
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1b

    aput v2, v1, v4

    goto/16 :goto_e

    .line 734
    :sswitch_184
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1c

    aput v2, v1, v4

    goto/16 :goto_e

    .line 737
    :sswitch_18e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x28

    aput v2, v1, v4

    goto/16 :goto_e

    .line 740
    :sswitch_198
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    goto/16 :goto_e

    .line 629
    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4e
        :pswitch_2c
        :pswitch_3d
        :pswitch_8
        :pswitch_e
    .end packed-switch

    .line 641
    :sswitch_data_1b0
    .sparse-switch
        0x2 -> :sswitch_5d
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_76
        0x7 -> :sswitch_ab
        0x8 -> :sswitch_b4
        0x9 -> :sswitch_91
        0xa -> :sswitch_170
        0xb -> :sswitch_99
        0xc -> :sswitch_a1
        0xe -> :sswitch_be
        0xf -> :sswitch_c8
        0x10 -> :sswitch_dc
        0x12 -> :sswitch_f0
        0x13 -> :sswitch_7e
        0x14 -> :sswitch_120
        0x15 -> :sswitch_12a
        0x16 -> :sswitch_134
        0x18 -> :sswitch_13e
        0x19 -> :sswitch_148
        0x1b -> :sswitch_15c
        0x1d -> :sswitch_17a
        0x1f -> :sswitch_184
        0x22 -> :sswitch_18e
        0x24 -> :sswitch_166
        0x25 -> :sswitch_87
        0x26 -> :sswitch_102
        0x27 -> :sswitch_10c
        0x2f -> :sswitch_116
        0x3e -> :sswitch_198
        0x54 -> :sswitch_d2
        0x59 -> :sswitch_66
        0x61 -> :sswitch_e6
        0x80 -> :sswitch_152
    .end sparse-switch
.end method

.method public setWritingArea(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 618
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x3c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetWritingArea(IIIII)I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 619
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_14

    .line 622
    :cond_14
    return-void
.end method
