.class Lcom/samsung/swift/applet/AppletActivity$6;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->setWaitingNetwork(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$isHotspot:Z


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-boolean p2, p0, Lcom/samsung/swift/applet/AppletActivity$6;->val$isHotspot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 967
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$400(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 968
    :cond_11
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    sget v2, Lcom/samsung/swift/R$string;->cancel_button:I

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonText(I)V
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 970
    :cond_18
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    :cond_36
    sget-boolean v1, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v1, :cond_57

    .line 975
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->waiting_for_network:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 976
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    :goto_50
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v2, 0x1

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 1002
    return-void

    .line 982
    :cond_57
    iget-boolean v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->val$isHotspot:Z

    if-eqz v1, :cond_b1

    .line 984
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v1

    const-string v2, "help_in_waiting_mobile_ap"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 986
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->cancel_button:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 993
    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$6;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v1, v3}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    goto :goto_50

    .line 990
    .end local v0           #message:Ljava/lang/String;
    :cond_b1
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v1

    const-string v2, "help_in_waiting_wifi"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_84
.end method
