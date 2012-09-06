.class public Lcom/google/android/apps/docs/fragment/ErrorFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "ErrorFragment.java"


# instance fields
.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/docs/fragment/ErrorFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/ErrorFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v2, "errorResId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    sget v0, LcU;->document_opener_activity_error:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v2, LcS;->error_message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a:LXJ;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, LXJ;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->retry_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method
