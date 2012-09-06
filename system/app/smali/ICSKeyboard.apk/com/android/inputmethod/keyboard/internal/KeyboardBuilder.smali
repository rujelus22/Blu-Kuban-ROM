.class public Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KP:",
        "Lcom/android/inputmethod/keyboard/internal/KeyboardParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_KEYBOARD_COLUMNS:I = 0xa

.field private static final DEFAULT_KEYBOARD_ROWS:I = 0x4

.field private static final TAG:Ljava/lang/String; = null

.field private static final TAG_CASE:Ljava/lang/String; = "case"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field public static final TAG_KEY_STYLE:Ljava/lang/String; = "key-style"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static final TAG_SPACER:Ljava/lang/String; = "Spacer"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

.field private mCurrentY:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

.field private mLeftEdge:Z

.field protected final mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKP;"
        }
    .end annotation
.end field

.field protected final mResources:Landroid/content/res/Resources;

.field private mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

.field private mTopEdge:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TKP;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;,"TKP;"
    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 136
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 139
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 140
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    .line 241
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    .local v0, res:Landroid/content/res/Resources;
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    .line 244
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 246
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 248
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->setTouchPositionCorrectionData(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 250
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    .line 251
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    .line 252
    return-void
.end method

.method private addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 4
    .parameter "width"
    .parameter

    .prologue
    .line 800
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->advanceXPos(F)V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 803
    return-void
.end method

.method private static booleanAttr(Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "a"
    .parameter "index"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 883
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, " %s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method

.method private static checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "tag"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 755
    return-void

    .line 756
    :cond_12
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v0
.end method

.method private endKey(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 785
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 786
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    if-eqz v0, :cond_11

    .line 787
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 790
    :cond_11
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    if-eqz v0, :cond_1a

    .line 791
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 793
    :cond_1a
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 794
    return-void
.end method

.method private endKeyboard()V
    .registers 1

    .prologue
    .line 797
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    return-void
.end method

.method private endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 5
    .parameter

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p1, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    if-nez v0, :cond_d

    .line 773
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "orphant end row tag"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_d
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_1a

    .line 775
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 776
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 778
    :cond_1a
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 779
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 780
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 782
    return-void
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F
    .registers 6
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 806
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 807
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_7

    .line 814
    .end local p3
    :cond_6
    :goto_6
    return p3

    .line 809
    .restart local p3
    :cond_7
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isFractionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 810
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    goto :goto_6

    .line 811
    :cond_12
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isDimensionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 812
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_6
.end method

.method public static getEnumValue(Landroid/content/res/TypedArray;II)I
    .registers 5
    .parameter "a"
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 819
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_7

    .line 824
    .end local p2
    :cond_6
    :goto_6
    return p2

    .line 821
    .restart local p2
    :cond_7
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 822
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_6
.end method

.method private static isDimensionValue(Landroid/util/TypedValue;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 832
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isFractionValue(Landroid/util/TypedValue;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 828
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isIntegerValue(Landroid/util/TypedValue;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 836
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isStringValue(Landroid/util/TypedValue;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 840
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 5
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eq v1, p2, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .registers 5
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, p2, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    .registers 5
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private static matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z
    .registers 8
    .parameter "a"
    .parameter "index"
    .parameter "intValue"
    .parameter "strValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 705
    .local v0, v:Landroid/util/TypedValue;
    if-nez v0, :cond_9

    .line 713
    :cond_8
    :goto_8
    return v1

    .line 708
    :cond_9
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 709
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq p2, v3, :cond_8

    move v1, v2

    goto :goto_8

    .line 710
    :cond_17
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isStringValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 711
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_8

    :cond_2c
    move v1, v2

    .line 713
    goto :goto_8
.end method

.method private parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .registers 6
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    const/4 v1, 0x1

    .line 606
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 607
    .local v0, selected:Z
    if-nez p2, :cond_f

    .line 609
    if-eqz v0, :cond_d

    .end local p3
    :goto_9
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 614
    :goto_c
    return v0

    .restart local p3
    :cond_d
    move p3, v1

    .line 609
    goto :goto_9

    .line 612
    :cond_f
    if-eqz v0, :cond_15

    .end local p3
    :goto_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_c

    .restart local p3
    :cond_15
    move p3, v1

    goto :goto_11
.end method

.method private parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 23
    .parameter "parser"

    .prologue
    .line 618
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 619
    .local v9, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    if-nez v9, :cond_f

    .line 620
    const/16 v16, 0x1

    .line 677
    :goto_e
    return v16

    .line 622
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    .line 623
    sget-object v20, Linputmethod/latin/ported/R$styleable;->Keyboard_Case:[I

    .line 622
    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 626
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    :try_start_21
    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v19, v0

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v20

    .line 625
    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v3, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z

    move-result v13

    .line 628
    .local v13, modeMatched:Z
    const/16 v18, 0x1

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    move/from16 v19, v0

    .line 627
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    .line 630
    .local v14, navigateActionMatched:Z
    const/16 v18, 0x2

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    move/from16 v19, v0

    .line 629
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v15

    .line 632
    .local v15, passwordInputMatched:Z
    const/16 v18, 0x3

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    move/from16 v19, v0

    .line 631
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v7

    .line 634
    .local v7, hasSettingsKeyMatched:Z
    const/16 v18, 0x4

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    move/from16 v19, v0

    .line 633
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v6

    .line 636
    .local v6, f2KeyModeMatched:Z
    const/16 v18, 0x5

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    move/from16 v19, v0

    .line 635
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    .line 638
    .local v4, clobberSettingsKeyMatched:Z
    const/16 v18, 0x6

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    move/from16 v19, v0

    .line 637
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v17

    .line 640
    .local v17, shortcutKeyEnabledMatched:Z
    const/16 v18, 0x7

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    move/from16 v19, v0

    .line 639
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v8

    .line 646
    .local v8, hasShortcutKeyMatched:Z
    const/16 v18, 0x8

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    move/from16 v19, v0

    .line 645
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v10

    .line 648
    .local v10, imeActionMatched:Z
    const/16 v18, 0x9

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    .line 647
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v12

    .line 650
    .local v12, localeCodeMatched:Z
    const/16 v18, 0xa

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    .line 649
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v11

    .line 652
    .local v11, languageCodeMatched:Z
    const/16 v18, 0xb

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    .line 651
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    :try_end_dc
    .catchall {:try_start_21 .. :try_end_dc} :catchall_ff

    move-result v5

    .line 653
    .local v5, countryCodeMatched:Z
    if-eqz v13, :cond_fc

    if-eqz v14, :cond_fc

    if-eqz v15, :cond_fc

    .line 654
    if-eqz v7, :cond_fc

    if-eqz v6, :cond_fc

    if-eqz v4, :cond_fc

    .line 655
    if-eqz v17, :cond_fc

    if-eqz v8, :cond_fc

    if-eqz v10, :cond_fc

    .line 656
    if-eqz v12, :cond_fc

    if-eqz v11, :cond_fc

    if-eqz v5, :cond_fc

    const/16 v16, 0x1

    .line 679
    .local v16, selected:Z
    :goto_f7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_e

    .line 656
    .end local v16           #selected:Z
    :cond_fc
    const/16 v16, 0x0

    goto :goto_f7

    .line 678
    .end local v4           #clobberSettingsKeyMatched:Z
    .end local v5           #countryCodeMatched:Z
    .end local v6           #f2KeyModeMatched:Z
    .end local v7           #hasSettingsKeyMatched:Z
    .end local v8           #hasShortcutKeyMatched:Z
    .end local v10           #imeActionMatched:Z
    .end local v11           #languageCodeMatched:Z
    .end local v12           #localeCodeMatched:Z
    .end local v13           #modeMatched:Z
    .end local v14           #navigateActionMatched:Z
    .end local v15           #passwordInputMatched:Z
    .end local v17           #shortcutKeyEnabledMatched:Z
    :catchall_ff
    move-exception v18

    .line 679
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 680
    throw v18
.end method

.method private parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .registers 5
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    if-nez p2, :cond_7

    .line 728
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 732
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_5
.end method

.method private parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 10
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    const/4 v5, 0x0

    .line 528
    if-eqz p3, :cond_9

    .line 529
    const-string v2, "include"

    invoke-static {v2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 544
    :goto_8
    return-void

    .line 531
    :cond_9
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 532
    sget-object v4, Linputmethod/latin/ported/R$styleable;->Keyboard_Include:[I

    .line 531
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 533
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 535
    .local v1, keyboardLayout:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 537
    const-string v2, "include"

    invoke-static {v2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 538
    if-nez v1, :cond_2b

    .line 539
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "No keyboardLayout attribute in <include/>"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2

    .line 542
    :cond_2b
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_8
.end method

.method private parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 4
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 519
    return-void
.end method

.method private parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 4
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 524
    return-void
.end method

.method private parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 10
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    if-eqz p3, :cond_8

    .line 493
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 502
    :goto_7
    return-void

    .line 495
    :cond_8
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V

    .line 499
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 500
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_7
.end method

.method private parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 8
    .parameter "parser"
    .parameter "skip"

    .prologue
    .line 736
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 737
    sget-object v4, Linputmethod/latin/ported/R$styleable;->Keyboard_KeyStyle:[I

    .line 736
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 738
    .local v1, keyStyleAttr:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 739
    sget-object v4, Linputmethod/latin/ported/R$styleable;->Keyboard_Key:[I

    .line 738
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 741
    .local v0, keyAttrs:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 742
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "<key-style/> needs styleName attribute"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_27

    .line 746
    :catchall_27
    move-exception v2

    .line 747
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 749
    throw v2

    .line 744
    :cond_2f
    if-nez p2, :cond_36

    .line 745
    :try_start_31
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_27

    .line 747
    :cond_36
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 750
    return-void
.end method

.method private parseKeyboard(I)V
    .registers 7
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 296
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 309
    :goto_d
    return-void

    .line 297
    :cond_e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 298
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 300
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 301
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startKeyboard()V

    .line 302
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_d

    .line 305
    :cond_28
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Keyboard"

    invoke-direct {v3, v1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .parameter "parser"

    .prologue
    .line 333
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 335
    .local v1, displayWidth:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    .line 336
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Linputmethod/latin/ported/R$styleable;->Keyboard:[I

    const/high16 v11, 0x7f01

    .line 337
    const v12, 0x7f0f0003

    .line 335
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 338
    .local v3, keyboardAttr:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 339
    sget-object v10, Linputmethod/latin/ported/R$styleable;->Keyboard_Key:[I

    .line 338
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 341
    .local v2, keyAttr:Landroid/content/res/TypedArray;
    :try_start_21
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 343
    .local v0, displayHeight:I
    const/4 v8, 0x2

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    .line 342
    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v4, v8

    .line 344
    .local v4, keyboardHeight:I
    sget v8, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardHeight:I

    mul-int/2addr v8, v4

    div-int/lit8 v4, v8, 0x64

    .line 346
    const/4 v8, 0x3

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    .line 345
    invoke-static {v3, v8, v0, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v5, v8

    .line 348
    .local v5, maxKeyboardHeight:I
    const/4 v8, 0x4

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    .line 347
    invoke-static {v3, v8, v0, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v6, v8

    .line 349
    .local v6, minKeyboardHeight:I
    if-gez v6, :cond_51

    .line 353
    const/4 v8, 0x4

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    .line 352
    invoke-static {v3, v8, v1, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    neg-int v6, v8

    .line 355
    :cond_51
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 360
    .local v7, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 359
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    .line 361
    iget-object v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v8, v8, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    .line 363
    const/4 v8, 0x5

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    .line 362
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    .line 365
    const/4 v8, 0x6

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    .line 364
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    .line 367
    const/4 v8, 0x7

    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v9, v9, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    const/4 v10, 0x0

    .line 366
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    .line 369
    iget v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 370
    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalCenterPadding:I

    sub-int/2addr v8, v9

    .line 369
    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    .line 372
    const/16 v8, 0x10

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    .line 373
    iget v10, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    div-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    .line 371
    invoke-static {v2, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    .line 375
    const/16 v8, 0x9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    const/4 v10, 0x0

    .line 374
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    .line 377
    const/16 v8, 0xa

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    .line 376
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    .line 378
    iget v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    sub-int/2addr v8, v9

    .line 379
    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    sub-int/2addr v8, v9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    add-int/2addr v8, v9

    .line 378
    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    .line 381
    const/16 v8, 0x8

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    .line 382
    iget v10, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    .line 380
    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    .line 385
    const/16 v8, 0xd

    const/4 v9, 0x0

    .line 384
    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    .line 387
    const/16 v8, 0xb

    const/4 v9, 0x0

    .line 386
    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    .line 389
    const/4 v8, 0x2

    const/4 v9, 0x5

    .line 388
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMiniKeyboardColumn:I

    .line 391
    iget-object v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v8, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->loadIcons(Landroid/content/res/TypedArray;)V
    :try_end_f6
    .catchall {:try_start_21 .. :try_end_f6} :catchall_fd

    .line 393
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    return-void

    .line 392
    .end local v0           #displayHeight:I
    .end local v4           #keyboardHeight:I
    .end local v5           #maxKeyboardHeight:I
    .end local v6           #minKeyboardHeight:I
    .end local v7           #params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    :catchall_fd
    move-exception v8

    .line 393
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 395
    throw v8
.end method

.method private parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 8
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 435
    :cond_7
    :goto_7
    return-void

    .line 402
    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_50

    .line 403
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 405
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    move-result-object v1

    .line 407
    .local v1, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    if-nez p2, :cond_20

    .line 408
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 409
    :cond_20
    invoke-direct {p0, p1, v1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 410
    .end local v1           #row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    :cond_24
    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 412
    :cond_30
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 414
    :cond_3c
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 417
    :cond_48
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 419
    .end local v2           #tag:Ljava/lang/String;
    :cond_50
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 422
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKeyboard()V

    goto :goto_7

    .line 424
    :cond_63
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 425
    const-string v3, "merge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 428
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method public static parseKeyboardLocale(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 314
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 315
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v2, :cond_35

    const-string v5, ""

    .line 329
    :goto_c
    return-object v5

    .line 318
    .local v0, event:I
    :cond_d
    const/4 v5, 0x2

    if-ne v0, v5, :cond_35

    .line 319
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, tag:Ljava/lang/String;
    const-string v5, "Keyboard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 321
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 322
    sget-object v6, Linputmethod/latin/ported/R$styleable;->Keyboard:[I

    .line 321
    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 323
    .local v1, keyboardAttr:Landroid/content/res/TypedArray;
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 325
    .end local v1           #keyboardAttr:Landroid/content/res/TypedArray;
    :cond_2d
    new-instance v5, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v6, "Keyboard"

    invoke-direct {v5, v2, v6}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5

    .line 317
    .end local v0           #event:I
    .end local v4           #tag:Ljava/lang/String;
    :cond_35
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .restart local v0       #event:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_d

    .line 329
    const-string v5, ""

    goto :goto_c
.end method

.method private parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 8
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 565
    :goto_7
    return-void

    .line 550
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, tag:Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 553
    if-nez p2, :cond_1d

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_7

    .line 556
    :cond_1d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_7

    .line 560
    :cond_21
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    .line 561
    const-string v3, "Included keyboard layout must have <merge> root element"

    .line 560
    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
.end method

.method private parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .registers 7
    .parameter "parser"

    .prologue
    .line 438
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 439
    sget-object v3, Linputmethod/latin/ported/R$styleable;->Keyboard:[I

    .line 438
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 441
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    :try_start_e
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 442
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v2, "horizontalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1c

    .line 446
    :catchall_1c
    move-exception v1

    .line 447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 448
    throw v1

    .line 443
    :cond_21
    const/16 v1, 0xa

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 444
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v2, "verticalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_31
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_1c

    .line 447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    return-object v1
.end method

.method private parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 8
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 488
    :cond_7
    :goto_7
    return-void

    .line 455
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_53

    .line 456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 458
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 459
    :cond_1b
    const-string v2, "Spacer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 461
    :cond_27
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 463
    :cond_33
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 465
    :cond_3f
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 466
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 468
    :cond_4b
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    .line 470
    .end local v1           #tag:Ljava/lang/String;
    :cond_53
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 472
    .restart local v1       #tag:Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 474
    if-nez p3, :cond_7

    .line 475
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    goto :goto_7

    .line 477
    :cond_68
    const-string v2, "case"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 478
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 481
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 10
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    if-eqz p3, :cond_8

    .line 507
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 514
    :goto_7
    return-void

    .line 509
    :cond_8
    new-instance v0, Lcom/android/inputmethod/keyboard/Key$Spacer;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V

    .line 511
    .local v0, spacer:Lcom/android/inputmethod/keyboard/Key$Spacer;
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_7
.end method

.method private parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 9
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    const/4 v4, 0x1

    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, selected:Z
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    if-ne v0, v4, :cond_9

    .line 602
    :cond_8
    return-void

    .line 583
    :cond_9
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    .line 584
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, tag:Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 586
    if-eqz v1, :cond_21

    move v3, v4

    :goto_1b
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_21
    move v3, p3

    goto :goto_1b

    .line 587
    :cond_23
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 588
    if-eqz v1, :cond_34

    move v3, v4

    :goto_2e
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_34
    move v3, p3

    goto :goto_2e

    .line 590
    :cond_36
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 592
    .end local v2           #tag:Ljava/lang/String;
    :cond_3e
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 593
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 594
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 598
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 4
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 570
    return-void
.end method

.method private parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 4
    .parameter "parser"
    .parameter
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 575
    return-void
.end method

.method private static setTouchPositionCorrectionData(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 9
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 255
    .line 256
    const/4 v3, 0x0

    sget-object v4, Linputmethod/latin/ported/R$styleable;->Keyboard:[I

    const/high16 v5, 0x7f01

    .line 255
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 257
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 259
    .local v2, resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    if-nez v2, :cond_26

    .line 261
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_33

    .line 262
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "touchPositionCorrectionData is not defined"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, data:[Ljava/lang/String;
    iget-object v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->load([Ljava/lang/String;)V

    .line 268
    .end local v1           #data:[Ljava/lang/String;
    :cond_33
    return-void
.end method

.method private startKeyboard()V
    .registers 3

    .prologue
    .line 760
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 762
    return-void
.end method

.method private startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 3
    .parameter

    .prologue
    .line 765
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p1, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 766
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 769
    return-void
.end method

.method private static stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 717
    array-length v3, p0

    move v2, v1

    :goto_3
    if-lt v2, v3, :cond_6

    .line 721
    :goto_5
    return v1

    .line 717
    :cond_6
    aget-object v0, p0, v2

    .line 718
    .local v0, elem:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 719
    const/4 v1, 0x1

    goto :goto_5

    .line 717
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static textAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "value"
    .parameter "name"

    .prologue
    .line 879
    if-eqz p0, :cond_12

    const-string v0, " %s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v0, ""

    goto :goto_11
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/Keyboard;
    .registers 3

    .prologue
    .line 289
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    new-instance v0, Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    return-object v0
.end method

.method public load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
    .registers 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            ")",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
            "<TKP;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iput-object p1, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 273
    :try_start_4
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->getXmlId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboard(I)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_27

    .line 281
    return-object p0

    .line 274
    :catch_c
    move-exception v0

    .line 275
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keyboard XML parse error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 277
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_27
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keyboard XML parse error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTouchPositionCorrectionEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 285
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->setEnabled(Z)V

    .line 286
    return-void
.end method
