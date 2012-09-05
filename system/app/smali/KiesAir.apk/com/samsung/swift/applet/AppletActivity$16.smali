.class Lcom/samsung/swift/applet/AppletActivity$16;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$choices:[Ljava/lang/CharSequence;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;I[Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$16;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput p2, p0, Lcom/samsung/swift/applet/AppletActivity$16;->val$dialogId:I

    iput-object p3, p0, Lcom/samsung/swift/applet/AppletActivity$16;->val$choices:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1625
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity$16;->val$dialogId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_23

    .line 1628
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$16;->val$choices:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$16;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1643
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1f
    :goto_1f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1644
    return-void

    .line 1635
    :cond_23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1638
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_CHOSEN_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1639
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$16;->val$choices:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$16;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1f
.end method
