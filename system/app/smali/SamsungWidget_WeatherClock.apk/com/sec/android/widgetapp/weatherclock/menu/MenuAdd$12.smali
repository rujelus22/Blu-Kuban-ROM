.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;
.super Landroid/os/Handler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const v2, -0x140b4

    .line 590
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 591
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    .line 593
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x13d30

    if-ne v0, v1, :cond_26

    .line 595
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 597
    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->sendEmptyMessageDelayed(IJ)Z

    .line 613
    :cond_25
    :goto_25
    return-void

    .line 601
    :cond_26
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_25

    .line 604
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 605
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 607
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 608
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v1, 0x7f090068

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_25
.end method
