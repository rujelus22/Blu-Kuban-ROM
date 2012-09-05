.class Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "OfficeFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field private mIsRtol:Z

.field private m_nMenuId:I

.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "menuId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2518
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2512
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    .line 2505
    iput-boolean v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->mIsRtol:Z

    .line 2507
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 2508
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 2509
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 2510
    new-array v2, v6, [I

    fill-array-data v2, :array_42

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 2513
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    .line 2514
    iput p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_nMenuId:I

    .line 2515
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->mIsRtol:Z

    .line 2517
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->initializeList()V

    return-void

    .line 2510
    :array_42
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;)I
    .registers 2
    .parameter

    .prologue
    .line 2504
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_nMenuId:I

    return v0
.end method

.method private initializeList()V
    .registers 12

    .prologue
    const v10, 0x7f0800d6

    const v9, 0x7f0200dc

    const v7, 0x7f0200cf

    const v8, 0x7f0200c7

    const/4 v6, -0x1

    .line 2667
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2668
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_nMenuId:I

    sparse-switch v0, :sswitch_data_2f0

    .line 2716
    :cond_17
    :goto_17
    return-void

    .line 2671
    :sswitch_18
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "- FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_141

    .line 2673
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5, v10}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " (97-2003)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x15

    const v4, 0x7f0200b0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v6, v10}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " (2007)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v6, 0x7f0800d7

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " (97-2003)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x17

    const v4, 0x7f0200df

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v7, 0x7f0800d7

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " (2007)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v6, 0x7f0800d8

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " (97-2003)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x19

    const v4, 0x7f0200ca

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " (2007)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1b

    const v4, 0x7f0200b8

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v6, 0x7f0800da

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 2684
    :cond_141
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v4, v10}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x16

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800d7

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800d8

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getCurPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2688
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1b

    const v4, 0x7f0200b8

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v6, 0x7f0800da

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 2692
    :sswitch_1b3
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x28

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800e4

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x29

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800e5

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x2a

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800e6

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x2b

    const v4, 0x7f0200c4

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v6, 0x7f0800e7

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 2698
    :sswitch_214
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "- FV09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_289

    .line 2699
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f080286

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f080285

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_270

    .line 2702
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f080287

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    :cond_270
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x21

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f080288

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 2706
    :cond_289
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800de

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800df

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2708
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d7

    .line 2709
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2710
    :cond_2d7
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x21

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 2668
    :sswitch_data_2f0
    .sparse-switch
        0x0 -> :sswitch_18
        0x3 -> :sswitch_214
        0x9 -> :sswitch_1b3
    .end sparse-switch
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 2528
    const/4 v0, 0x0

    .line 2530
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 2535
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2547
    if-nez p2, :cond_8e

    .line 2549
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030014

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2551
    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;)V

    .line 2552
    .local v1, holder:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;
    const v6, 0x7f0c0071

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    .line 2553
    const v6, 0x7f0c0070

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    .line 2554
    const v6, 0x7f0c0072

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    .line 2556
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2561
    :goto_36
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/infraware/common/util/Utils;->GetSystemFontSize(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2563
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2564
    .local v4, osVer:Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 2565
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2566
    :cond_56
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV03"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6b

    .line 2567
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2569
    :cond_6b
    const v6, 0x7f0c006f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2570
    .local v0, content:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2571
    .local v2, margin:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2573
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    .line 2574
    .local v3, menu:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;
    iget v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_nMenuId:I

    sparse-switch v6, :sswitch_data_1cc

    .line 2660
    :goto_8a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2662
    return-object p2

    .line 2559
    .end local v0           #content:Landroid/widget/LinearLayout;
    .end local v1           #holder:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;
    .end local v2           #margin:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #menu:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;
    .end local v4           #osVer:Ljava/lang/String;
    :cond_8e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;
    goto :goto_36

    .line 2577
    .restart local v0       #content:Landroid/widget/LinearLayout;
    .restart local v2       #margin:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3       #menu:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;
    .restart local v4       #osVer:Ljava/lang/String;
    :sswitch_95
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_strName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2578
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    iget v7, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2580
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2581
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2583
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8a

    .line 2586
    :sswitch_b7
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_strName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2587
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    iget v7, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2589
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2590
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2592
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8a

    .line 2595
    :sswitch_d9
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_strName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2596
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2598
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV09"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_122

    .line 2600
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f020266

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2601
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2609
    :goto_102
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$20(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v6, v7}, Lcom/infraware/common/config/RuntimeConfig;->getSortField(Landroid/content/Context;)I

    move-result v5

    .line 2610
    .local v5, sortField:I
    packed-switch v5, :pswitch_data_1da

    .line 2650
    :cond_111
    :goto_111
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    iget-boolean v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->mIsRtol:Z

    if-eqz v6, :cond_1c5

    .line 2653
    const/16 v6, 0x4b

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_8a

    .line 2605
    .end local v5           #sortField:I
    :cond_122
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f02009d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2606
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_102

    .line 2613
    .restart local v5       #sortField:I
    :pswitch_131
    iget v6, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_111

    .line 2615
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV09"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_14e

    .line 2616
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f020267

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_111

    .line 2618
    :cond_14e
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_111

    .line 2622
    :pswitch_155
    iget v6, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_111

    .line 2624
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV09"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_172

    .line 2625
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f020267

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_111

    .line 2627
    :cond_172
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_111

    .line 2631
    :pswitch_179
    iget v6, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_111

    .line 2633
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV09"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_197

    .line 2634
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f020267

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_111

    .line 2636
    :cond_197
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_111

    .line 2640
    :pswitch_19f
    iget v6, v3, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v7, 0x21

    if-ne v6, v7, :cond_111

    .line 2642
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV09"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1bd

    .line 2643
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const v7, 0x7f020267

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_111

    .line 2645
    :cond_1bd
    iget-object v6, v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->m_imgStat:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_111

    .line 2656
    :cond_1c5
    const/16 v6, 0x4b

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8a

    .line 2574
    nop

    :sswitch_data_1cc
    .sparse-switch
        0x0 -> :sswitch_95
        0x3 -> :sswitch_d9
        0x9 -> :sswitch_b7
    .end sparse-switch

    .line 2610
    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_131
        :pswitch_155
        :pswitch_179
        :pswitch_19f
    .end packed-switch
.end method
