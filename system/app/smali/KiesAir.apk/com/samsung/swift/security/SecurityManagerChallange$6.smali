.class Lcom/samsung/swift/security/SecurityManagerChallange$6;
.super Ljava/lang/Object;
.source "SecurityManagerChallange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityManagerChallange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityManagerChallange;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V
    .registers 2
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$6;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$6;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #getter for: Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$600(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 530
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$6;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #getter for: Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$700(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 531
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$6;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #getter for: Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$400(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$6;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #getter for: Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$800(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    return-void
.end method
