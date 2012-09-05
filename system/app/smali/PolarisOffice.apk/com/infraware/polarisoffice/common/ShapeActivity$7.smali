.class Lcom/infraware/polarisoffice/common/ShapeActivity$7;
.super Ljava/lang/Object;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ShapeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyle:I

    .line 535
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$11(Lcom/infraware/polarisoffice/common/ShapeActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$12(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V

    .line 537
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$7;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$13(Lcom/infraware/polarisoffice/common/ShapeActivity;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    #setter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$14(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 540
    return-void
.end method
