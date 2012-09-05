.class public Lcom/vlingo/client/social/api/TwitterDialog;
.super Landroid/app/Dialog;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/TwitterDialog$1;,
        Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F = null

.field static final DIMENSIONS_PORTRAIT:[F = null

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2

.field static final TW_BLUE:I = -0x2f0f06


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 39
    new-array v0, v2, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_LANDSCAPE:[F

    .line 40
    new-array v0, v2, [F

    fill-array-data v0, :array_20

    sput-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_PORTRAIT:[F

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 39
    :array_18
    .array-data 0x4
        0x0t 0x0t 0xe6t 0x43t
        0x0t 0x0t 0x82t 0x43t
    .end array-data

    .line 40
    :array_20
    .array-data 0x4
        0x0t 0x0t 0x8ct 0x43t
        0x0t 0x0t 0xd2t 0x43t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/social/api/TwitterDialogListener;)V
    .registers 4
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p2, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/api/TwitterDialog;->requestWindowFeature(I)Z

    .line 152
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const v2, -0x2f0f06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 158
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 160
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method private setUpWebView()V
    .registers 4

    .prologue
    .line 165
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    .line 166
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;-><init>(Lcom/vlingo/client/social/api/TwitterDialog;Lcom/vlingo/client/social/api/TwitterDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 167
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/vlingo/client/social/api/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private setupView()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f00

    .line 122
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 123
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .local v2, scale:F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3f

    sget-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_PORTRAIT:[F

    .line 126
    .local v0, dimensions:[F
    :goto_28
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/vlingo/client/social/api/TwitterDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void

    .line 124
    .end local v0           #dimensions:[F
    :cond_3f
    sget-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_28
.end method


# virtual methods
.method public dismissDialogs()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    :cond_11
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 101
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->dismiss()V

    .line 103
    :cond_1a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;

    invoke-interface {v0}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onCancel()V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-direct {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->setUpTitle()V

    .line 87
    invoke-direct {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->setUpWebView()V

    .line 88
    invoke-direct {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->setupView()V

    .line 89
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 62
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 63
    :cond_8
    const/4 v0, 0x1

    .line 65
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 72
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 73
    :cond_8
    const/4 v0, 0x1

    .line 75
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public showDialogs()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 111
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 114
    :cond_11
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 115
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->show()V

    .line 117
    :cond_1a
    return-void
.end method

.method public updateView()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f00

    .line 136
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 137
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 138
    .local v2, scale:F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3f

    sget-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_PORTRAIT:[F

    .line 140
    .local v0, dimensions:[F
    :goto_28
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void

    .line 138
    .end local v0           #dimensions:[F
    :cond_3f
    sget-object v0, Lcom/vlingo/client/social/api/TwitterDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_28
.end method
