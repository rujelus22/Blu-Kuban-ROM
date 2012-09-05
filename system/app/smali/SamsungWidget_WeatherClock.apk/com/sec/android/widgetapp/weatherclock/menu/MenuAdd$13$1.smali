.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;)V
    .registers 2
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x61a7

    .line 727
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 730
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 731
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    const-string v1, "mapweather"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 733
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->point:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->point:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v1, "tempscale"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string v1, "launcher"

    const/16 v2, -0x5208

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string v1, "flags"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 740
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->startActivityForResult(Landroid/content/Intent;I)V

    .line 742
    :cond_77
    return-void
.end method
