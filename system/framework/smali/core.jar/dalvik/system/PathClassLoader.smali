.class public Ldalvik/system/PathClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "PathClassLoader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "dexPath"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v0, p2}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .parameter "dexPath"
    .parameter "libraryPath"
    .parameter "parent"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 66
    return-void
.end method
