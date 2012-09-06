.class public Lcom/estrongs/android/util/r;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field j:Z

.field private k:Lcom/estrongs/android/util/s;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->a:J

    iput v2, p0, Lcom/estrongs/android/util/r;->b:I

    iput v2, p0, Lcom/estrongs/android/util/r;->c:I

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->d:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->e:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->f:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->g:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->h:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->i:J

    iput-boolean v2, p0, Lcom/estrongs/android/util/r;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/util/s;)V
    .registers 5

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->a:J

    iput v2, p0, Lcom/estrongs/android/util/r;->b:I

    iput v2, p0, Lcom/estrongs/android/util/r;->c:I

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->d:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->e:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->f:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->g:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->h:J

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->i:J

    iput-boolean v2, p0, Lcom/estrongs/android/util/r;->j:Z

    iput-object p1, p0, Lcom/estrongs/android/util/r;->k:Lcom/estrongs/android/util/s;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/r;->j:Z

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/util/r;->j:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/util/r;->k:Lcom/estrongs/android/util/s;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/estrongs/android/util/r;->k:Lcom/estrongs/android/util/s;

    invoke-interface {v1, p1}, Lcom/estrongs/android/util/s;->a(Ljava/io/File;)V

    :cond_f
    const-string v1, "/"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/estrongs/android/util/r;->j:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_29

    array-length v3, v2

    move v1, v0

    :goto_27
    if-lt v1, v3, :cond_58

    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_64

    iget v1, p0, Lcom/estrongs/android/util/r;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/android/util/r;->c:I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    :goto_4a
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    iget-boolean v4, p0, Lcom/estrongs/android/util/r;->j:Z

    if-nez v4, :cond_5

    :try_start_52
    invoke-virtual {p0, v3}, Lcom/estrongs/android/util/r;->a(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/StackOverflowError; {:try_start_52 .. :try_end_55} :catch_81

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    aget-object v4, v2, v1

    iget-boolean v5, p0, Lcom/estrongs/android/util/r;->j:Z

    if-nez v5, :cond_5

    :try_start_5e
    invoke-virtual {p0, v4}, Lcom/estrongs/android/util/r;->a(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/StackOverflowError; {:try_start_5e .. :try_end_61} :catch_7f

    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_64
    iget v0, p0, Lcom/estrongs/android/util/r;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/util/r;->b:I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/util/r;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->a:J

    goto :goto_5

    :catch_7f
    move-exception v4

    goto :goto_61

    :catch_81
    move-exception v3

    goto :goto_55
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->A(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->g:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->g:J

    :goto_f
    return-void

    :cond_10
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->e:J

    goto :goto_f

    :cond_1c
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->e(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->f:J

    goto :goto_f

    :cond_28
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->d:J

    goto :goto_f

    :cond_34
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->h(I)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->s(I)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->w(I)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->t(I)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->k(I)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_52
    iget-wide v0, p0, Lcom/estrongs/android/util/r;->h:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->h:J

    goto :goto_f

    :cond_58
    iget-wide v0, p0, Lcom/estrongs/android/util/r;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/android/util/r;->i:J

    goto :goto_f
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/r;->a(Ljava/io/File;)V

    goto :goto_4
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/util/r;->a:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/util/r;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/util/r;->c:I

    return v0
.end method
