.class public Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public bytes:J

.field public failCount:I

.field public from:Ljava/lang/String;

.field public isFile:Z

.field public mineType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Landroid/net/Uri;

.field public reason:Ljava/lang/String;

.field public sessionTitle:Ljava/lang/String;

.field public time:Landroid/text/format/Time;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 12
    .parameter "ErrorType"
    .parameter "filecount"
    .parameter "mainTitle"
    .parameter "name"
    .parameter "mCon"

    .prologue
    const v3, 0x7f060001

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->name:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    .line 16
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->mineType:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->bytes:J

    .line 18
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    .line 19
    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    .line 21
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->title:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->sessionTitle:Ljava/lang/String;

    .line 25
    iput v4, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->failCount:I

    .line 39
    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    .line 40
    iput p2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->failCount:I

    .line 41
    iput-object p3, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->sessionTitle:Ljava/lang/String;

    .line 42
    if-ne p2, v5, :cond_5f

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060025

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->title:Ljava/lang/String;

    .line 46
    :goto_54
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 47
    iput-object p4, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    .line 48
    packed-switch p1, :pswitch_data_ba

    .line 64
    :goto_5e
    :pswitch_5e
    return-void

    .line 45
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060026

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->title:Ljava/lang/String;

    goto :goto_54

    .line 51
    :pswitch_8c
    const v0, 0x7f060043

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    goto :goto_5e

    .line 54
    :pswitch_96
    const v0, 0x7f060044

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    goto :goto_5e

    .line 57
    :pswitch_a6
    const v0, 0x7f060046

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    goto :goto_5e

    .line 60
    :pswitch_b0
    const v0, 0x7f060045

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    goto :goto_5e

    .line 48
    :pswitch_data_ba
    .packed-switch 0x5dd
        :pswitch_8c
        :pswitch_96
        :pswitch_a6
        :pswitch_5e
        :pswitch_b0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->name:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    .line 16
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->mineType:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->bytes:J

    .line 18
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    .line 19
    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    .line 21
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->title:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->sessionTitle:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->failCount:I

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getDownloadedUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->mineType:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->bytes:J

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->name:Ljava/lang/String;

    .line 34
    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    .line 35
    return-void
.end method
