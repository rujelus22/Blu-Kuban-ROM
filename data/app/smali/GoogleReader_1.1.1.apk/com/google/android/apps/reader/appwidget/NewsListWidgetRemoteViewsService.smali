.class public final Lcom/google/android/apps/reader/appwidget/NewsListWidgetRemoteViewsService;
.super Landroid/widget/RemoteViewsService;
.source "NewsListWidgetRemoteViewsService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 5
    .parameter "intent"

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;

    const v1, 0x7f030045

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    return-object v0
.end method
