.class Lcom/samsung/swift/applet/AppletActivity$19;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$19;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$19;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$19$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$19$1;-><init>(Lcom/samsung/swift/applet/AppletActivity$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1705
    return-void
.end method
