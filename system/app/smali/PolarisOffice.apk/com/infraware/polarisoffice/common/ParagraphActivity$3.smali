.class Lcom/infraware/polarisoffice/common/ParagraphActivity$3;
.super Ljava/lang/Object;
.source "ParagraphActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ParagraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 165
    packed-switch p2, :pswitch_data_44

    .line 176
    :pswitch_1a
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v1, 0x5

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$3(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    .line 177
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 180
    :goto_27
    return-void

    .line 167
    :pswitch_28
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v1, 0x4

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$3(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_27

    .line 171
    :pswitch_36
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v1, 0x6

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$3(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_27

    .line 165
    :pswitch_data_44
    .packed-switch 0x7f0c0167
        :pswitch_28
        :pswitch_1a
        :pswitch_36
    .end packed-switch
.end method
