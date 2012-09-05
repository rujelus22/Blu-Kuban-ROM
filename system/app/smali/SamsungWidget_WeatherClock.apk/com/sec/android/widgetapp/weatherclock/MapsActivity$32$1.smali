.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;
.super Landroid/os/Handler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;)V
    .registers 2
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2702(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 1825
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 1826
    return-void
.end method
