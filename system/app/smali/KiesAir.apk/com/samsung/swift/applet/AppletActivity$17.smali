.class Lcom/samsung/swift/applet/AppletActivity$17;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$17;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput p2, p0, Lcom/samsung/swift/applet/AppletActivity$17;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1653
    const/4 v1, 0x4

    if-ne p2, v1, :cond_14

    .line 1655
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$17;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1657
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity$17;->val$dialogId:I

    if-nez v1, :cond_15

    .line 1658
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$17;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->dismissDialog(I)V

    .line 1662
    :goto_13
    const/4 v0, 0x1

    .line 1665
    :cond_14
    return v0

    .line 1660
    :cond_15
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$17;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->dismissDialog(I)V

    goto :goto_13
.end method
