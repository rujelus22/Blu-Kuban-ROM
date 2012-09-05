.class Lcom/samsung/swift/applet/AppletActivity$15;
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
    .line 1596
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$15;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput p2, p0, Lcom/samsung/swift/applet/AppletActivity$15;->val$dialogId:I

    iput-object p3, p0, Lcom/samsung/swift/applet/AppletActivity$15;->val$choices:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 1598
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity$15;->val$dialogId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_21

    .line 1601
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$15;->val$choices:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$15;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1615
    .end local v0           #intent:Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void

    .line 1608
    :cond_21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1611
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_CHOSEN_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$15;->val$choices:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$15;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_20
.end method
