.class public Lcom/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/util/Date;

.field private f:Z

.field private g:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private h:J

.field private i:I

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lorg/apache/http/protocol/HttpContext;

.field private p:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/a/b/c;->a:I

    const-string v0, "OK"

    iput-object v0, p0, Lcom/a/b/c;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/a/b/c;->e:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/c;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/b/c;->j:J

    return-void
.end method


# virtual methods
.method protected final a()Lcom/a/b/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/c;->m:Z

    return-object p0
.end method

.method protected final a(I)Lcom/a/b/c;
    .registers 2

    iput p1, p0, Lcom/a/b/c;->i:I

    return-object p0
.end method

.method protected final a(Ljava/lang/String;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->n:Ljava/lang/String;

    return-object p0
.end method

.method protected final a(Ljava/util/Date;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->e:Ljava/util/Date;

    return-object p0
.end method

.method protected final a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p0
.end method

.method protected final a(Lorg/apache/http/protocol/HttpContext;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->o:Lorg/apache/http/protocol/HttpContext;

    return-object p0
.end method

.method protected final a(Z)Lcom/a/b/c;
    .registers 2

    iput-boolean p1, p0, Lcom/a/b/c;->f:Z

    return-object p0
.end method

.method protected final a([B)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->d:[B

    return-object p0
.end method

.method protected final a([Lorg/apache/http/Header;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->p:[Lorg/apache/http/Header;

    return-object p0
.end method

.method protected final b()Lcom/a/b/c;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/b/c;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/b/c;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/c;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/c;->m:Z

    return-object p0
.end method

.method protected final b(I)Lcom/a/b/c;
    .registers 2

    iput p1, p0, Lcom/a/b/c;->a:I

    return-object p0
.end method

.method protected final b(Ljava/lang/String;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected final c(Ljava/lang/String;)Lcom/a/b/c;
    .registers 2

    iput-object p1, p0, Lcom/a/b/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method protected final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c;->k:Z

    return v0
.end method

.method protected final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c;->m:Z

    return v0
.end method

.method protected final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c;->l:Z

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/a/b/c;->a:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()[B
    .registers 2

    iget-object v0, p0, Lcom/a/b/c;->d:[B

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/a/b/c;->i:I

    return v0
.end method
