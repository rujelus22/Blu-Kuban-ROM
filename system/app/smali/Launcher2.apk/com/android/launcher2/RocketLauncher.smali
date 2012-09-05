.class public Lcom/android/launcher2/RocketLauncher;
.super Landroid/app/Activity;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/RocketLauncher$Board;
    }
.end annotation


# static fields
.field public static final ROCKET_LAUNCHER:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 6

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 400
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 401
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/launcher2/RocketLauncher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 402
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_3c

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 405
    .local v1, longside:I
    :goto_1b
    new-instance v0, Lcom/android/launcher2/RocketLauncher$Board;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/launcher2/RocketLauncher$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 406
    .local v0, b:Lcom/android/launcher2/RocketLauncher$Board;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/RocketLauncher;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/RocketLauncher$Board;->setX(F)V

    .line 408
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/RocketLauncher$Board;->setY(F)V

    .line 409
    return-void

    .line 402
    .end local v0           #b:Lcom/android/launcher2/RocketLauncher$Board;
    .end local v1           #longside:I
    :cond_3c
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1b
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method
