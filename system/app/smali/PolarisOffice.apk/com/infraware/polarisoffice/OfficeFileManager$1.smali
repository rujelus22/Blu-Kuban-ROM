.class Lcom/infraware/polarisoffice/OfficeFileManager$1;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 796
    invoke-static {v5}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 798
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$0(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;

    .line 799
    .local v2, menu:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    packed-switch v3, :pswitch_data_ea

    .line 862
    :goto_18
    :pswitch_18
    return-void

    .line 807
    :pswitch_19
    const/4 v0, 0x1

    .line 808
    .local v0, contentType:I
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2d

    .line 809
    const/4 v0, 0x1

    .line 821
    :cond_21
    :goto_21
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$1(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationNew(ILjava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$2(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto :goto_18

    .line 810
    :cond_2d
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_35

    .line 811
    const/4 v0, 0x4

    goto :goto_21

    .line 812
    :cond_35
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_3d

    .line 813
    const/4 v0, 0x3

    goto :goto_21

    .line 814
    :cond_3d
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_45

    .line 815
    const/4 v0, 0x6

    goto :goto_21

    .line 816
    :cond_45
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x18

    if-ne v3, v4, :cond_4d

    .line 817
    const/4 v0, 0x2

    goto :goto_21

    .line 818
    :cond_4d
    iget v3, v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_21

    .line 819
    const/4 v0, 0x5

    goto :goto_21

    .line 824
    .end local v0           #contentType:I
    :pswitch_55
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-class v4, Lcom/infraware/filemanager/TemplateListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v4, 0x1010

    invoke-virtual {v3, v1, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_18

    .line 828
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_66
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v3

    if-eq v3, v5, :cond_85

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-static {v3}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 830
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v5, 0x7f080068

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_18

    .line 834
    :cond_85
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    new-instance v4, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;
    invoke-static {v3, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$4(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V

    .line 835
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$5(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->decideFolderName()Ljava/lang/String;
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$6(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$1(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->createFolderDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 838
    :pswitch_a9
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V
    invoke-static {v3, v5, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$7(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 841
    :pswitch_b2
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V
    invoke-static {v3, v6, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$7(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 844
    :pswitch_bb
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V
    invoke-static {v3, v7, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$7(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 847
    :pswitch_c4
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V
    invoke-static {v3, v8, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$7(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 850
    :pswitch_cd
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->sort(I)V
    invoke-static {v3, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$8(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto/16 :goto_18

    .line 853
    :pswitch_d4
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->sort(I)V
    invoke-static {v3, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$8(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto/16 :goto_18

    .line 856
    :pswitch_db
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->sort(I)V
    invoke-static {v3, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$8(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto/16 :goto_18

    .line 859
    :pswitch_e2
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$1;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->sort(I)V
    invoke-static {v3, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$8(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto/16 :goto_18

    .line 799
    nop

    :pswitch_data_ea
    .packed-switch 0x14
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_55
        :pswitch_66
        :pswitch_18
        :pswitch_18
        :pswitch_cd
        :pswitch_d4
        :pswitch_db
        :pswitch_e2
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_a9
        :pswitch_b2
        :pswitch_bb
        :pswitch_c4
    .end packed-switch
.end method
