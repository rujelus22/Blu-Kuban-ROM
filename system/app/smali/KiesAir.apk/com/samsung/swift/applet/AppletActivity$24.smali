.class Lcom/samsung/swift/applet/AppletActivity$24;
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
    .line 1766
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$24;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$24;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->DISMISS_START_NETWORK_EVENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1770
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1771
    return-void
.end method
