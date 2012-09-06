.class Lcom/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/a/a/a/b;->a:J

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    sput-object v0, Lcom/a/a/a/b;->b:[B

    return-void
.end method

.method static a(Lcom/a/a/a/j;Lcom/a/a/a/j;La/b/a;)V
    .registers 9

    invoke-virtual {p0}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/a/a/a/j;->e()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v2, Lcom/a/a/a/c;

    invoke-direct {v2, v0}, Lcom/a/a/a/c;-><init>([B)V

    invoke-virtual {v2}, Lcom/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/a/c;->a()Z

    move-result v3

    invoke-virtual {v2}, Lcom/a/a/a/c;->b()Z

    move-result v4

    invoke-interface {p2, v0, v3, v4}, La/b/a;->a(Ljava/lang/String;ZZ)La/b/e;

    move-result-object v0

    new-instance v3, Lcom/a/a/a/d;

    invoke-direct {v3}, Lcom/a/a/a/d;-><init>()V

    iget-object v4, v2, Lcom/a/a/a/c;->a:[B

    iput-object v4, v3, Lcom/a/a/a/d;->c:[B

    const-string v4, "got nonce"

    iget-object v5, v3, Lcom/a/a/a/d;->c:[B

    invoke-static {v4, v5}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    invoke-virtual {v2}, Lcom/a/a/a/c;->a()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v0}, La/b/e;->a()[B

    move-result-object v2

    iput-object v2, v3, Lcom/a/a/a/d;->b:[B

    :cond_48
    new-instance v2, Lcom/a/a/a/a;

    invoke-direct {v2}, Lcom/a/a/a/a;-><init>()V

    iget-object v4, v3, Lcom/a/a/a/d;->c:[B

    invoke-virtual {v2, v4}, Lcom/a/a/a/a;->a([B)V

    sget-object v4, Lcom/a/a/a/b;->b:[B

    invoke-virtual {v2, v4}, Lcom/a/a/a/a;->a([B)V

    invoke-virtual {v0}, La/b/e;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/a/a/a;->a([B)V

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()[B

    move-result-object v0

    iput-object v0, v3, Lcom/a/a/a/d;->a:[B

    const-string v0, "send digest"

    iget-object v2, v3, Lcom/a/a/a/d;->a:[B

    invoke-static {v0, v2}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/a/a/a/d;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/a/j;->a([B)V

    goto :goto_b
.end method

.method static a(Lcom/a/a/a/j;La/b/a;La/b/f;Ljava/util/Vector;)Z
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/a/a/j;->f()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/a/a/a/j;->g()Ljava/util/Enumeration;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_8

    :cond_15
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/a/a/a/d;

    invoke-direct {v4}, Lcom/a/a/a/d;-><init>()V

    invoke-virtual {v4, v0}, Lcom/a/a/a/d;->a([B)V

    const-string v0, "got nonce"

    iget-object v2, v4, Lcom/a/a/a/d;->c:[B

    invoke-static {v0, v2}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_2f
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_40

    move-object v0, v2

    :goto_36
    if-nez v0, :cond_51

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response for unknown challenge"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    iget-object v6, v0, Lcom/a/a/a/c;->a:[B

    iget-object v7, v4, Lcom/a/a/a/d;->c:[B

    invoke-static {v6, v7}, Lcom/a/a/a/b;->a([B[B)Z

    move-result v6

    if-eqz v6, :cond_2f

    goto :goto_36

    :cond_51
    iget-object v0, v4, Lcom/a/a/a/d;->b:[B

    invoke-interface {p1, v0}, La/b/a;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_61

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication request failed, password is not supplied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v2, Lcom/a/a/a/a;

    invoke-direct {v2}, Lcom/a/a/a/a;-><init>()V

    iget-object v5, v4, Lcom/a/a/a/d;->c:[B

    invoke-virtual {v2, v5}, Lcom/a/a/a/a;->a([B)V

    sget-object v5, Lcom/a/a/a/b;->b:[B

    invoke-virtual {v2, v5}, Lcom/a/a/a/a;->a([B)V

    invoke-virtual {v2, v0}, Lcom/a/a/a/a;->a([B)V

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()[B

    move-result-object v0

    iget-object v2, v4, Lcom/a/a/a/d;->a:[B

    invoke-static {v2, v0}, Lcom/a/a/a/b;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "got digest"

    iget-object v5, v4, Lcom/a/a/a/d;->a:[B

    invoke-static {v2, v5}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    const-string v2, "  expected"

    invoke-static {v2, v0}, Lcom/a/a/a;->a(Ljava/lang/String;[B)V

    if-eqz p2, :cond_94

    iget-object v0, v4, Lcom/a/a/a/d;->b:[B

    invoke-virtual {p2, v0}, La/b/f;->a([B)V

    goto/16 :goto_d

    :cond_94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    const/4 v0, 0x1

    goto/16 :goto_8
.end method

.method static a([B[B)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
