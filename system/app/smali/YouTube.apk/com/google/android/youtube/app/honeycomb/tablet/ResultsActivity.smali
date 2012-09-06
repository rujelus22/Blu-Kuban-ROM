.class public Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
    .registers 6
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 38
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ab;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->b(Z)V

    .line 33
    return-void
.end method
