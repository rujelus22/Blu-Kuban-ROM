.class public interface abstract Lcom/google/android/finsky/download/obb/Obb;
.super Ljava/lang/Object;
.source "Obb.java"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract finalizeTempFile()Z
.end method

.method public abstract getContentUri()Ljava/lang/String;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getState()Lcom/google/android/finsky/download/obb/ObbState;
.end method

.method public abstract getTempFile()Ljava/io/File;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract isPatch()Z
.end method

.method public abstract setContentUri(Ljava/lang/String;)V
.end method

.method public abstract setState(Lcom/google/android/finsky/download/obb/ObbState;)V
.end method

.method public abstract syncStateWithStorage()V
.end method
