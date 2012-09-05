.class Lcom/sec/android/widgetapp/dualclock/WCCities$5;
.super Landroid/os/Handler;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$5;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$5;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/dualclock/WCCities;->LastTapToast:Z

    .line 660
    return-void
.end method
