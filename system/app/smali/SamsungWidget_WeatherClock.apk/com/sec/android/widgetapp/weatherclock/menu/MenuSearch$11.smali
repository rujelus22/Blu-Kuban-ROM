.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;
.super Landroid/os/Handler;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const v2, -0x140b4

    .line 482
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 483
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    .line 485
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x13d30

    if-ne v0, v1, :cond_26

    .line 487
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 489
    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->sendEmptyMessageDelayed(IJ)Z

    .line 503
    :cond_25
    :goto_25
    return-void

    .line 493
    :cond_26
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_25

    .line 495
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9b

    if-ge v0, v1, :cond_25

    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    if-eqz v0, :cond_25

    .line 497
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v1, 0x7f090068

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 499
    const-string v0, ""

    const-string v1, "error - 111"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method
