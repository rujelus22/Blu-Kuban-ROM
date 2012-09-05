.class public Ljcifs/smb/BufferCache;
.super Ljava/lang/Object;
.source "BufferCache.java"


# static fields
.field private static final MAX_BUFFERS:I

.field static cache:[Ljava/lang/Object;

.field private static freeBuffers:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, "jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 27
    sget v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .registers 7

    .prologue
    .line 31
    sget-object v5, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v5

    .line 34
    :try_start_3
    sget v4, Ljcifs/smb/BufferCache;->freeBuffers:I

    if-lez v4, :cond_2d

    .line 35
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    sget v4, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v3, v4, :cond_2d

    .line 36
    sget-object v4, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2a

    .line 37
    sget-object v4, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 38
    .local v1, buf:[B
    sget-object v4, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v4, v3

    .line 39
    sget v4, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 40
    monitor-exit v5

    move-object v2, v1

    .line 47
    .end local v1           #buf:[B
    .local v2, buf:[B
    :goto_29
    return-object v2

    .line 35
    .end local v2           #buf:[B
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 45
    :cond_2d
    const v4, 0xffff

    new-array v1, v4, [B

    .line 47
    .restart local v1       #buf:[B
    monitor-exit v5

    move-object v2, v1

    .end local v1           #buf:[B
    .restart local v2       #buf:[B
    goto :goto_29

    .line 48
    .end local v2           #buf:[B
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v4
.end method

.method static getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V
    .registers 4
    .parameter "req"
    .parameter "rsp"

    .prologue
    .line 51
    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_3
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 53
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static releaseBuffer([B)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 57
    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_3
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    sget v3, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v1, v3, :cond_23

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    sget v1, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v0, v1, :cond_23

    .line 60
    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 61
    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 62
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 63
    monitor-exit v2

    .line 68
    .end local v0           #i:I
    :goto_1f
    return-void

    .line 59
    .restart local v0       #i:I
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 67
    .end local v0           #i:I
    :cond_23
    monitor-exit v2

    goto :goto_1f

    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
