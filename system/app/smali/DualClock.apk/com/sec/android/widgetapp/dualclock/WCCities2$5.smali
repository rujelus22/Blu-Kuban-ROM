.class Lcom/sec/android/widgetapp/dualclock/WCCities2$5;
.super Landroid/os/Handler;
.source "WCCities2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 2
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$5;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 633
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 635
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$5;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->LastTapToast:Z

    .line 637
    return-void
.end method
