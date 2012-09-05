.class public Lcom/swype/android/widget/NavigationBar;
.super Landroid/widget/RelativeLayout;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/NavigationBar$GlowCanvas;,
        Lcom/swype/android/widget/NavigationBar$TouchListener;
    }
.end annotation


# static fields
.field private static final BUTTON_BACKGROUND:Ljava/lang/String; = "textbutton"

.field private static final LAYOUT_BACKGROUND:Ljava/lang/String; = "background"


# instance fields
.field btnLayout:Landroid/widget/LinearLayout;

.field glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

.field handler:Landroid/os/Handler;

.field inputMethod:Lcom/swype/android/inputmethod/SwypeInputMethod;


# direct methods
.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Landroid/content/Context;)V
    .registers 4
    .parameter "inputMethod"
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    .line 44
    invoke-direct {p0, p1}, Lcom/swype/android/widget/NavigationBar;->init(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "inputMethod"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    .line 39
    invoke-direct {p0, p1}, Lcom/swype/android/widget/NavigationBar;->init(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "inputMethod"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0, p1}, Lcom/swype/android/widget/NavigationBar;->init(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/widget/NavigationBar;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/swype/android/widget/NavigationBar;->completeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private completeAssetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "asset"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->getActiveDisplayFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 48
    iput-object p1, p0, Lcom/swype/android/widget/NavigationBar;->inputMethod:Lcom/swype/android/inputmethod/SwypeInputMethod;

    .line 50
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/NavigationBar;->addView(Landroid/view/View;)V

    .line 59
    new-instance v0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;-><init>(Lcom/swype/android/widget/NavigationBar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar;->glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar;->glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar;->glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/NavigationBar;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "background"

    invoke-direct {p0, v1}, Lcom/swype/android/widget/NavigationBar;->completeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_81

    .line 70
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_81
    return-void
.end method


# virtual methods
.method public addCommand(Landroid/view/View;I)V
    .registers 10
    .parameter "view"
    .parameter "vkc"

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "textbutton"

    invoke-direct {p0, v3}, Lcom/swype/android/widget/NavigationBar;->completeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_17
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 96
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p1, v4, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    new-instance v2, Lcom/swype/android/widget/NavigationBar$TouchListener;

    invoke-direct {v2, p0, p2}, Lcom/swype/android/widget/NavigationBar$TouchListener;-><init>(Lcom/swype/android/widget/NavigationBar;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar;->btnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public addCommand(Ljava/lang/String;I)V
    .registers 5
    .parameter "title"
    .parameter "vkc"

    .prologue
    .line 75
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, v0, p2}, Lcom/swype/android/widget/NavigationBar;->addCommand(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public addCommandWithImage(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/swype/android/widget/NavigationBar;->completeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0, v1, p2}, Lcom/swype/android/widget/NavigationBar;->addCommand(Landroid/view/View;I)V

    .line 85
    return-void
.end method
