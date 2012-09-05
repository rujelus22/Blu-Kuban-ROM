.class Lcom/samsung/swift/install/InstallActivity$5;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/install/InstallActivity;->update(ILjava/lang/String;S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/install/InstallActivity;

.field final synthetic val$progress:S


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity;S)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    iput-short p2, p0, Lcom/samsung/swift/install/InstallActivity$5;->val$progress:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    #getter for: Lcom/samsung/swift/install/InstallActivity;->installStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->access$000(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    #getter for: Lcom/samsung/swift/install/InstallActivity;->installStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->access$000(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->downloading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    #getter for: Lcom/samsung/swift/install/InstallActivity;->installProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->access$100(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-short v1, p0, Lcom/samsung/swift/install/InstallActivity$5;->val$progress:S

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    #getter for: Lcom/samsung/swift/install/InstallActivity;->installProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->access$100(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$5;->this$0:Lcom/samsung/swift/install/InstallActivity;

    #getter for: Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->access$200(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    return-void
.end method
