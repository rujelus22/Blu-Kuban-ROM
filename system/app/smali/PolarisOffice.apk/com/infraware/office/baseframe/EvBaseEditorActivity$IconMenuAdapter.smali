.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "EvBaseEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field private m_nMenuId:I

.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Landroid/content/Context;I)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "menuId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3502
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3496
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    .line 3491
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 3492
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 3493
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 3494
    new-array v2, v6, [I

    fill-array-data v2, :array_36

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 3498
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    .line 3499
    iput p3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_nMenuId:I

    .line 3501
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->initializeList()V

    return-void

    .line 3494
    :array_36
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method

.method private initializeList()V
    .registers 13

    .prologue
    const v11, 0x7f0801a6

    const v7, 0x7f080185

    const v10, 0x7f080117

    const/4 v9, 0x1

    const v8, 0x7f0801a1

    .line 3599
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowDisableMenuItem()Z

    move-result v0

    .line 3600
    .local v0, bShowDisableItem:Z
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v1

    .line 3601
    .local v1, docType:I
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3602
    iget v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_nMenuId:I

    sparse-switch v2, :sswitch_data_96a

    .line 3770
    :cond_21
    :goto_21
    return-void

    .line 3605
    :sswitch_22
    if-nez v0, :cond_2a

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSave:Z

    if-eqz v2, :cond_44

    .line 3606
    :cond_2a
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08021a

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSave:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3607
    :cond_44
    if-nez v0, :cond_4c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSaveAs:Z

    if-eqz v2, :cond_21

    .line 3608
    :cond_4c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v6, 0x7f080218

    invoke-virtual {v5, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v6, v6, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSaveAs:Z

    invoke-direct {v3, v4, v9, v5, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 3611
    :sswitch_66
    if-eq v1, v9, :cond_6c

    const/16 v2, 0x13

    if-ne v1, v2, :cond_8f

    .line 3612
    :cond_6c
    if-nez v0, :cond_74

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewSlide:Z

    if-eqz v2, :cond_8f

    .line 3613
    :cond_74
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801ba

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewSlide:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    :cond_8f
    const/4 v2, 0x2

    if-eq v1, v2, :cond_96

    const/16 v2, 0x12

    if-ne v1, v2, :cond_b9

    .line 3615
    :cond_96
    if-nez v0, :cond_9e

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    if-eqz v2, :cond_b9

    .line 3616
    :cond_9e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b9

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    :cond_b9
    if-nez v0, :cond_c1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewZoom:Z

    if-eqz v2, :cond_dc

    .line 3618
    :cond_c1
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801f3

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewZoom:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    :cond_dc
    const/4 v2, 0x2

    if-eq v1, v2, :cond_e3

    const/16 v2, 0x12

    if-ne v1, v2, :cond_106

    .line 3620
    :cond_e3
    if-nez v0, :cond_eb

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    if-eqz v2, :cond_106

    .line 3621
    :cond_eb
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08019a

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3622
    :cond_106
    if-eq v1, v9, :cond_10c

    const/16 v2, 0x13

    if-ne v1, v2, :cond_12f

    .line 3623
    :cond_10c
    if-nez v0, :cond_114

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewMode:Z

    if-eqz v2, :cond_12f

    .line 3624
    :cond_114
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080235

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewMode:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3625
    :cond_12f
    if-nez v0, :cond_137

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewFind:Z

    if-eqz v2, :cond_152

    .line 3626
    :cond_137
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08013b

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewFind:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3627
    :cond_152
    if-nez v0, :cond_15a

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReplace:Z

    if-eqz v2, :cond_21

    .line 3628
    :cond_15a
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08018d

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReplace:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3631
    :sswitch_177
    if-nez v0, :cond_17f

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertImage:Z

    if-eqz v2, :cond_19a

    .line 3632
    :cond_17f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertImage:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3633
    :cond_19a
    if-nez v0, :cond_1a2

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertCamera:Z

    if-eqz v2, :cond_1bd

    .line 3634
    :cond_1a2
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x15

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08023f

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertCamera:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3635
    :cond_1bd
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isSMemoExist()Z
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$10(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_1e8

    .line 3636
    if-nez v0, :cond_1cd

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertSMemo:Z

    if-eqz v2, :cond_1e8

    .line 3637
    :cond_1cd
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x1a

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080240

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertSMemo:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3639
    :cond_1e8
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v2}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_213

    .line 3640
    if-nez v0, :cond_1f8

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertFreedraw:Z

    if-eqz v2, :cond_213

    .line 3641
    :cond_1f8
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x1b

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801a4

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertFreedraw:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3643
    :cond_213
    if-nez v0, :cond_21b

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertShape:Z

    if-eqz v2, :cond_233

    .line 3644
    :cond_21b
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x16

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertShape:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3645
    :cond_233
    if-nez v0, :cond_23b

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertHyperLink:Z

    if-eqz v2, :cond_256

    .line 3646
    :cond_23b
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x17

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b4

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertHyperLink:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3647
    :cond_256
    if-nez v0, :cond_25e

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertBookmark:Z

    if-eqz v2, :cond_279

    .line 3648
    :cond_25e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x18

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080187

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertBookmark:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3649
    :cond_279
    if-nez v0, :cond_281

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertTable:Z

    if-eqz v2, :cond_21

    .line 3650
    :cond_281
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x19

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08019d

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertTable:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3653
    :sswitch_29e
    if-nez v0, :cond_2a6

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFont:Z

    if-eqz v2, :cond_2be

    .line 3654
    :cond_2a6
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x1e

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFont:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3655
    :cond_2be
    if-nez v0, :cond_2c6

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatParagraph:Z

    if-eqz v2, :cond_2e1

    .line 3656
    :cond_2c6
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080186

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatParagraph:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3657
    :cond_2e1
    if-nez v0, :cond_2e9

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatBullets:Z

    if-eqz v2, :cond_304

    .line 3658
    :cond_2e9
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x20

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatBullets:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3662
    :cond_304
    if-nez v0, :cond_30c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatShape:Z

    if-eqz v2, :cond_324

    .line 3663
    :cond_30c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x22

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatShape:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    :cond_324
    if-nez v0, :cond_32c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatInsert:Z

    if-eqz v2, :cond_347

    .line 3665
    :cond_32c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x23

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatInsert:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3666
    :cond_347
    if-nez v0, :cond_34f

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatDelete:Z

    if-eqz v2, :cond_367

    .line 3667
    :cond_34f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x24

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatDelete:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3668
    :cond_367
    if-nez v0, :cond_36f

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSelect:Z

    if-eqz v2, :cond_38a

    .line 3669
    :cond_36f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x25

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSelect:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3670
    :cond_38a
    if-nez v0, :cond_392

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatMerge:Z

    if-eqz v2, :cond_3aa

    .line 3671
    :cond_392
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x26

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatMerge:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    :cond_3aa
    if-nez v0, :cond_3b2

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSplit:Z

    if-eqz v2, :cond_3cd

    .line 3673
    :cond_3b2
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x27

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSplit:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3674
    :cond_3cd
    if-nez v0, :cond_3d5

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFills:Z

    if-eqz v2, :cond_21

    .line 3675
    :cond_3d5
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x28

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801ac

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFills:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3678
    :sswitch_3f2
    if-nez v0, :cond_3fa

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSlide:Z

    if-eqz v2, :cond_415

    .line 3679
    :cond_3fa
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x32

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801d8

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSlide:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3680
    :cond_415
    if-nez v0, :cond_41d

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCopy:Z

    if-eqz v2, :cond_438

    .line 3681
    :cond_41d
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x33

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08019e

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCopy:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3682
    :cond_438
    if-nez v0, :cond_440

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertImage:Z

    if-eqz v2, :cond_45b

    .line 3683
    :cond_440
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x34

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertImage:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3684
    :cond_45b
    if-nez v0, :cond_463

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCamera:Z

    if-eqz v2, :cond_47e

    .line 3685
    :cond_463
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x35

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08023f

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCamera:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    :cond_47e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isSMemoExist()Z
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$10(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_4a9

    .line 3687
    if-nez v0, :cond_48e

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSMemo:Z

    if-eqz v2, :cond_4a9

    .line 3688
    :cond_48e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x39

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080240

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSMemo:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3690
    :cond_4a9
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v2}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4d4

    .line 3691
    if-nez v0, :cond_4b9

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertFreedraw:Z

    if-eqz v2, :cond_4d4

    .line 3692
    :cond_4b9
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x3a

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801a4

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertFreedraw:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3694
    :cond_4d4
    if-nez v0, :cond_4dc

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertShape:Z

    if-eqz v2, :cond_4f4

    .line 3695
    :cond_4dc
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x36

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertShape:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3696
    :cond_4f4
    if-nez v0, :cond_4fc

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTextBox:Z

    if-eqz v2, :cond_517

    .line 3697
    :cond_4fc
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x37

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801a0

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTextBox:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3698
    :cond_517
    if-nez v0, :cond_51f

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTable:Z

    if-eqz v2, :cond_21

    .line 3699
    :cond_51f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x38

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08019d

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTable:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3702
    :sswitch_53c
    if-nez v0, :cond_544

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFont:Z

    if-eqz v2, :cond_55c

    .line 3703
    :cond_544
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x3c

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFont:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3704
    :cond_55c
    if-nez v0, :cond_564

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatParagraph:Z

    if-eqz v2, :cond_57f

    .line 3705
    :cond_564
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x3d

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080186

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatParagraph:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3706
    :cond_57f
    if-nez v0, :cond_587

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatBullets:Z

    if-eqz v2, :cond_5a2

    .line 3707
    :cond_587
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x3e

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatBullets:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3708
    :cond_5a2
    if-nez v0, :cond_5aa

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatShape:Z

    if-eqz v2, :cond_5c2

    .line 3709
    :cond_5aa
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x3f

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatShape:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3710
    :cond_5c2
    if-nez v0, :cond_5ca

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatInsert:Z

    if-eqz v2, :cond_5e5

    .line 3711
    :cond_5ca
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x40

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatInsert:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    :cond_5e5
    if-nez v0, :cond_5ed

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatDelete:Z

    if-eqz v2, :cond_605

    .line 3713
    :cond_5ed
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x41

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatDelete:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    :cond_605
    if-nez v0, :cond_60d

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSelect:Z

    if-eqz v2, :cond_628

    .line 3715
    :cond_60d
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x42

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSelect:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3716
    :cond_628
    if-nez v0, :cond_630

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatMerge:Z

    if-eqz v2, :cond_648

    .line 3717
    :cond_630
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x43

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatMerge:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    :cond_648
    if-nez v0, :cond_650

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSplit:Z

    if-eqz v2, :cond_66b

    .line 3719
    :cond_650
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x44

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSplit:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3720
    :cond_66b
    if-nez v0, :cond_673

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFills:Z

    if-eqz v2, :cond_21

    .line 3721
    :cond_673
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x45

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801ac

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFills:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3724
    :sswitch_690
    if-nez v0, :cond_698

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertCells:Z

    if-eqz v2, :cond_6b3

    .line 3725
    :cond_698
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x46

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080124

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertCells:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3726
    :cond_6b3
    if-nez v0, :cond_6bb

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertRows:Z

    if-eqz v2, :cond_6d6

    .line 3727
    :cond_6bb
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x47

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080125

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertRows:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3728
    :cond_6d6
    if-nez v0, :cond_6de

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertColumns:Z

    if-eqz v2, :cond_6f9

    .line 3729
    :cond_6de
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x48

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080141

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertColumns:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3730
    :cond_6f9
    if-nez v0, :cond_701

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertSheet:Z

    if-eqz v2, :cond_71c

    .line 3731
    :cond_701
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x49

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801ad

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertSheet:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3732
    :cond_71c
    if-nez v0, :cond_724

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertChart:Z

    if-eqz v2, :cond_73f

    .line 3733
    :cond_724
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x4a

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080126

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertChart:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3734
    :cond_73f
    if-nez v0, :cond_747

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertFunction:Z

    if-eqz v2, :cond_21

    .line 3735
    :cond_747
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x4b

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801a8

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertFunction:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3738
    :sswitch_764
    if-nez v0, :cond_76c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFont:Z

    if-eqz v2, :cond_784

    .line 3739
    :cond_76c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x50

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFont:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3740
    :cond_784
    if-nez v0, :cond_78c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAlignment:Z

    if-eqz v2, :cond_7a7

    .line 3741
    :cond_78c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x51

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801a9

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAlignment:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    :cond_7a7
    if-nez v0, :cond_7af

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatNumbers:Z

    if-eqz v2, :cond_7ca

    .line 3743
    :cond_7af
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x52

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080147

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatNumbers:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3744
    :cond_7ca
    if-nez v0, :cond_7d2

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFills:Z

    if-eqz v2, :cond_7ed

    .line 3745
    :cond_7d2
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x53

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f0801ac

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFills:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3746
    :cond_7ed
    if-nez v0, :cond_7f5

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHeight:Z

    if-eqz v2, :cond_810

    .line 3747
    :cond_7f5
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x54

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080127

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHeight:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3748
    :cond_810
    if-nez v0, :cond_818

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoHeight:Z

    if-eqz v2, :cond_833

    .line 3749
    :cond_818
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x55

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080223

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoHeight:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3750
    :cond_833
    if-nez v0, :cond_83b

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideRows:Z

    if-eqz v2, :cond_856

    .line 3751
    :cond_83b
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x56

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080128

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideRows:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3752
    :cond_856
    if-nez v0, :cond_85e

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowRows:Z

    if-eqz v2, :cond_879

    .line 3753
    :cond_85e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x57

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080129

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowRows:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    :cond_879
    if-nez v0, :cond_881

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatWidth:Z

    if-eqz v2, :cond_89c

    .line 3755
    :cond_881
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x58

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08012a

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatWidth:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3756
    :cond_89c
    if-nez v0, :cond_8a4

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoWidth:Z

    if-eqz v2, :cond_8bf

    .line 3757
    :cond_8a4
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x59

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080224

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoWidth:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3758
    :cond_8bf
    if-nez v0, :cond_8c7

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideCols:Z

    if-eqz v2, :cond_8e2

    .line 3759
    :cond_8c7
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x5a

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08012b

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideCols:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3760
    :cond_8e2
    if-nez v0, :cond_8ea

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowCols:Z

    if-eqz v2, :cond_905

    .line 3761
    :cond_8ea
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x5b

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowCols:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3762
    :cond_905
    if-nez v0, :cond_90d

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatClear:Z

    if-eqz v2, :cond_928

    .line 3763
    :cond_90d
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x5c

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const v7, 0x7f080123

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatClear:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    :cond_928
    if-nez v0, :cond_930

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatDelete:Z

    if-eqz v2, :cond_948

    .line 3765
    :cond_930
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x5d

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatDelete:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3766
    :cond_948
    if-nez v0, :cond_950

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatMerge:Z

    if-eqz v2, :cond_21

    .line 3767
    :cond_950
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v5, 0x5e

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v6, v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v7, v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatMerge:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 3602
    :sswitch_data_96a
    .sparse-switch
        0x7f0c0315 -> :sswitch_22
        0x7f0c0317 -> :sswitch_66
        0x7f0c0318 -> :sswitch_3f2
        0x7f0c0319 -> :sswitch_53c
        0x7f0c0320 -> :sswitch_690
        0x7f0c0321 -> :sswitch_764
        0x7f0c0336 -> :sswitch_177
        0x7f0c0337 -> :sswitch_29e
    .end sparse-switch
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 3514
    :try_start_1
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 3519
    :goto_9
    return-object v1

    .line 3517
    :cond_a
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_9

    .line 3518
    :catch_11
    move-exception v0

    .line 3519
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 3526
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 3540
    if-nez p2, :cond_91

    .line 3542
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3544
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;

    invoke-direct {v0, p0, v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;)V

    .line 3545
    .local v0, holder:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;
    const v4, 0x7f0c0071

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    .line 3546
    const v4, 0x7f0c0070

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    .line 3547
    const v4, 0x7f0c0072

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    .line 3549
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3554
    :goto_38
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/common/util/Utils;->GetSystemFontSize(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3556
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    .line 3557
    .local v2, menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3558
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3559
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3560
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3562
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v4, v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    .line 3563
    .local v1, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v4, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    sparse-switch v4, :sswitch_data_ee

    .line 3577
    :cond_73
    :goto_73
    iget-boolean v4, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    if-eqz v4, :cond_e1

    .line 3578
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$9(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "- FV03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c8

    .line 3579
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3588
    :goto_8c
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 3594
    :goto_90
    return-object p2

    .line 3552
    .end local v0           #holder:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;
    .end local v1           #info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .end local v2           #menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    :cond_91
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;
    goto :goto_38

    .line 3566
    .restart local v1       #info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .restart local v2       #menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    :sswitch_98
    iget v4, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->bContinuousMode:I

    if-nez v4, :cond_a5

    .line 3567
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const v5, 0x7f0801bc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_73

    .line 3569
    :cond_a5
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const v5, 0x7f080235

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_73

    .line 3572
    :sswitch_ae
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v4, v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v4, v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_73

    .line 3573
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v5, v5, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_73

    .line 3582
    :cond_c8
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3583
    .local v3, osVer:Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d9

    .line 3584
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8c

    .line 3586
    :cond_d9
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8c

    .line 3590
    .end local v3           #osVer:Ljava/lang/String;
    :cond_e1
    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3591
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_90

    .line 3563
    nop

    :sswitch_data_ee
    .sparse-switch
        0xd -> :sswitch_98
        0x5e -> :sswitch_ae
    .end sparse-switch
.end method
