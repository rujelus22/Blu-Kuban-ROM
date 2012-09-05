.class final Lcom/google/android/youtube/core/player/AwfulPlayer$1;
.super Ljava/lang/Thread;
.source "AwfulPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 70
    new-instance v5, Ljava/io/File;

    const-string v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v5, parent:Ljava/io/File;
    new-instance v6, Lcom/google/android/youtube/core/player/AwfulPlayer$1$1;

    invoke-direct {v6, p0}, Lcom/google/android/youtube/core/player/AwfulPlayer$1$1;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer$1;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, awfFiles:[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 80
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_19
    if-ge v3, v4, :cond_28

    aget-object v2, v0, v3

    .line 81
    .local v2, filename:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 84
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_28
    return-void
.end method
