.class public Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "PunchFullScreenFragment.java"


# instance fields
.field private a:LNy;

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LNU;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;-><init>()V

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 77
    return-void
.end method

.method private p()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Landroid/widget/PopupWindow;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNU;

    invoke-interface {v0}, LNU;->a()LNy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LNy;->a(Z)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()V

    .line 42
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->p()V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LNy;->a(Z)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNU;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    invoke-interface {v0, v1}, LNU;->a(LNy;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LNy;

    .line 54
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->h()V

    .line 55
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->p()V

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()V

    .line 63
    return-void
.end method
