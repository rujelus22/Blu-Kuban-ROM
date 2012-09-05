.class Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;
.super Landroid/database/ContentObserver;
.source "AppletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/applet/AppletActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEngineContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    .line 2059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2060
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 2064
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->updateMotionEngineSetting()V
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$3500(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 2071
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2072
    return-void
.end method
