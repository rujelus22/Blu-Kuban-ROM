.class Lcom/samsung/swift/applet/AppletActivity$3;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->setRunning()V
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
    .line 847
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 850
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_1b

    .line 852
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->running:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 853
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    :cond_1b
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$400(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 857
    :cond_2b
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    sget v1, Lcom/samsung/swift/R$string;->stop:I

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonText(I)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->access$500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 859
    :cond_32
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$3;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->delayedEnableButton()V
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$600(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 860
    return-void
.end method
