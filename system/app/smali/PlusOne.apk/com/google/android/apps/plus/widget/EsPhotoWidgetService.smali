.class public Lcom/google/android/apps/plus/widget/EsPhotoWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "EsPhotoWidgetService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4
    .parameter "intent"

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsPhotoWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
