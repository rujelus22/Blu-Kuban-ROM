.class Lcom/infraware/polarisoffice/common/ParagraphActivity$2;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 139
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

    .line 142
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 145
    packed-switch p2, :pswitch_data_2e

    .line 157
    :goto_13
    return-void

    .line 147
    :pswitch_14
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$2(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_13

    .line 151
    :pswitch_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I
    invoke-static {v0, v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$2(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_13

    .line 145
    :pswitch_data_2e
    .packed-switch 0x7f0c0164
        :pswitch_14
        :pswitch_21
    .end packed-switch
.end method
