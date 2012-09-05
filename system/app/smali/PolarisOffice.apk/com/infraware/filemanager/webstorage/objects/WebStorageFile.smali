.class public Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
.super Ljava/lang/Object;
.source "WebStorageFile.java"


# instance fields
.field public ext:Ljava/lang/String;

.field public isFolder:Z

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public serviceType:I

.field public size:J

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->path:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 19
    iput-wide v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->serviceType:I

    .line 22
    return-void
.end method
