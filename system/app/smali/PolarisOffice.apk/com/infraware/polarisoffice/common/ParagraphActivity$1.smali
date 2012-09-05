.class Lcom/infraware/polarisoffice/common/ParagraphActivity$1;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 110
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

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$0(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 118
    :cond_26
    sparse-switch p2, :sswitch_data_60

    .line 138
    :goto_29
    return-void

    .line 120
    :sswitch_2a
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$1(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_29

    .line 124
    :sswitch_37
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v1, 0x2

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$1(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_29

    .line 128
    :sswitch_45
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I
    invoke-static {v0, v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$1(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_29

    .line 132
    :sswitch_52
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v1, 0x3

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$1(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    goto :goto_29

    .line 118
    :sswitch_data_60
    .sparse-switch
        0x7f0c015f -> :sswitch_2a
        0x7f0c0160 -> :sswitch_37
        0x7f0c0161 -> :sswitch_45
        0x7f0c017e -> :sswitch_52
    .end sparse-switch
.end method
