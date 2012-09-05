.class public La/a/a;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, La/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, La/a/a;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 5

    const/4 v3, 0x0

    array-length v0, p0

    new-instance v1, La/a/c;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, v2}, La/a/c;-><init>([B)V

    invoke-virtual {v1, p0, v0}, La/a/c;->a([BI)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget v0, v1, La/a/c;->b:I

    iget-object v2, v1, La/a/c;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_25

    iget-object v0, v1, La/a/c;->a:[B

    :goto_24
    return-object v0

    :cond_25
    iget v0, v1, La/a/c;->b:I

    new-array v0, v0, [B

    iget-object v2, v1, La/a/c;->a:[B

    iget v1, v1, La/a/c;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24
.end method

.method public static b([B)[B
    .registers 6

    array-length v2, p0

    new-instance v3, La/a/d;

    invoke-direct {v3}, La/a/d;-><init>()V

    div-int/lit8 v0, v2, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-boolean v1, v3, La/a/d;->d:Z

    if-eqz v1, :cond_3c

    rem-int/lit8 v1, v2, 0x3

    if-lez v1, :cond_14

    add-int/lit8 v0, v0, 0x4

    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v1, v3, La/a/d;->e:Z

    if-eqz v1, :cond_27

    if-lez v2, :cond_27

    add-int/lit8 v1, v2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, La/a/d;->f:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    :goto_25
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_27
    new-array v1, v0, [B

    iput-object v1, v3, La/a/d;->a:[B

    invoke-virtual {v3, p0, v2}, La/a/d;->a([BI)Z

    sget-boolean v1, La/a/a;->a:Z

    if-nez v1, :cond_4a

    iget v1, v3, La/a/d;->b:I

    if-eq v1, v0, :cond_4a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3c
    rem-int/lit8 v1, v2, 0x3

    packed-switch v1, :pswitch_data_4e

    goto :goto_14

    :pswitch_42
    add-int/lit8 v0, v0, 0x2

    goto :goto_14

    :pswitch_45
    add-int/lit8 v0, v0, 0x3

    goto :goto_14

    :cond_48
    const/4 v1, 0x1

    goto :goto_25

    :cond_4a
    iget-object v0, v3, La/a/d;->a:[B

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method
