.class Lcom/samsung/swift/applet/AppletActivity$14;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->showRestartNetwork(ZLjava/lang/String;Lcom/samsung/swift/service/network/NetworkInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-boolean p2, p0, Lcom/samsung/swift/applet/AppletActivity$14;->val$show:Z

    iput-object p3, p0, Lcom/samsung/swift/applet/AppletActivity$14;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1517
    iget-boolean v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->val$show:Z

    if-eqz v0, :cond_39

    .line 1519
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->restart_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity$14;->val$name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1528
    :goto_38
    return-void

    .line 1525
    :cond_39
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$14;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_38
.end method
