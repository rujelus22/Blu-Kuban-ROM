.class public abstract Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.super Ljava/lang/Object;
.source "WebStorageData.java"


# static fields
.field public static final TEMP_PATH:Ljava/lang/String; = "/sdcard/.temp/"


# instance fields
.field public password:Ljava/lang/String;

.field public tmpFile:Ljava/lang/String;

.field public tmpFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFile:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFolderId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->password:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 4
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->password:Ljava/lang/String;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    .line 131
    :cond_7
    :goto_7
    return v0

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->password:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 131
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public abstract createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract decodeTitle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract encodeTitle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract refreshEntryTree()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public abstract renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->password:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTmpFile(Ljava/lang/String;)V
    .registers 2
    .parameter "tmpFileName"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFile:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTmpFolder(Ljava/lang/String;)V
    .registers 2
    .parameter "folderId"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFolderId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public abstract uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation
.end method
