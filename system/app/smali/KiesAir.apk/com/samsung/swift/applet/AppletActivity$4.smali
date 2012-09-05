.class Lcom/samsung/swift/applet/AppletActivity$4;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->setStopped(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$buttonEnabled:Z


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-boolean p2, p0, Lcom/samsung/swift/applet/AppletActivity$4;->val$buttonEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$400(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 879
    :cond_14
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    sget v1, Lcom/samsung/swift/R$string;->start:I

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonText(I)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->access$500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 881
    :cond_1b
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :cond_39
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 885
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 887
    :cond_54
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_8a

    .line 889
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->stopped:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 890
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 891
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 905
    :goto_80
    iget-boolean v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->val$buttonEnabled:Z

    if-eqz v0, :cond_b2

    .line 907
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->delayedEnableButton()V
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$600(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 913
    :goto_89
    return-void

    .line 896
    :cond_8a
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/security/SecurityManager;->cleanExpired(Z)V

    .line 902
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    goto :goto_80

    .line 911
    :cond_b2
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$4;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    goto :goto_89
.end method
