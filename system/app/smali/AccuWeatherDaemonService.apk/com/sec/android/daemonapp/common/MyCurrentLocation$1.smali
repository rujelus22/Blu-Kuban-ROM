.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$1;
.super Landroid/os/Handler;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$1;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 206
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$1;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    invoke-virtual {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getPassiveLocation()V

    .line 208
    :cond_b
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 209
    return-void
.end method
