.class Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;
.super Ljava/lang/Object;
.source "FreeDrawToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/FreeDrawToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const v3, 0x7f0c00e4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_15e

    .line 162
    :goto_d
    :pswitch_d
    return-void

    .line 82
    :pswitch_e
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 83
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto :goto_d

    .line 86
    :pswitch_19
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isSelected()Z

    move-result v0

    if-nez v0, :cond_49

    .line 87
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_2e

    .line 88
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0, v2}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenModeSetting(I)V

    .line 89
    :cond_2e
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->togglePenButton(I)V

    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->onModeBtnChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 92
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 95
    :cond_49
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 96
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto :goto_d

    .line 99
    :pswitch_54
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isSelected()Z

    move-result v0

    if-nez v0, :cond_84

    .line 100
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_69

    .line 101
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0, v4}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenModeSetting(I)V

    .line 102
    :cond_69
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v4}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->togglePenButton(I)V

    .line 103
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v4}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->onModeBtnChanged(I)V

    .line 104
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_84

    .line 105
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 108
    :cond_84
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto/16 :goto_d

    .line 112
    :pswitch_90
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_a1

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 115
    :cond_a1
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    instance-of v0, v0, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    if-eqz v0, :cond_bd

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 126
    :goto_b6
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto/16 :goto_d

    .line 119
    :cond_bd
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 120
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V

    goto :goto_b6

    .line 123
    :cond_c8
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 124
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V

    goto :goto_b6

    .line 129
    :pswitch_d3
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_e4

    .line 130
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 132
    :cond_e4
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 133
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    instance-of v0, v0, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    if-eqz v0, :cond_105

    .line 134
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 135
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V

    .line 143
    :goto_fe
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto/16 :goto_d

    .line 138
    :cond_105
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    goto :goto_fe

    .line 140
    :cond_10b
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 141
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V

    goto :goto_fe

    .line 146
    :pswitch_116
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_127

    .line 147
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    .line 149
    :cond_127
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_134

    .line 150
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onEraseAll()V

    .line 151
    :cond_134
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto/16 :goto_d

    .line 154
    :pswitch_13b
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_148

    .line 155
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenModeSetting(I)V

    .line 156
    :cond_148
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->togglePenButton(I)V

    .line 158
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->onModeBtnChanged(I)V

    .line 159
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    goto/16 :goto_d

    .line 77
    :pswitch_data_15e
    .packed-switch 0x7f0c00e5
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_54
        :pswitch_116
        :pswitch_d
        :pswitch_13b
        :pswitch_d
        :pswitch_90
        :pswitch_d3
    .end packed-switch
.end method
