.class Lcom/infraware/polarisoffice/common/FillBordersActivity$5;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyle:I

    .line 193
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$1(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iput p2, v0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 196
    packed-switch p2, :pswitch_data_40

    .line 207
    :goto_1a
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 208
    return-void

    .line 198
    :pswitch_1e
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->setSelectedStyle(B)V

    goto :goto_1a

    .line 201
    :pswitch_29
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->setSelectedStyle(B)V

    goto :goto_1a

    .line 204
    :pswitch_34
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->setSelectedStyle(B)V

    goto :goto_1a

    .line 196
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_29
        :pswitch_34
    .end packed-switch
.end method
