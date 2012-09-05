.class public Lcom/google/android/youtube/app/honeycomb/tablet/UploadActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/a;
    .registers 5
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/UploadActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 26
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/af;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/ae;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ae;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/af;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method
