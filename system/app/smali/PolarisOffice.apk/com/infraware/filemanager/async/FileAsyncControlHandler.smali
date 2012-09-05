.class public Lcom/infraware/filemanager/async/FileAsyncControlHandler;
.super Landroid/os/Handler;
.source "FileAsyncControlHandler.java"


# instance fields
.field public activityCtx:Landroid/content/Context;

.field private item:Lcom/infraware/filemanager/file/FileListItem;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V
    .registers 5
    .parameter "aActivityCtx"
    .parameter "aItem"
    .parameter "aUiUpdateHandler"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->item:Lcom/infraware/filemanager/file/FileListItem;

    .line 23
    iput-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    .line 373
    iput-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->m_ToastMsg:Landroid/widget/Toast;

    .line 27
    iput-object p1, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->item:Lcom/infraware/filemanager/file/FileListItem;

    .line 29
    iput-object p3, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/async/FileAsyncControlHandler;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->item:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x6

    const/4 v9, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 34
    iget v8, p1, Landroid/os/Message;->what:I

    .line 35
    .local v8, operation:I
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 36
    .local v7, nFMResult:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 37
    .local v6, nExtValue:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .local v5, msgObj:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 40
    .local v3, errMsg:Ljava/lang/String;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 41
    .local v4, message:Landroid/os/Message;
    sparse-switch v8, :sswitch_data_3cc

    .line 371
    :goto_16
    :sswitch_16
    return-void

    .line 44
    :sswitch_17
    sparse-switch v7, :sswitch_data_3ee

    goto :goto_16

    .line 76
    :sswitch_1b
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 77
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x7

    iput v9, v4, Landroid/os/Message;->what:I

    .line 78
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 79
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 80
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 47
    :sswitch_2d
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 48
    .restart local v4       #message:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 49
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 50
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 51
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 54
    :sswitch_3e
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 55
    .restart local v4       #message:Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 56
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 57
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 58
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 62
    :sswitch_51
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 63
    .restart local v4       #message:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 64
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 65
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 66
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 69
    :sswitch_62
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 70
    .restart local v4       #message:Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->what:I

    .line 71
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 72
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 73
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 87
    :sswitch_73
    sparse-switch v7, :sswitch_data_404

    .line 172
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 173
    .restart local v4       #message:Landroid/os/Message;
    const/16 v9, 0x8

    iput v9, v4, Landroid/os/Message;->what:I

    .line 174
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 175
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 176
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 179
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_16

    .line 90
    :sswitch_96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f08003b

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08005f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, duplicateMsg:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v9, 0x7f080046

    new-instance v10, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;

    invoke-direct {v10, p0, v8}, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;-><init>(Lcom/infraware/filemanager/async/FileAsyncControlHandler;I)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v9, 0x7f080047

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 104
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_16

    .line 108
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/AlertDialog;
    .end local v2           #duplicateMsg:Ljava/lang/String;
    :sswitch_ee
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 109
    .restart local v4       #message:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 110
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 111
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 112
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 113
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez v8, :cond_117

    const v9, 0x7f0800a6

    :goto_10a
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    :goto_110
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 113
    :cond_117
    const v9, 0x7f0800a7

    goto :goto_10a

    .line 115
    :cond_11b
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800a6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_110

    .line 120
    :sswitch_12b
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 121
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v4, Landroid/os/Message;->what:I

    .line 122
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 123
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 124
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 127
    :sswitch_13e
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 128
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, -0x1

    if-ne v6, v9, :cond_156

    .line 129
    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    .line 130
    iput v10, v4, Landroid/os/Message;->arg2:I

    .line 136
    :goto_14b
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 137
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 133
    :cond_156
    iput v11, v4, Landroid/os/Message;->what:I

    .line 134
    iput v6, v4, Landroid/os/Message;->arg2:I

    goto :goto_14b

    .line 143
    :sswitch_15b
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 144
    .restart local v4       #message:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 145
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 146
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 147
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 150
    :sswitch_16d
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 151
    .restart local v4       #message:Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->what:I

    .line 152
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 153
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 154
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 157
    :sswitch_17f
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 158
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x7

    iput v9, v4, Landroid/os/Message;->what:I

    .line 159
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 160
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 161
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 164
    :sswitch_192
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 165
    .restart local v4       #message:Landroid/os/Message;
    const/16 v9, 0x8

    iput v9, v4, Landroid/os/Message;->what:I

    .line 166
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 167
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 168
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const v10, 0x7f0800c1

    invoke-static {v9, v12, v10}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 186
    :sswitch_1b1
    sparse-switch v7, :sswitch_data_426

    .line 241
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 242
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_16

    .line 189
    :sswitch_1c3
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 190
    .restart local v4       #message:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 191
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 192
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 193
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800a5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 197
    :sswitch_1e4
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 198
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1fc

    .line 199
    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    .line 200
    iput v10, v4, Landroid/os/Message;->arg2:I

    .line 206
    :goto_1f1
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 207
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 203
    :cond_1fc
    iput v11, v4, Landroid/os/Message;->what:I

    .line 204
    iput v6, v4, Landroid/os/Message;->arg2:I

    goto :goto_1f1

    .line 212
    :sswitch_201
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 213
    .restart local v4       #message:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 214
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 215
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 216
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 219
    :sswitch_213
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 220
    .restart local v4       #message:Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->what:I

    .line 221
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 222
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 223
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 226
    :sswitch_225
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 227
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x7

    iput v9, v4, Landroid/os/Message;->what:I

    .line 228
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 229
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 230
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 233
    :sswitch_238
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 234
    .restart local v4       #message:Landroid/os/Message;
    const/16 v9, 0x8

    iput v9, v4, Landroid/os/Message;->what:I

    .line 235
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 236
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 237
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const v10, 0x7f0800c0

    invoke-static {v9, v12, v10}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 246
    :sswitch_257
    sparse-switch v7, :sswitch_data_440

    .line 294
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 295
    .restart local v4       #message:Landroid/os/Message;
    iput v12, v4, Landroid/os/Message;->what:I

    .line 296
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 297
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 298
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const v10, 0x7f0800c2

    invoke-static {v9, v12, v10}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 248
    :sswitch_277
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 249
    .restart local v4       #message:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 250
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 251
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 252
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 256
    :sswitch_298
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 257
    .restart local v4       #message:Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 258
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 259
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 260
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 264
    :sswitch_2b9
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 265
    .restart local v4       #message:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 266
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 267
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 268
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 271
    :sswitch_2cb
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 272
    .restart local v4       #message:Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->what:I

    .line 273
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 274
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 275
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 278
    :sswitch_2dd
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 279
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x7

    iput v9, v4, Landroid/os/Message;->what:I

    .line 280
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 281
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 282
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 285
    :sswitch_2f0
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 286
    .restart local v4       #message:Landroid/os/Message;
    iput v12, v4, Landroid/os/Message;->what:I

    .line 287
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 288
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 289
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const v10, 0x7f0800c6

    invoke-static {v9, v12, v10}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 306
    :sswitch_30d
    packed-switch v7, :pswitch_data_45a

    .line 364
    :pswitch_310
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800b9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_16

    .line 308
    :pswitch_326
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 309
    .restart local v4       #message:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 310
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 311
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 312
    const/16 v9, 0xc

    if-ne v8, v9, :cond_34b

    .line 313
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    :cond_344
    :goto_344
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 314
    :cond_34b
    const/16 v9, 0xb

    if-ne v8, v9, :cond_344

    .line 315
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_344

    .line 320
    :pswitch_35f
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 321
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, -0x1

    if-ne v6, v9, :cond_377

    .line 322
    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    .line 323
    iput v10, v4, Landroid/os/Message;->arg2:I

    .line 329
    :goto_36c
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 330
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 326
    :cond_377
    iput v11, v4, Landroid/os/Message;->what:I

    .line 327
    iput v6, v4, Landroid/os/Message;->arg2:I

    goto :goto_36c

    .line 335
    :pswitch_37c
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 336
    .restart local v4       #message:Landroid/os/Message;
    const/16 v9, 0x9

    iput v9, v4, Landroid/os/Message;->what:I

    .line 337
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 338
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 339
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 343
    :pswitch_394
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 344
    .restart local v4       #message:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 345
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 346
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 347
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 350
    :pswitch_3a6
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 351
    .restart local v4       #message:Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->what:I

    .line 352
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 353
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 354
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 357
    :pswitch_3b8
    new-instance v4, Landroid/os/Message;

    .end local v4           #message:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 358
    .restart local v4       #message:Landroid/os/Message;
    const/4 v9, 0x7

    iput v9, v4, Landroid/os/Message;->what:I

    .line 359
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 360
    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 361
    iget-object v9, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->uiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 41
    nop

    :sswitch_data_3cc
    .sparse-switch
        0x0 -> :sswitch_73
        0x1 -> :sswitch_73
        0x2 -> :sswitch_1b1
        0x3 -> :sswitch_16
        0xa -> :sswitch_257
        0xb -> :sswitch_30d
        0xc -> :sswitch_30d
        0x14 -> :sswitch_17
    .end sparse-switch

    .line 44
    :sswitch_data_3ee
    .sparse-switch
        -0x7 -> :sswitch_1b
        0x0 -> :sswitch_62
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_3e
        0x5 -> :sswitch_51
    .end sparse-switch

    .line 87
    :sswitch_data_404
    .sparse-switch
        -0x10 -> :sswitch_192
        -0x7 -> :sswitch_17f
        -0x3 -> :sswitch_96
        0x0 -> :sswitch_16d
        0x1 -> :sswitch_ee
        0x2 -> :sswitch_12b
        0x3 -> :sswitch_13e
        0x5 -> :sswitch_15b
    .end sparse-switch

    .line 186
    :sswitch_data_426
    .sparse-switch
        -0xf -> :sswitch_238
        -0x7 -> :sswitch_225
        0x0 -> :sswitch_213
        0x1 -> :sswitch_1c3
        0x3 -> :sswitch_1e4
        0x5 -> :sswitch_201
    .end sparse-switch

    .line 246
    :sswitch_data_440
    .sparse-switch
        -0x11 -> :sswitch_2f0
        -0x7 -> :sswitch_2dd
        0x0 -> :sswitch_2cb
        0x1 -> :sswitch_277
        0x3 -> :sswitch_298
        0x5 -> :sswitch_2b9
    .end sparse-switch

    .line 306
    :pswitch_data_45a
    .packed-switch -0x7
        :pswitch_3b8
        :pswitch_310
        :pswitch_310
        :pswitch_310
        :pswitch_310
        :pswitch_310
        :pswitch_310
        :pswitch_3a6
        :pswitch_326
        :pswitch_310
        :pswitch_35f
        :pswitch_37c
        :pswitch_394
    .end packed-switch
.end method

.method public onToastMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_13

    .line 376
    iget-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->activityCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->m_ToastMsg:Landroid/widget/Toast;

    .line 380
    :goto_d
    iget-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    return-void

    .line 378
    :cond_13
    iget-object v0, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method
