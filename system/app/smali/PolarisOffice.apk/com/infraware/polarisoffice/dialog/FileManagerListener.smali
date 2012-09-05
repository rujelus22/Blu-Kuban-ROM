.class public Lcom/infraware/polarisoffice/dialog/FileManagerListener;
.super Ljava/lang/Object;
.source "FileManagerListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final CREATE:I = 0x1

.field static final RENAME:I = 0x2


# instance fields
.field private m_oImm:Landroid/view/inputmethod/InputMethodManager;

.field private m_oItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oParent:Landroid/app/Activity;

.field private m_oView:Landroid/view/View;

.field private m_strValue:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;ILjava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "parent"
    .parameter "item"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oView:Landroid/view/View;

    .line 23
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->type:I

    .line 28
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 34
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oView:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    .line 36
    iput p4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->type:I

    .line 37
    iput-object p3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 38
    iput-object p5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_strValue:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_27

    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 42
    :cond_27
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "v"
    .parameter "id"

    .prologue
    const v8, 0x7f0c017f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 45
    invoke-static {v7}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, editText:Landroid/widget/EditText;
    iget v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->type:I

    packed-switch v4, :pswitch_data_9a

    .line 101
    :cond_f
    :goto_f
    if-eqz v0, :cond_1a

    .line 102
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 103
    :cond_1a
    return-void

    .line 50
    :pswitch_1b
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #editText:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 51
    .restart local v0       #editText:Landroid/widget/EditText;
    if-ne p2, v5, :cond_f

    .line 52
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, prompt:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    instance-of v4, v4, Lcom/infraware/polarisoffice/OfficeFileManager;

    if-eqz v4, :cond_3f

    .line 56
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 57
    .local v1, parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onConfirmCreateFolder(Ljava/lang/String;)V

    goto :goto_f

    .line 59
    .end local v1           #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    :cond_3f
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    instance-of v4, v4, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    if-eqz v4, :cond_f

    .line 61
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    .line 62
    .local v1, parent:Lcom/infraware/polarisoffice/common/FileSelectActivity;
    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onConfirmCreateFolder(Ljava/lang/String;)V

    goto :goto_f

    .line 68
    .end local v1           #parent:Lcom/infraware/polarisoffice/common/FileSelectActivity;
    .end local v2           #prompt:Ljava/lang/String;
    :pswitch_4d
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #editText:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 69
    .restart local v0       #editText:Landroid/widget/EditText;
    if-ne p2, v5, :cond_f

    .line 70
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, strValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 73
    .local v1, parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v1, v4, v3, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->onConfirmRename(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;Z)V

    goto :goto_f

    .line 77
    .end local v1           #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    .end local v3           #strValue:Ljava/lang/String;
    :pswitch_6d
    if-ne p2, v5, :cond_f

    .line 78
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 79
    .restart local v1       #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_strValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->onConfirmRename(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;Z)V

    goto :goto_f

    .line 83
    .end local v1           #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    :pswitch_7b
    if-ne p2, v5, :cond_f

    .line 84
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 85
    .restart local v1       #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onConfirmDelete()V

    goto :goto_f

    .line 89
    .end local v1           #parent:Lcom/infraware/polarisoffice/OfficeFileManager;
    :pswitch_85
    if-ne p2, v5, :cond_f

    .line 90
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/recent/RecentFileActivity;

    .line 91
    .local v1, parent:Lcom/infraware/polarisoffice/recent/RecentFileActivity;
    invoke-virtual {v1}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onClearHistory()V

    goto :goto_f

    .line 95
    .end local v1           #parent:Lcom/infraware/polarisoffice/recent/RecentFileActivity;
    :pswitch_8f
    if-ne p2, v5, :cond_f

    .line 96
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;->m_oParent:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;

    .line 97
    .local v1, parent:Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;
    invoke-virtual {v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onDeleteFavorite()V

    goto/16 :goto_f

    .line 48
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_4d
        :pswitch_4d
        :pswitch_6d
        :pswitch_7b
        :pswitch_85
        :pswitch_8f
    .end packed-switch
.end method
