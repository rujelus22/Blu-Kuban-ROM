.class public Lcom/android/browser/BookmarkWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "BookmarkWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 5
    .parameter "intent"

    .prologue
    .line 67
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, appWidgetId:I
    if-gez v0, :cond_12

    .line 69
    const-string v1, "BookmarkWidgetService"

    const-string v2, "Missing EXTRA_APPWIDGET_ID!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    .line 72
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;

    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;-><init>(Landroid/content/Context;I)V

    goto :goto_11
.end method
