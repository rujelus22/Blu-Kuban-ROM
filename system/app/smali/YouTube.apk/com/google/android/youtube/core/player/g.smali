.class final Lcom/google/android/youtube/core/player/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 74
    new-instance v1, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/google/android/youtube/core/player/h;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/h;-><init>(Lcom/google/android/youtube/core/player/g;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_27

    .line 84
    array-length v3, v2

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 85
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 88
    :cond_27
    return-void
.end method
