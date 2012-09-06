.class public abstract Lcom/google/android/feeds/AbstractCachedContentHandler;
.super Ljava/net/ContentHandler;
.source "AbstractCachedContentHandler.java"


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mMaxAge:J


# direct methods
.method protected constructor <init>(JLandroid/os/Bundle;)V
    .registers 6
    .parameter "maxAge"
    .parameter "extras"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max age must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_11
    if-nez p3, :cond_1b

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1b
    iput-wide p1, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mMaxAge:J

    .line 57
    iput-object p3, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mExtras:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method private static now()J
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 7
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/AbstractCachedContentHandler;->isLocal(Ljava/net/URLConnection;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/AbstractCachedContentHandler;->getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    :goto_a
    return-object v3

    .line 101
    :cond_b
    invoke-static {}, Lcom/google/android/feeds/AbstractCachedContentHandler;->now()J

    move-result-wide v1

    .line 103
    .local v1, timestamp:J
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/AbstractCachedContentHandler;->getRemoteContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, content:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/feeds/AbstractCachedContentHandler;->setTimestamp(Ljava/net/URLConnection;J)V

    .line 107
    iget-object v3, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v4, "com.google.feeds.cursor.extra.TIMESTAMP"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v3, v0

    .line 109
    goto :goto_a
.end method

.method protected abstract getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getRemoteContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getTimestamp(Ljava/net/URLConnection;)J
.end method

.method public final isLocal(Ljava/net/URLConnection;)Z
    .registers 14
    .parameter "connection"

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 66
    iget-wide v4, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mMaxAge:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_c

    move v4, v8

    .line 90
    :goto_b
    return v4

    .line 71
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/AbstractCachedContentHandler;->getTimestamp(Ljava/net/URLConnection;)J

    move-result-wide v2

    .line 72
    .local v2, timestamp:J
    cmp-long v4, v2, v9

    if-gez v4, :cond_16

    move v4, v8

    .line 74
    goto :goto_b

    .line 76
    :cond_16
    iget-object v4, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v5, "com.google.feeds.cursor.extra.TIMESTAMP"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    iget-wide v4, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mMaxAge:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_2a

    move v4, v11

    .line 79
    goto :goto_b

    .line 81
    :cond_2a
    invoke-static {}, Lcom/google/android/feeds/AbstractCachedContentHandler;->now()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 82
    .local v0, age:J
    cmp-long v4, v0, v9

    if-gez v4, :cond_36

    move v4, v8

    .line 85
    goto :goto_b

    .line 87
    :cond_36
    iget-wide v4, p0, Lcom/google/android/feeds/AbstractCachedContentHandler;->mMaxAge:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_3e

    move v4, v8

    .line 88
    goto :goto_b

    :cond_3e
    move v4, v11

    .line 90
    goto :goto_b
.end method

.method protected abstract setTimestamp(Ljava/net/URLConnection;J)V
.end method
