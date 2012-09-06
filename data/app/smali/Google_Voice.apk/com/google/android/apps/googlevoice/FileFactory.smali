.class public interface abstract Lcom/google/android/apps/googlevoice/FileFactory;
.super Ljava/lang/Object;
.source "FileFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/FileFactory$Storage;
    }
.end annotation


# virtual methods
.method public abstract createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;
.end method

.method public abstract createFile(Ljava/lang/String;Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;
.end method

.method public abstract getAppsRootDirectory(Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Ljava/lang/String;
.end method
