.class public Lcom/google/ads/util/g;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/ads/util/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/ads/util/g;->a:Z

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

.method public static a([B)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    new-instance v4, Lcom/google/ads/util/j;

    invoke-direct {v4}, Lcom/google/ads/util/j;-><init>()V

    div-int/lit8 v0, v3, 0x3

    mul-int/lit8 v1, v0, 0x4

    iget-boolean v0, v4, Lcom/google/ads/util/j;->d:Z

    if-eqz v0, :cond_45

    rem-int/lit8 v0, v3, 0x3

    if-lez v0, :cond_16

    add-int/lit8 v1, v1, 0x4

    :cond_16
    :goto_16
    :pswitch_16
    iget-boolean v0, v4, Lcom/google/ads/util/j;->e:Z

    if-eqz v0, :cond_5b

    if-lez v3, :cond_5b

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v5, v0, 0x1

    iget-boolean v0, v4, Lcom/google/ads/util/j;->f:Z

    if-eqz v0, :cond_51

    const/4 v0, 0x2

    :goto_27
    mul-int/2addr v0, v5

    add-int/2addr v0, v1

    :goto_29
    new-array v1, v0, [B

    iput-object v1, v4, Lcom/google/ads/util/j;->a:[B

    invoke-virtual {v4, p0, v3}, Lcom/google/ads/util/j;->a([BI)Z

    sget-boolean v1, Lcom/google/ads/util/g;->a:Z

    if-nez v1, :cond_53

    iget v1, v4, Lcom/google/ads/util/j;->b:I

    if-eq v1, v0, :cond_53

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_45
    :try_start_45
    rem-int/lit8 v0, v3, 0x3

    packed-switch v0, :pswitch_data_5e

    goto :goto_16

    :pswitch_4b
    add-int/lit8 v1, v1, 0x2

    goto :goto_16

    :pswitch_4e
    add-int/lit8 v1, v1, 0x3

    goto :goto_16

    :cond_51
    const/4 v0, 0x1

    goto :goto_27

    :cond_53
    iget-object v0, v4, Lcom/google/ads/util/j;->a:[B

    const-string v1, "US-ASCII"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_5a} :catch_3e

    return-object v2

    :cond_5b
    move v0, v1

    goto :goto_29

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/google/ads/util/i;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/google/ads/util/i;-><init>([B)V

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/util/i;->a([BI)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v0, v2, Lcom/google/ads/util/i;->b:I

    iget-object v1, v2, Lcom/google/ads/util/i;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_29

    iget-object v0, v2, Lcom/google/ads/util/i;->a:[B

    :goto_28
    return-object v0

    :cond_29
    iget v0, v2, Lcom/google/ads/util/i;->b:I

    new-array v0, v0, [B

    iget-object v1, v2, Lcom/google/ads/util/i;->a:[B

    iget v2, v2, Lcom/google/ads/util/i;->b:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28
.end method
