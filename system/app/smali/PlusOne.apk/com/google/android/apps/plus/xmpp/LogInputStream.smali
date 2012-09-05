.class public Lcom/google/android/apps/plus/xmpp/LogInputStream;
.super Ljava/io/InputStream;
.source "LogInputStream.java"


# static fields
.field private static final mLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private final mLogBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogs:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "stream"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogBuffer:Ljava/lang/StringBuffer;

    .line 28
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    sget-object v0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogs:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1a

    .line 51
    sget-object v0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 53
    :cond_1a
    return-void
.end method

.method public getLog()Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v2, ret:Ljava/lang/StringBuffer;
    sget-object v3, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 104
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 105
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 107
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 58
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 34
    .local v0, data:I
    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogBuffer:Ljava/lang/StringBuffer;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 35
    return v0

    .line 36
    .end local v0           #data:I
    :catch_d
    move-exception v1

    .line 37
    .local v1, ex:Ljava/io/IOException;
    throw v1
.end method

.method public read([B)I
    .registers 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 69
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_16

    .line 70
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogBuffer:Ljava/lang/StringBuffer;

    aget-byte v4, p1, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_14

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 73
    .end local v1           #i:I
    .end local v2           #total:I
    :catch_14
    move-exception v0

    .line 74
    .local v0, ex:Ljava/io/IOException;
    throw v0

    .line 72
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #total:I
    :cond_16
    return v2
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 82
    .local v2, total:I
    move v1, p2

    .local v1, i:I
    :goto_7
    add-int v3, p2, v2

    if-ge v1, v3, :cond_18

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mLogBuffer:Ljava/lang/StringBuffer;

    aget-byte v4, p1, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_16

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 86
    .end local v1           #i:I
    .end local v2           #total:I
    :catch_16
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/IOException;
    throw v0

    .line 85
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #total:I
    :cond_18
    return v2
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/LogInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
