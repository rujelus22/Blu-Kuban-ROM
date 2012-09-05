.class Lcom/infraware/polarisoffice/common/ShapeActivity$3;
.super Ljava/lang/Object;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ShapeActivity;->onLeftArrowDialog()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$4(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V

    .line 255
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$5(Lcom/infraware/polarisoffice/common/ShapeActivity;)Lcom/infraware/polarisoffice/common/ImgSelButton;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$6(Lcom/infraware/polarisoffice/common/ShapeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setCurrentIdx(I)V

    .line 257
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 258
    return-void
.end method
