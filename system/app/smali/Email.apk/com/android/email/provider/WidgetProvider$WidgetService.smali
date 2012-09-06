.class public Lcom/android/email/provider/WidgetProvider$WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 106
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/widget/WidgetManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 89
    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, widgetId:I
    if-ne v0, v2, :cond_b

    const/4 v1, 0x0

    .line 92
    :goto_a
    return-object v1

    :cond_b
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;

    move-result-object v1

    goto :goto_a
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 99
    invoke-static {p0, p1}, Lcom/android/email/widget/EmailWidget;->processIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 101
    :cond_9
    const/4 v0, 0x2

    return v0
.end method
