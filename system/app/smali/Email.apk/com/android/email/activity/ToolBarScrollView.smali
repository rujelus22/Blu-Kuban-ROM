.class public Lcom/android/email/activity/ToolBarScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ToolBarScrollView$ItemView;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;,
        Lcom/android/email/activity/ToolBarScrollView$Gesture;,
        Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;
    }
.end annotation


# instance fields
.field private FontSize:I

.field public FontSizeDialog:Landroid/app/AlertDialog;

.field private currentState:I

.field private mActivity:Landroid/app/Activity;

.field public mBtnBold:Landroid/widget/ImageButton;

.field public mBtnFontsize:Landroid/widget/ImageButton;

.field public mBtnInsert:Landroid/widget/ImageButton;

.field public mBtnItalic:Landroid/widget/ImageButton;

.field public mBtnRedo:Landroid/widget/ImageButton;

.field public mBtnSpellCheck:Landroid/widget/ImageButton;

.field public mBtnUndo:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private final mFont:[I

.field public mFontBgColorLayout:Landroid/widget/LinearLayout;

.field public mFontBgColorPreview:Landroid/widget/LinearLayout;

.field public mFontColorLayout:Landroid/widget/LinearLayout;

.field public mFontColorPreview:Landroid/widget/LinearLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIsInterceptionTrue:Z

.field private mList:Landroid/widget/ListView;

.field private mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

.field private testResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;)V
    .registers 8
    .parameter "context"
    .parameter "activity"
    .parameter "l"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    .line 65
    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 67
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 68
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFont:[I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mDensity:F

    .line 88
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    .line 90
    iput-object p3, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    .line 92
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setSmoothScrollingEnabled(Z)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setScrollbarFadingEnabled(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 99
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/email/activity/ToolBarScrollView$Gesture;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/ToolBarScrollView$Gesture;-><init>(Lcom/android/email/activity/ToolBarScrollView;Lcom/android/email/activity/ToolBarScrollView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 101
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->init()V

    .line 102
    return-void

    .line 76
    nop

    :array_44
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/email/activity/ToolBarScrollView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/ToolBarScrollView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFont:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/ToolBarScrollView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mDensity:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/ToolBarScrollView;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private createDialog(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_1c

    .line 575
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 561
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->showColorPickerDialog()V

    goto :goto_3

    .line 567
    :pswitch_10
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->showBgColorPickerDialog()V

    goto :goto_3

    .line 559
    :pswitch_data_1c
    .packed-switch 0x7f100281
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_10
    .end packed-switch
.end method

.method private createFontsizeDialog()V
    .registers 11

    .prologue
    .line 356
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;>;"
    const/16 v8, 0x9

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "9pt"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "10pt"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "12pt"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "14pt"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string v9, "16pt"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "20pt"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "24pt"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "28pt"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "36pt"

    aput-object v9, v6, v8

    .line 362
    .local v6, mFontSize:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkit/HtmlComposerView;->getCurrentFontValue()I

    move-result v2

    .line 364
    .local v2, currentFontSize:I
    const/4 v3, 0x0

    .line 366
    .local v3, currentpos:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3f
    array-length v8, v6

    if-ge v4, v8, :cond_62

    .line 367
    new-instance v1, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;

    aget-object v8, v6, v4

    invoke-direct {v1, v8}, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, contact:Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    if-nez v2, :cond_52

    .line 370
    const/4 v3, 0x2

    .line 366
    :cond_4f
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 371
    :cond_52
    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mFont:[I

    aget v8, v8, v4

    int-to-float v8, v8

    iget v9, p0, Lcom/android/email/activity/ToolBarScrollView;->mDensity:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-ne v8, v2, :cond_4f

    .line 373
    move v3, v4

    goto :goto_4f

    .line 376
    .end local v1           #contact:Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;
    :cond_62
    new-instance v7, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v9, 0x7f040069

    invoke-direct {v7, p0, v8, v9, v5}, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;-><init>(Lcom/android/email/activity/ToolBarScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 380
    .local v7, mFontSizeAdapter:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0801f3

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 383
    new-instance v8, Lcom/android/email/activity/ToolBarScrollView$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/ToolBarScrollView$1;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v0, v7, v3, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v9, 0x7f080043

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSizeDialog:Landroid/app/AlertDialog;

    .line 396
    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;

    .line 397
    iget-object v8, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 398
    return-void
.end method

.method private init()V
    .registers 10

    .prologue
    const/4 v8, -0x2

    const v7, 0x3f19999a

    const/4 v6, 0x0

    .line 119
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400b8

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, v:Landroid/view/View;
    const v4, 0x7f10027a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    .line 124
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 125
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 126
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 128
    const v4, 0x7f10027c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    .line 129
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 131
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 133
    const v4, 0x7f10027d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    .line 134
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 136
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 139
    const v4, 0x7f10027e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    .line 140
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 141
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 142
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 144
    const v4, 0x7f10027f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    .line 145
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 147
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 149
    const v4, 0x7f100280

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    .line 150
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 151
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 152
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 160
    const v4, 0x7f100281

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    .line 161
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 162
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 163
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 164
    const v4, 0x7f100283

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    .line 166
    const v4, 0x7f100284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    .line 168
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 169
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 170
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 171
    const v4, 0x7f100286

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    .line 172
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 175
    const v4, 0x7f100287

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    .line 176
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 178
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v4, :cond_144

    .line 188
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_144
    const-string v4, "VZW_LTE"

    invoke-static {v4}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_155

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v4, :cond_155

    .line 192
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    :cond_155
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x13

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/ToolBarScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .local v2, metric:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mDensity:F

    .line 211
    return-void
.end method


# virtual methods
.method public SetEASIconDisplay(Z)V
    .registers 2
    .parameter "Show"

    .prologue
    .line 619
    if-eqz p1, :cond_2

    .line 628
    :cond_2
    return-void
.end method

.method public changeSpellcheckBtnState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 632
    return-void
.end method

.method public changeToolBarState(I)V
    .registers 7
    .parameter "state"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f19999a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 582
    const/16 v0, 0xf

    if-le p1, v0, :cond_c

    .line 616
    :goto_b
    return-void

    .line 586
    :cond_c
    iput p1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 588
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 589
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 595
    :goto_20
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 596
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 603
    :goto_32
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_64

    .line 604
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 609
    :goto_3d
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6a

    .line 610
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 615
    :goto_48
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto :goto_b

    .line 592
    :cond_4e
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_20

    .line 599
    :cond_59
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_32

    .line 606
    :cond_64
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_3d

    .line 612
    :cond_6a
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_48
.end method

.method public getToolBarState()I
    .registers 2

    .prologue
    .line 578
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const v2, 0x3f19999a

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 332
    :goto_e
    :pswitch_e
    iget v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 333
    return-void

    .line 272
    :pswitch_14
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 273
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 274
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 275
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_e

    .line 278
    :cond_34
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_e

    .line 284
    :pswitch_3f
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 285
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 286
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 287
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_e

    .line 290
    :cond_5f
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_e

    .line 296
    :pswitch_6a
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->createFontsizeDialog()V

    goto :goto_e

    .line 300
    :pswitch_6e
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->onComposerInsert()V

    goto :goto_e

    .line 304
    :pswitch_76
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleBold()V

    .line 305
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto :goto_e

    .line 309
    :pswitch_84
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleItalic()V

    .line 310
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto/16 :goto_e

    .line 314
    :pswitch_93
    const v1, 0x7f100281

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_e

    .line 318
    :pswitch_9b
    const v1, 0x7f100284

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_e

    .line 322
    :pswitch_a3
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/MessageCompose;

    .line 324
    .local v0, composeView:Lcom/android/email/activity/MessageCompose;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheck()Z

    .line 326
    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto/16 :goto_e

    .line 270
    nop

    :pswitch_data_b2
    .packed-switch 0x7f10027a
        :pswitch_14
        :pswitch_e
        :pswitch_3f
        :pswitch_6e
        :pswitch_6a
        :pswitch_76
        :pswitch_84
        :pswitch_93
        :pswitch_e
        :pswitch_e
        :pswitch_9b
        :pswitch_e
        :pswitch_e
        :pswitch_a3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    if-nez v0, :cond_c

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    .line 246
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 215
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 217
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    if-nez v2, :cond_8

    .line 224
    :goto_7
    return-void

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 221
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    .line 223
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    goto :goto_7
.end method

.method protected onScrollChanged(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 230
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 231
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    .line 233
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    .line 235
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 106
    return-void
.end method
