.class public Lcom/sec/android/app/servicemodeapp/LogFileList;
.super Landroid/app/Activity;
.source "LogFileList.java"


# instance fields
.field private buf:[B

.field private builder:Landroid/app/AlertDialog$Builder;

.field private fileList:[Ljava/lang/String;

.field private fileListName:Ljava/lang/String;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field in:Ljava/io/BufferedReader;

.field mBis:Ljava/io/BufferedInputStream;

.field mDis:Ljava/io/DataInputStream;

.field public mHandler:Landroid/os/Handler;

.field private mScroller:Landroid/widget/Scroller;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private rilLog:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->phone:Lcom/android/internal/telephony/Phone;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fis:Ljava/io/FileInputStream;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fos:Ljava/io/FileOutputStream;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->rilLog:Ljava/io/File;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileListName:Ljava/lang/String;

    .line 76
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->buf:[B

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->mScroller:Landroid/widget/Scroller;

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->mBis:Ljava/io/BufferedInputStream;

    .line 92
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->mDis:Ljava/io/DataInputStream;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->in:Ljava/io/BufferedReader;

    .line 99
    new-instance v0, Lcom/sec/android/app/servicemodeapp/LogFileList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/LogFileList$1;-><init>(Lcom/sec/android/app/servicemodeapp/LogFileList;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/LogFileList;->setContentView(I)V

    .line 128
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->builder:Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, oFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 134
    const-string v2, "LogFileList"

    const-string v3, "/data is Directory"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileList:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_53

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileListName:Ljava/lang/String;

    .line 141
    const-string v2, "LogFileList"

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileListName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 145
    .end local v0           #i:I
    :cond_53
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileListName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/LogFileList;->fileListName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/LogFileList;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 151
    :goto_5c
    return-void

    .line 148
    :cond_5d
    const-string v2, "fileListName is null"

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/LogFileList;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_c

    .line 182
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 178
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/LogFileList;->finish()V

    goto :goto_3

    .line 174
    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method
