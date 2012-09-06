.class public interface abstract Lcom/estrongs/android/pop/netfs/INetFileSystem;
.super Ljava/lang/Object;


# static fields
.field public static final REG_ERROR:I = 0x64

.field public static final REG_NAME_EXISTED:I = 0x2

.field public static final REG_SUCCESS:I = 0x0

.field public static final REG_WRONG_VERF_CODE:I = 0x1


# virtual methods
.method public abstract addServer(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract delServer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;
.end method

.method public abstract getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;
.end method

.method public abstract getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/OutputStream;
.end method

.method public abstract getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLeftSpaceSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getOAuthLoginUrl()Ljava/lang/String;
.end method

.method public abstract getRegisterPrepareInfo([Ljava/lang/Object;)Z
.end method

.method public abstract getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/android/pop/netfs/INetRefreshCallback;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/netfs/NetFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mkDirs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setConfigDir(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method
