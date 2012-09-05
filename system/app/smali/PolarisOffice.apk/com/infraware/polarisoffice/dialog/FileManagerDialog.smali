.class public Lcom/infraware/polarisoffice/dialog/FileManagerDialog;
.super Ljava/lang/Object;
.source "FileManagerDialog.java"


# instance fields
.field private mDelayHandler:Landroid/os/Handler;

.field private m_nDialogType:I

.field private m_nMaxLength:I

.field private m_nMessage:I

.field private m_nTitleId:I

.field private m_oDialog:Landroid/app/AlertDialog;

.field private m_oEditText:Landroid/widget/EditText;

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

.field private m_oItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oParent:Landroid/app/Activity;

.field private m_strPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 6
    .parameter "parent"
    .parameter "item"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    .line 34
    iput v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 36
    iput v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 37
    iput v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->mDelayHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 53
    if-eqz p2, :cond_2b

    .line 54
    invoke-virtual {p2}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    .line 56
    :cond_2b
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->mDelayHandler:Landroid/os/Handler;

    if-nez v0, :cond_36

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->mDelayHandler:Landroid/os/Handler;

    .line 58
    :cond_36
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private showPromptFileName(Ljava/lang/String;I)V
    .registers 13
    .parameter "strValue"
    .parameter "intValue"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 234
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, oView:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 242
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerListener;

    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/dialog/FileManagerListener;-><init>(Landroid/view/View;Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;ILjava/lang/String;)V

    .line 243
    .local v0, listener:Lcom/infraware/polarisoffice/dialog/FileManagerListener;
    const v2, 0x7f080043

    invoke-virtual {v6, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    const v2, 0x7f080045

    invoke-virtual {v6, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 247
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    packed-switch v2, :pswitch_data_19c

    .line 330
    :goto_3f
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_57

    .line 332
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$3;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$3;-><init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 341
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$4;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$4;-><init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 358
    :cond_57
    return-void

    .line 252
    :pswitch_58
    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    if-le v2, v3, :cond_72

    .line 254
    const/4 v2, 0x0

    iget v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_72
    new-instance v2, Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/infraware/filemanager/file/FileInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 257
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    iget v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileInputFilter;->setMaxLength(I)V

    .line 258
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oInputFilter:Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 260
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    if-le p2, v2, :cond_95

    .line 261
    iget p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    .line 263
    :cond_95
    move v8, p2

    .line 265
    .local v8, value:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_aa

    .line 266
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    .line 268
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;-><init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 277
    :cond_aa
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 278
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 279
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    if-nez v2, :cond_12c

    .line 280
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    :goto_c4
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 285
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 287
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    const v3, 0x7f08030e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FV02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_138

    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v2

    if-eqz v2, :cond_138

    .line 290
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->mDelayHandler:Landroid/os/Handler;

    new-instance v3, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;

    invoke-direct {v3, p0, v8}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;-><init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;I)V

    .line 296
    const-wide/16 v4, 0xc8

    .line 290
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :goto_106
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-nez v2, :cond_13f

    .line 303
    new-instance v2, Lcom/infraware/polarisoffice/common/ImmManager;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-direct {v2, v3, v4}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 306
    :goto_115
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 308
    new-instance v9, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;

    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v9, v2, v3, v4}, Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;-><init>(Landroid/app/AlertDialog;Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    .line 309
    .local v9, watcher:Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_3f

    .line 282
    .end local v9           #watcher:Lcom/infraware/polarisoffice/dialog/FileManagerTextWatcher;
    :cond_12c
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c4

    .line 299
    :cond_138
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_106

    .line 305
    :cond_13f
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/polarisoffice/common/ImmManager;->resetImeParameter(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    goto :goto_115

    .line 315
    .end local v8           #value:I
    :pswitch_149
    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    .line 316
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 318
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    .line 319
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v2

    if-nez v2, :cond_16d

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 320
    :cond_16d
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 322
    :cond_175
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 323
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 325
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 326
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_3f

    .line 247
    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_149
    .end packed-switch
.end method


# virtual methods
.method public changeLocaleCreateFolderDlg()V
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 363
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    const v2, 0x7f0800ff

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 365
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 366
    return-void
.end method

.method public clearHistoryDlg()V
    .registers 3

    .prologue
    .line 213
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 215
    const v0, 0x7f0800fb

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 216
    const v0, 0x7f080101

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 218
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 219
    return-void
.end method

.method public createFolderDlg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "curPath"

    .prologue
    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 140
    const v0, 0x7f0800f3

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 141
    const v0, 0x7f0800ff

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 143
    iput-object p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 146
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    .line 147
    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public deleteDlg(I)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 202
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 204
    const v0, 0x7f0800ed

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 205
    iput p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 207
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method public deleteFavoriteDlg()V
    .registers 3

    .prologue
    .line 223
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 225
    const v0, 0x7f0800ed

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 226
    const v0, 0x7f080103

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 228
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 75
    :cond_f
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_5
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 82
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 89
    :cond_9
    return-void
.end method

.method public onSDCardRemoved()V
    .registers 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_strPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 123
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->dismiss()V

    .line 134
    .end local v0           #file:Ljava/io/File;
    :cond_22
    :goto_22
    return-void

    .line 128
    :cond_23
    iget v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    packed-switch v1, :pswitch_data_2e

    goto :goto_22

    .line 132
    :pswitch_29
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->dismiss()V

    goto :goto_22

    .line 128
    nop

    :pswitch_data_2e
    .packed-switch 0x5
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public onShow()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 93
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    if-ne v0, v3, :cond_7

    .line 115
    :goto_6
    return-void

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    iget v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 97
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oParent:Landroid/app/Activity;

    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    packed-switch v0, :pswitch_data_54

    goto :goto_6

    .line 104
    :pswitch_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_6

    .line 111
    :pswitch_3a
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_6

    .line 99
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public renameExtDlg(Ljava/lang/String;)V
    .registers 3
    .parameter "newName"

    .prologue
    .line 192
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 194
    const v0, 0x7f08003b

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 195
    const v0, 0x7f080105

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 198
    return-void
.end method

.method public renameFolderDlg(Z)V
    .registers 9
    .parameter "bExtView"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v3, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v3, :cond_98

    .line 154
    const/4 v3, 0x1

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 156
    const v3, 0x7f0800f4

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 157
    const v3, 0x7f0800ff

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    .line 167
    :goto_13
    const/16 v3, 0x3c

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    .line 168
    if-eqz p1, :cond_25

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v3, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v3, :cond_25

    .line 169
    iget v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    add-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    .line 171
    :cond_25
    const-string v1, ""

    .line 172
    .local v1, tempExt:Ljava/lang/String;
    if-eqz p1, :cond_4c

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4c

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v4, v4, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_4c
    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v2, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 176
    .local v2, tempName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_a7

    .line 177
    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMaxLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 182
    :goto_6d
    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_ac

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v4, v4, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, fileName:Ljava/lang/String;
    :goto_90
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V

    .line 188
    return-void

    .line 161
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #tempExt:Ljava/lang/String;
    .end local v2           #tempName:Ljava/lang/String;
    :cond_98
    const/4 v3, 0x2

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nDialogType:I

    .line 163
    const v3, 0x7f0800f5

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nTitleId:I

    .line 164
    const v3, 0x7f080100

    iput v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_nMessage:I

    goto/16 :goto_13

    .line 179
    .restart local v1       #tempExt:Ljava/lang/String;
    .restart local v2       #tempName:Ljava/lang/String;
    :cond_a7
    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v2, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    goto :goto_6d

    .line 185
    :cond_ac
    move-object v0, v2

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_90
.end method
