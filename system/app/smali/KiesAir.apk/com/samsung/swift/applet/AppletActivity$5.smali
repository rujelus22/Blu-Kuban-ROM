.class Lcom/samsung/swift/applet/AppletActivity$5;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->setRestartServer()V
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
    .line 925
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 928
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 931
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 935
    :cond_34
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_54

    .line 937
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->restartServer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 938
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    :goto_4e
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 951
    return-void

    .line 942
    :cond_54
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$5;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    goto :goto_4e
.end method
