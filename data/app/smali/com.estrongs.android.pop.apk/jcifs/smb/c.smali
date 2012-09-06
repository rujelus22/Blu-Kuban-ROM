.class public Ljcifs/smb/c;
.super Ljava/lang/Object;


# static fields
.field static a:[Ljava/lang/Object;

.field private static final b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/c;->b:I

    sget v0, Ljcifs/smb/c;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Ljcifs/smb/c;->c:I

    return-void
.end method

.method static a(Ljcifs/smb/aq;Ljcifs/smb/ar;)V
    .registers 4

    sget-object v1, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljcifs/smb/c;->a()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/aq;->V:[B

    invoke-static {}, Ljcifs/smb/c;->a()[B

    move-result-object v0

    iput-object v0, p1, Ljcifs/smb/ar;->O:[B

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static a([B)V
    .registers 4

    sget-object v1, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget v0, Ljcifs/smb/c;->c:I

    sget v2, Ljcifs/smb/c;->b:I

    if-ge v0, v2, :cond_23

    const/4 v0, 0x0

    :goto_a
    sget v2, Ljcifs/smb/c;->b:I

    if-ge v0, v2, :cond_23

    sget-object v2, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    sget-object v2, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    aput-object p0, v2, v0

    sget v0, Ljcifs/smb/c;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljcifs/smb/c;->c:I

    monitor-exit v1

    :goto_1f
    return-void

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    monitor-exit v1

    goto :goto_1f

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public static a()[B
    .registers 5

    sget-object v2, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget v0, Ljcifs/smb/c;->c:I

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    sget v0, Ljcifs/smb/c;->b:I

    if-ge v1, v0, :cond_2c

    sget-object v0, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_28

    sget-object v0, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    check-cast v0, [B

    sget-object v3, Ljcifs/smb/c;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    sget v1, Ljcifs/smb/c;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljcifs/smb/c;->c:I

    monitor-exit v2

    :goto_27
    return-object v0

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_2c
    const v0, 0xffff

    new-array v0, v0, [B

    monitor-exit v2

    goto :goto_27

    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method
