.class public final Lorg/apache/commons/net/io/CRLFLineReader;
.super Ljava/io/BufferedReader;


# static fields
.field private static final CR:C = '\r'

.field private static final LF:C = '\n'


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/net/io/CRLFLineReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    move v0, v1

    :goto_a
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/commons/net/io/CRLFLineReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    if-eqz v0, :cond_24

    const/16 v0, 0xa

    if-ne v4, v0, :cond_24

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    const/16 v0, 0xd

    if-ne v4, v0, :cond_31

    const/4 v0, 0x1

    :goto_29
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_2e
    move-exception v0

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    move v0, v1

    goto :goto_29

    :cond_33
    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x0

    goto :goto_23
.end method
