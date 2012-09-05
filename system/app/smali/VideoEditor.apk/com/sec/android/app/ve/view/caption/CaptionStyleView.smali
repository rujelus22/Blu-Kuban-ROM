.class public Lcom/sec/android/app/ve/view/caption/CaptionStyleView;
.super Landroid/widget/LinearLayout;
.source "CaptionStyleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;,
        Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

.field public static tfTypeface:[Landroid/graphics/Typeface;


# instance fields
.field private TextBackColor:[I

.field private TextStyles:[Ljava/lang/String;

.field private intStyle:[I

.field private mCaptionGrid:Landroid/widget/GridView;

.field private mCaptionStylesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptionStyleview:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Typeface;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 37
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 38
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 39
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Style #1"

    aput-object v1, v0, v5

    .line 42
    const-string v1, "Style #2"

    aput-object v1, v0, v3

    .line 43
    const-string v1, "Style #3"

    aput-object v1, v0, v4

    .line 44
    const-string v1, "Style #4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 45
    const-string v2, "Style #5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 46
    const-string v2, "Style #6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 47
    const-string v2, "Style #7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 48
    const-string v2, "Style #8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 49
    const-string v2, "Style #9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 50
    const-string v2, "Style #10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextStyles:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextBackColor:[I

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v3, v0, v5

    .line 63
    aput v6, v0, v3

    .line 64
    aput v4, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->intStyle:[I

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    .line 71
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->buildCationStyleGrid()V

    .line 73
    return-void

    .line 51
    :array_60
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x88t 0x88t 0x88t 0xfft
        0x44t 0x44t 0x44t 0xfft
        0xcct 0xcct 0xcct 0xfft
        0xfft 0xfft 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Style #1"

    aput-object v1, v0, v5

    .line 42
    const-string v1, "Style #2"

    aput-object v1, v0, v3

    .line 43
    const-string v1, "Style #3"

    aput-object v1, v0, v4

    .line 44
    const-string v1, "Style #4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 45
    const-string v2, "Style #5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 46
    const-string v2, "Style #6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 47
    const-string v2, "Style #7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 48
    const-string v2, "Style #8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 49
    const-string v2, "Style #9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 50
    const-string v2, "Style #10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextStyles:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextBackColor:[I

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v3, v0, v5

    .line 63
    aput v6, v0, v3

    .line 64
    aput v4, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->intStyle:[I

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    .line 78
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->buildCationStyleGrid()V

    .line 80
    return-void

    .line 51
    :array_60
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x88t 0x88t 0x88t 0xfft
        0x44t 0x44t 0x44t 0xfft
        0xcct 0xcct 0xcct 0xfft
        0xfft 0xfft 0x0t 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextStyles:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/caption/CaptionStyleView;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    return-object v0
.end method

.method static getTypeFace(I)Landroid/graphics/Typeface;
    .registers 2
    .parameter "typeface"

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_16

    .line 101
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_5
    return-object v0

    .line 89
    :pswitch_6
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_5

    .line 91
    :pswitch_9
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_5

    .line 93
    :pswitch_c
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_5

    .line 95
    :pswitch_f
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    .line 97
    :pswitch_12
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    .line 87
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method static getTypeFaceInt(Landroid/graphics/Typeface;)I
    .registers 3
    .parameter "typeface"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 111
    :cond_6
    return v0

    .line 108
    :cond_7
    sget-object v1, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    aget-object v1, v1, v0

    if-eq p0, v1, :cond_6

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method buildCationStyleGrid()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 115
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    iput-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStyleview:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    sget-object v3, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    array-length v3, v3

    if-lt v0, v3, :cond_8d

    .line 125
    const/4 v0, 0x0

    :goto_2a
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->intStyle:[I

    array-length v3, v3

    if-lt v0, v3, :cond_a9

    .line 132
    new-instance v3, Landroid/widget/GridView;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x190

    const/16 v6, 0xd2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .local v2, p:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x28

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 139
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 140
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 141
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 144
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;

    iget-object v5, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStyleview:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->addView(Landroid/view/View;)V

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$1;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    return-void

    .line 120
    .end local v2           #p:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8d
    new-instance v1, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)V

    .line 121
    .local v1, mCp:Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
    sget-object v3, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->setTf(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->intStyle:[I

    aget v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->setmTextStyle(I)V

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_24

    .line 127
    .end local v1           #mCp:Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
    :cond_a9
    new-instance v1, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)V

    .line 128
    .restart local v1       #mCp:Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
    sget-object v3, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->tfTypeface:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->setTf(Landroid/graphics/Typeface;)V

    .line 129
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->intStyle:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->setmTextStyle(I)V

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a
.end method
