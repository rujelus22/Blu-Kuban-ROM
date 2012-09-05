.class Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;
.super Ljava/lang/Object;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Data/FileType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaType"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->fileType:I

    .line 197
    iput-object p2, p0, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->mimeType:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->description:Ljava/lang/String;

    .line 199
    return-void
.end method
