.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;
.super Landroid/os/Handler;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 526
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_e0

    .line 575
    :cond_7
    :goto_7
    return-void

    .line 528
    :pswitch_8
    const-string v6, "MiniModeAppsPanel"

    const-string v7, "handleMessage MESSAGE_FOCUS_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 531
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_2f

    .line 533
    .local v3, isPortrait:Z
    :goto_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 535
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-nez v0, :cond_31

    .line 536
    const-string v5, "MiniModeAppsPanel"

    const-string v6, "handleMessage : findComponentDescriptionByName return NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #isPortrait:Z
    :cond_2f
    move v3, v5

    .line 531
    goto :goto_21

    .line 541
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .restart local v3       #isPortrait:Z
    :cond_31
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_7

    .line 545
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #isPortrait:Z
    :pswitch_35
    const-string v6, "MiniModeAppsPanel"

    const-string v7, "handleMessage MESSAGE_APP_ICON_LONG_PRESS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 547
    .local v2, iconView:Landroid/view/View;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: iconView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz v2, :cond_7

    .line 550
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : iconView.getTag()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 553
    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 559
    .end local v2           #iconView:Landroid/view/View;
    :pswitch_83
    const-string v6, "MiniModeAppsPanel"

    const-string v7, "handleMessage MESSAGE_APP_PREVIEW_LONG_PRESS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 561
    .local v4, previewView:Landroid/view/View;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: previewView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz v4, :cond_7

    .line 564
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : previewView.getTag()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 567
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 568
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v6

    if-nez v6, :cond_7

    .line 569
    invoke-virtual {v4, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_7

    .line 526
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_35
        :pswitch_83
    .end packed-switch
.end method
