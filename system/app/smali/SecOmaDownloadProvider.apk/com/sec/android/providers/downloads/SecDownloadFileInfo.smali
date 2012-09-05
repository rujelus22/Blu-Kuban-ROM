.class public Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
.super Ljava/lang/Object;
.source "SecDownloadFileInfo.java"


# instance fields
.field mFileName:Ljava/lang/String;

.field mStatus:I

.field mStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
    .registers 4
    .parameter "fileName"
    .parameter "stream"
    .parameter "status"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mStream:Ljava/io/FileOutputStream;

    .line 32
    iput p3, p0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mStatus:I

    .line 33
    return-void
.end method
