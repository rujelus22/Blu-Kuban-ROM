.class Lcom/samsung/swift/applet/AppletActivity$7;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->setInitializing()V
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
    .line 1013
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$400(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1017
    :cond_13
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    sget v1, Lcom/samsung/swift/R$string;->start:I

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonText(I)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->access$500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 1019
    :cond_1a
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_38
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1023
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1025
    :cond_53
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_73

    .line 1027
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->initializing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1040
    :goto_6d
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 1041
    return-void

    .line 1032
    :cond_73
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$7;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    goto :goto_6d
.end method