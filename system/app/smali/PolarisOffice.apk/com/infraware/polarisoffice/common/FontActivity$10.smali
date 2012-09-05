.class Lcom/infraware/polarisoffice/common/FontActivity$10;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$10;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$10;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPosition:I

    .line 891
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$10;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity$10;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$10;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    .line 893
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 894
    return-void
.end method
