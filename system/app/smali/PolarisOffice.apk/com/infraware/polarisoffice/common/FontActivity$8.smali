.class Lcom/infraware/polarisoffice/common/FontActivity$8;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FontActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FontActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnFace:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    .line 843
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity$8;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Face:Ljava/lang/String;

    .line 844
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 845
    return-void
.end method
