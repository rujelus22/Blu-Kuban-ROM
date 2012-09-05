.class public Lcom/infraware/polarisoffice/common/SaveAsActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SaveAsActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;
    }
.end annotation


# instance fields
.field private mDelayHandler:Landroid/os/Handler;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private m_etFileName:Landroid/widget/EditText;

.field private m_nMode:I

.field private m_nOrgOrientation:I

.field private m_nOrientation:I

.field private m_nType:I

.field private m_oCloseFilter:Landroid/content/IntentFilter;

.field private m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

.field private m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

.field private m_oItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_strOriginFile:Ljava/lang/String;

.field watcherEdit:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 34
    iput v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nOrientation:I

    .line 35
    iput v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nOrgOrientation:I

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    .line 43
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->mDelayHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;-><init>(Lcom/infraware/polarisoffice/common/SaveAsActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->watcherEdit:Landroid/text/TextWatcher;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/SaveAsActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->checkFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/SaveAsActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/SaveAsActivity;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .registers 7
    .parameter "newName"

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, result:Z
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v4, v4, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, file:Ljava/io/File;
    const v3, 0x7f0c00bf

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 179
    .local v0, btnSave:Landroid/widget/Button;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 180
    const/4 v2, 0x0

    .line 184
    :goto_41
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return v2

    .line 182
    :cond_45
    const/4 v2, 0x1

    goto :goto_41
.end method


# virtual methods
.method public OnCancel(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->finish()V

    .line 281
    return-void
.end method

.method public OnFolder(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, folderSelect:Landroid/content/Intent;
    const-string v1, "key_current_file"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "key_current_folder"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "key_interanl_mode"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "key_dialog_title"

    const v2, 0x7f0800f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    return-void
.end method

.method public OnOk(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->checkFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, filepath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v1, result:Landroid/content/Intent;
    const-string v2, "key_new_file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nOrientation:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nOrgOrientation:I

    if-eq v2, v3, :cond_5b

    .line 269
    const-string v2, "key_change_orient"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    :cond_5b
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->finish()V

    .line 276
    .end local v0           #filepath:Ljava/lang/String;
    .end local v1           #result:Landroid/content/Intent;
    :goto_62
    return-void

    .line 275
    :cond_63
    const/4 v2, -0x3

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->onToastMessage(I)V

    goto :goto_62
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 6
    .parameter "nowAction"

    .prologue
    .line 294
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 296
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 299
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->finish()V

    .line 312
    .end local v1           #file:Ljava/io/File;
    :cond_18
    :goto_18
    return-void

    .line 303
    .restart local v1       #file:Ljava/io/File;
    :cond_19
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    .line 306
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 308
    const v2, 0x7f0c00bd

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 309
    .local v0, btnFolder:Landroid/widget/Button;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v2, v2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/baseactivity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    const/4 v2, -0x1

    if-ne p2, v2, :cond_36

    .line 165
    const v2, 0x7f0c00bd

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 166
    .local v0, btnFolder:Landroid/widget/Button;
    const-string v2, "key_new_folder"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 169
    const v2, 0x7f0c00bb

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 170
    .local v1, et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->checkFile(Ljava/lang/String;)Z

    .line 172
    .end local v0           #btnFolder:Landroid/widget/Button;
    .end local v1           #et:Landroid/widget/EditText;
    :cond_36
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setContentView(I)V

    .line 52
    const v8, 0x7f080095

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setTitle(I)V

    .line 54
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v9, 0x1

    iput v9, v8, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 56
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 57
    .local v3, i:Landroid/content/Intent;
    const-string v8, "key_content_mode"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 58
    .local v5, nOption:I
    const/high16 v8, 0x1

    div-int v8, v5, v8

    iput v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nMode:I

    .line 59
    const/high16 v8, 0x1

    rem-int v8, v5, v8

    iput v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nType:I

    .line 61
    const-string v8, "key_current_file"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, curFile:Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 63
    .local v4, index:I
    if-ltz v4, :cond_ae

    .line 65
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 66
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x3c

    if-le v8, v9, :cond_57

    .line 68
    const/4 v8, 0x0

    const/16 v9, 0x3c

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_57
    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, cacheDir:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 72
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 77
    .end local v1           #cacheDir:Ljava/lang/String;
    :cond_84
    :goto_84
    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 78
    if-ltz v4, :cond_bb

    .line 79
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 83
    :goto_95
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nType:I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/infraware/common/util/FileUtils;->getFileExtension(IZ)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 84
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v8, v8, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-nez v8, :cond_c0

    .line 86
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->finish()V

    .line 149
    :cond_ad
    :goto_ad
    return-void

    .line 75
    :cond_ae
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    goto :goto_84

    .line 81
    :cond_bb
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iput-object v2, v8, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    goto :goto_95

    .line 91
    :cond_c0
    iget v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nMode:I

    if-nez v8, :cond_1b0

    .line 92
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v8}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_strOriginFile:Ljava/lang/String;

    .line 102
    :goto_cc
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->mDelayHandler:Landroid/os/Handler;

    .line 104
    new-instance v8, Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;-><init>(Lcom/infraware/polarisoffice/common/SaveAsActivity;)V

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    .line 105
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    const-string v9, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v8, v9}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const v8, 0x7f0c00bb

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    .line 110
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FV02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c8

    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v8

    if-eqz v8, :cond_1c8

    .line 114
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->mDelayHandler:Landroid/os/Handler;

    new-instance v9, Lcom/infraware/polarisoffice/common/SaveAsActivity$2;

    invoke-direct {v9, p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity$2;-><init>(Lcom/infraware/polarisoffice/common/SaveAsActivity;)V

    .line 120
    const-wide/16 v10, 0xc8

    .line 114
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :goto_124
    new-instance v8, Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-direct {v8, p0}, Lcom/infraware/filemanager/file/FileInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 126
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-virtual {v9}, Lcom/infraware/filemanager/file/FileInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    const v8, 0x7f0c00bd

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    .local v0, btnFolder:Landroid/widget/Button;
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v8, v8, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->watcherEdit:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->checkFile(Ljava/lang/String;)Z

    .line 134
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FV14"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 136
    const v8, 0x7f0c00be

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 137
    .local v7, tvInformation:Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const v8, 0x7f080292

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .end local v7           #tvInformation:Landroid/widget/TextView;
    :cond_17c
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 144
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FV03"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ad

    .line 145
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FV02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ad

    .line 146
    const v8, 0x7f080095

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 147
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_ad

    .line 93
    .end local v0           #btnFolder:Landroid/widget/Button;
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_1b0
    iget v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_nMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1bf

    .line 94
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v8}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_strOriginFile:Ljava/lang/String;

    goto/16 :goto_cc

    .line 97
    :cond_1bf
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->finish()V

    goto/16 :goto_ad

    .line 123
    :cond_1c8
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v10, v10, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_124
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/SaveAsActivity$CloseActionReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    :cond_9
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 9
    .parameter "nLocale"

    .prologue
    .line 201
    const v5, 0x7f080095

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->setTitle(I)V

    .line 203
    const v5, 0x7f0c00ba

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    .local v2, tvFileName:Landroid/widget/TextView;
    const v5, 0x7f0c00bc

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 206
    .local v4, tvLocation:Landroid/widget/TextView;
    const v5, 0x7f0c00bf

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 207
    .local v1, btnSave:Landroid/widget/Button;
    const v5, 0x7f0c006d

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    .local v0, btnCancel:Landroid/widget/Button;
    const v5, 0x7f080096

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 211
    const v5, 0x7f080097

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV14"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 215
    const v5, 0x7f0c00be

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, tvInformation:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const v5, 0x7f080292

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 220
    .end local v3           #tvInformation:Landroid/widget/TextView;
    :cond_58
    const v5, 0x7f080049

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 221
    const v5, 0x7f080045

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    if-eqz v5, :cond_70

    .line 223
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 224
    :cond_70
    return-void
.end method

.method public onToastMessage(I)V
    .registers 4
    .parameter "err"

    .prologue
    .line 190
    invoke-static {p0, p1}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, errMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_15

    .line 192
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 196
    :goto_f
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    return-void

    .line 194
    :cond_15
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
