.class final Lcom/dropbox/android/widget/CustomTabView/c;
.super Lcom/dropbox/android/widget/ViewButton;
.source "panda.py"


# instance fields
.field protected final a:Lcom/dropbox/android/widget/CustomTabView/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/widget/CustomTabView/e;Lcom/dropbox/android/widget/CustomTabView/a;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/widget/ViewButton;-><init>(Landroid/content/Context;Z)V

    .line 22
    iput-object p3, p0, Lcom/dropbox/android/widget/CustomTabView/c;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    .line 24
    new-instance v0, Lcom/dropbox/android/widget/CustomTabView/d;

    invoke-direct {v0, p0, p2}, Lcom/dropbox/android/widget/CustomTabView/d;-><init>(Lcom/dropbox/android/widget/CustomTabView/c;Lcom/dropbox/android/widget/CustomTabView/e;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v1, p0, Lcom/dropbox/android/widget/CustomTabView/c;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/CustomTabView/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/c;->addView(Landroid/view/View;)V

    .line 38
    const/4 v0, 0x7

    .line 39
    const/16 v1, 0x3c

    .line 40
    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 41
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 42
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 43
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    const/16 v0, 0x50

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/CustomTabView/c;->addView(Landroid/view/View;)V

    .line 50
    return-void
.end method


# virtual methods
.method final a()Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/c;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    return-object v0
.end method
