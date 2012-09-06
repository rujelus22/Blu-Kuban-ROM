.class public Lcom/estrongs/android/pop/netfs/NetFileInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FOLDER_TYPE_DEVICE:I = 0x1

.field public static final FOLDER_TYPE_FOLDER:I = 0x0

.field public static final FOLDER_TYPE_RECV_SHARED:I = 0x8

.field public static final FOLDER_TYPE_SHARED:I = 0x40

.field public static final FOLDER_TYPE_VIRTUAL:I = 0x20

.field public static final FOLDER_TYPE_VIRTUAL_ARCHIVE:I = 0x10

.field public static final FOLDER_TYPE_VIRTUAL_BFCASE:I = 0x2

.field public static final FOLDER_TYPE_VIRTUAL_PHOTO:I = 0x4


# instance fields
.field public createdTime:J

.field public folder_type:I

.field public hidden:Z

.field public isDirectory:Z

.field public lastAccessTime:J

.field public lastModifiedTime:J

.field public md5_block_size:I

.field public md5s:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public readable:Z

.field public size:J

.field public version:I

.field public writable:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->version:I

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->createdTime:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastAccessTime:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-boolean v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    iput v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5s:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5_block_size:I

    return-void
.end method
