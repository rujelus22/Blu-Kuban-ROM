.class public Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;
.super Ljava/lang/Object;
.source "FileManagerTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private m_oDialog:Landroid/app/AlertDialog;

.field private m_oItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oParent:Landroid/app/Activity;

.field private m_oToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "dialog"
    .parameter "parent"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    .line 19
    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    .line 20
    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 21
    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oToastMsg:Landroid/widget/Toast;

    .line 24
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    .line 25
    iput-object p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    .line 26
    iput-object p3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 27
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 41
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 45
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const v9, 0x7f08030e

    const/4 v8, -0x1

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, value:Ljava/lang/String;
    const/4 v0, 0x1

    .line 51
    .local v0, bEnable:Z
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 53
    .local v3, nLen:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    .line 55
    .local v1, context:Landroid/content/Context;
    if-nez v3, :cond_20

    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    :goto_1f
    return-void

    .line 63
    :cond_20
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_49

    .line 65
    const/4 v0, 0x0

    .line 67
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 68
    const/16 v5, -0x9

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->onToastMessage(I)V

    .line 70
    :cond_3f
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1f

    .line 74
    :cond_49
    const/4 v2, 0x0

    .line 75
    .local v2, isExist:Z
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    instance-of v5, v5, Lcom/infraware/polarisoffice/OfficeFileManager;

    if-eqz v5, :cond_7b

    .line 76
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    check-cast v5, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v5, v6, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->isAlreadyExist(Ljava/lang/String;Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v2

    .line 80
    :cond_5e
    :goto_5e
    if-eqz v2, :cond_8e

    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    .line 84
    const/4 v5, -0x3

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->onToastMessage(I)V

    .line 86
    :cond_71
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1f

    .line 77
    :cond_7b
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    instance-of v5, v5, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    if-eqz v5, :cond_5e

    .line 78
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    check-cast v5, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->isAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5e

    .line 90
    :cond_8e
    iget-object v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1f
.end method

.method public onToastMessage(I)V
    .registers 5
    .parameter "err"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, errMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_19

    .line 32
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oParent:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oToastMsg:Landroid/widget/Toast;

    .line 36
    :goto_13
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 37
    return-void

    .line 34
    :cond_19
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
