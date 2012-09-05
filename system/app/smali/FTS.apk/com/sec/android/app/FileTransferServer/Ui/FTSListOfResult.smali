.class public Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;
.super Landroid/app/ListActivity;
.source "FTSListOfResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;
    }
.end annotation


# instance fields
.field private bRegisterReceiver:Z

.field fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mSavePath:Ljava/lang/String;

.field private m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    .line 37
    const-string v0, "/sdcard/ShareViaWifi"

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mSavePath:Ljava/lang/String;

    .line 38
    iput-object p0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mContext:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->bRegisterReceiver:Z

    .line 146
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$1;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->destroyActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method private destroyActivity()V
    .registers 5

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->removeAll()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->finish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 187
    :goto_6
    return-void

    .line 183
    :catch_7
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListOfResult :Exception on destroyActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private resultDialog(Lcom/sec/android/app/FileTransferServer/Data/FileInfo;)V
    .registers 10
    .parameter "fi"

    .prologue
    const v7, 0x7f060018

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 213
    const-string v0, ""

    .line 214
    .local v0, text:Ljava/lang/String;
    iget v1, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->failCount:I

    if-ne v1, v5, :cond_7e

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060010

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->sessionTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_56
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$2;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 230
    return-void

    .line 220
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060026

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->failCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->finish()V

    .line 399
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 400
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f030002

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->setContentView(I)V

    .line 49
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->setTitle(I)V

    .line 50
    new-instance v1, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    const v2, 0x7f030003

    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    .line 58
    :goto_20
    return-void

    .line 53
    :catch_21
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListOfResult :Exception on create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 164
    :try_start_3
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->bRegisterReceiver:Z

    if-eqz v1, :cond_f

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->bRegisterReceiver:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 174
    :cond_f
    :goto_f
    return-void

    .line 170
    :catch_10
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListOfResult :Exception on destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 195
    .local v1, fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    iget-boolean v3, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    if-eqz v3, :cond_12

    .line 197
    iget-object v2, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    .line 198
    .local v2, path:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->openFile(Landroid/net/Uri;)V

    .line 209
    .end local v1           #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    .end local v2           #path:Landroid/net/Uri;
    :goto_11
    return-void

    .line 202
    .restart local v1       #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    :cond_12
    invoke-direct {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->resultDialog(Lcom/sec/android/app/FileTransferServer/Data/FileInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_11

    .line 205
    .end local v1           #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    :catch_16
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSListOfResult :Exception on itemClick"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 63
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 67
    :try_start_4
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    if-nez v6, :cond_f

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_66

    .line 74
    :cond_f
    :try_start_f
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 75
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_80

    .line 84
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_29

    .line 85
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->clear()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_9a

    .line 92
    :cond_29
    :goto_29
    :try_start_29
    iget-boolean v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->bRegisterReceiver:Z

    if-nez v6, :cond_3c

    .line 94
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.FTS_NEWSESSION_START"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->bRegisterReceiver:Z

    .line 98
    :cond_3c
    sget-object v6, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 100
    .local v5, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    iget-object v6, v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 102
    .local v1, fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->add(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_65} :catch_66

    goto :goto_54

    .line 139
    .end local v1           #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_66
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTSListOfResult :Exception on resume"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7f
    :goto_7f
    return-void

    .line 77
    :catch_80
    move-exception v0

    .line 79
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_81
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTSListOfResult :Exception on onResume1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9a
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTSListOfResult :Exception on onResume2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_b5
    const v6, 0x7f060021

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 107
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_c9
    sget-object v6, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_107

    .line 109
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTSListOfResult :mFailList"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v6, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_f5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 112
    .restart local v1       #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->add(Ljava/lang/Object;)V

    goto :goto_f5

    .line 115
    .end local v1           #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_107
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    if-nez v6, :cond_110

    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->destroyActivity()V

    goto/16 :goto_7f

    .line 121
    :cond_110
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->destroyActivity()V

    goto/16 :goto_7f

    .line 123
    :cond_11d
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_7f

    .line 125
    sget-object v6, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7f

    .line 127
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->fileList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 128
    .restart local v1       #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    iget-boolean v6, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    if-eqz v6, :cond_13f

    .line 130
    iget-object v4, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    .line 131
    .local v4, path:Landroid/net/Uri;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->openFile(Landroid/net/Uri;)V

    .line 133
    .end local v4           #path:Landroid/net/Uri;
    :cond_13f
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->destroyActivity()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_142} :catch_66

    goto/16 :goto_7f
.end method

.method public openFile(Landroid/net/Uri;)V
    .registers 10
    .parameter "path"

    .prologue
    .line 256
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, sPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file:///sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 259
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListOfResult :sdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file:///sdcard"

    const-string v7, "file:///mnt/sdcard"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 263
    :cond_27
    invoke-static {v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getFileTypeInt(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, mediaType:I
    invoke-static {v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->needToCheckMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 268
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, mimetype:Ljava/lang/String;
    :goto_3b
    invoke-static {v2}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->isInstallFileType(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 277
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListOfResult :isInstallFileType"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mediaType:I
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #sPath:Ljava/lang/String;
    :goto_59
    return-void

    .line 272
    .restart local v2       #mediaType:I
    .restart local v4       #sPath:Ljava/lang/String;
    :cond_5a
    invoke-static {v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #mimetype:Ljava/lang/String;
    goto :goto_3b

    .line 285
    :cond_5f
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListOfResult :is not InstallFileType"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "key_filename"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    const-string v5, "preview"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_9e

    .line 294
    :try_start_83
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_88
    .catch Landroid/content/ActivityNotFoundException; {:try_start_83 .. :try_end_88} :catch_89
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_9e

    goto :goto_59

    .line 296
    :catch_89
    move-exception v0

    .line 298
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_8a
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 299
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mContext:Landroid/content/Context;

    const v6, 0x7f06001d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9d} :catch_9e

    goto :goto_59

    .line 303
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mediaType:I
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #sPath:Ljava/lang/String;
    :catch_9e
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSListOfResult :Exception on openFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public timeToString(Landroid/text/format/Time;)Ljava/lang/String;
    .registers 9
    .parameter "t"

    .prologue
    const/16 v6, 0xa

    .line 373
    iget v1, p1, Landroid/text/format/Time;->hour:I

    .line 374
    .local v1, hour:I
    iget v2, p1, Landroid/text/format/Time;->minute:I

    .line 375
    .local v2, minute:I
    const-string v3, ""

    .line 376
    .local v3, time:Ljava/lang/String;
    const-string v0, "AM"

    .line 377
    .local v0, afternoon:Ljava/lang/String;
    const/16 v4, 0xc

    if-le v1, v4, :cond_12

    .line 379
    add-int/lit8 v1, v1, -0xc

    .line 380
    const-string v0, "PM"

    .line 382
    :cond_12
    if-ge v1, v6, :cond_51

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :goto_2d
    if-ge v2, v6, :cond_65

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    :goto_50
    return-object v3

    .line 385
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 390
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_50
.end method
