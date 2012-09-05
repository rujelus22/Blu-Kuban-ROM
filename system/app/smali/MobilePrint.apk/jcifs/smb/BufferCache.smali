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

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .registers 6

    .prologue
    .line 31
    sget-object v4, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v4

    .line 34
    :try_start_3
    sget v3, Ljcifs/smb/BufferCache;->freeBuffers:I

    if-lez v3, :cond_c

    .line 35
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    sget v3, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-lt v2, v3, :cond_14

    .line 45
    :cond_c
    const v3, 0xffff

    new-array v0, v3, [B

    .line 47
    .local v0, buf:[B
    monitor-exit v4

    move-object v1, v0

    .end local v0           #buf:[B
    .local v1, buf:[B
    :goto_13
    return-object v1

    .line 36
    .end local v1           #buf:[B
    :cond_14
    sget-object v3, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2e

    .line 37
    sget-object v3, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v0, v3, v2

    check-cast v0, [B

    .line 38
    .restart local v0       #buf:[B
    sget-object v3, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v3, v2

    .line 39
    sget v3, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 40
    monitor-exit v4

    move-object v1, v0

    .end local v0           #buf:[B
    .restart local v1       #buf:[B
    goto :goto_13

    .line 35
    .end local v1           #buf:[B
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 31
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v3
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

    .line 51
    monitor-exit v1

    .line 55
    return-void

    .line 51
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

    if-ge v1, v3, :cond_e

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    sget v1, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-lt v0, v1, :cond_10

    .line 57
    .end local v0           #i:I
    :cond_e
    monitor-exit v2

    .line 68
    :goto_f
    return-void

    .line 60
    .restart local v0       #i:I
    :cond_10
    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_25

    .line 61
    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 62
    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    .line 63
    monitor-exit v2

    goto :goto_f

    .line 57
    .end local v0           #i:I
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1

    .line 59
    .restart local v0       #i:I
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
