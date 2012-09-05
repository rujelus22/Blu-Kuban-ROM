.class Lcom/samsung/swift/applet/AppletActivity$1$1;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/applet/AppletActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$1$1;->this$1:Lcom/samsung/swift/applet/AppletActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 446
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v0

    .line 447
    .local v0, connections:[Lcom/samsung/swift/security/Connection;
    array-length v1, v0

    if-eqz v1, :cond_13

    .line 448
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$1$1;->this$1:Lcom/samsung/swift/applet/AppletActivity$1;

    iget-object v1, v1, Lcom/samsung/swift/applet/AppletActivity$1;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 449
    :cond_13
    return-void
.end method
