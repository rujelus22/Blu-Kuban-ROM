.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$1;
.super Landroid/os/Handler;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 209
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->getPassiveLocation()V

    .line 211
    :cond_b
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method
