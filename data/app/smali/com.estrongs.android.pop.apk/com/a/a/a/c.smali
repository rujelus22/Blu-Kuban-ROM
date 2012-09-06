.class Lcom/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/a/a/a/c;->a([B)V

    return-void
.end method


# virtual methods
.method a([B)V
    .registers 12

    const/4 v2, 0x1

    const/16 v9, 0x10

    const/4 v1, 0x0

    const-string v0, "authChallenge"

    invoke-static {v0, p1}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    move v0, v1

    :goto_a
    array-length v3, p1

    if-lt v0, v3, :cond_e

    return-void

    :cond_e
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x2

    packed-switch v3, :pswitch_data_c6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "invalid authChallenge tag "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->b(Ljava/lang/String;)V

    :goto_2f
    add-int v0, v5, v4

    goto :goto_a

    :pswitch_32
    if-eq v4, v9, :cond_3c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX Digest Challenge error in tag Nonce"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-array v0, v9, [B

    iput-object v0, p0, Lcom/a/a/a/c;->a:[B

    iget-object v0, p0, Lcom/a/a/a/c;->a:[B

    invoke-static {p1, v5, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :pswitch_46
    aget-byte v3, p1, v5

    const-string v0, "authChallenge options"

    int-to-long v6, v3

    invoke-static {v0, v6, v7}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5d

    move v0, v2

    :goto_53
    iput-boolean v0, p0, Lcom/a/a/a/c;->c:Z

    and-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_5f

    move v0, v2

    :goto_5a
    iput-boolean v0, p0, Lcom/a/a/a/c;->d:Z

    goto :goto_2f

    :cond_5d
    move v0, v1

    goto :goto_53

    :cond_5f
    move v0, v1

    goto :goto_5a

    :pswitch_61
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v4, -0x1

    new-array v3, v3, [B

    add-int/lit8 v6, v5, 0x1

    array-length v7, v3

    invoke-static {p1, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0xff

    if-ne v0, v6, :cond_7a

    invoke-static {v3}, Lcom/a/a/a/v;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_7a
    if-nez v0, :cond_86

    new-instance v0, Ljava/lang/String;

    const-string v6, "ASCII"

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_86
    const/16 v6, 0x9

    if-gt v0, v6, :cond_a1

    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ISO-8859-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_a1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported charset code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " in Challenge"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    add-int/lit8 v6, v4, -0x1

    const-string v7, "ASCII"

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/c;->b:Ljava/lang/String;

    goto/16 :goto_2f

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_32
        :pswitch_46
        :pswitch_61
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/c;->c:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/c;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
