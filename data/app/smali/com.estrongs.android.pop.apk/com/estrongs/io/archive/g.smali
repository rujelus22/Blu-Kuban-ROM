.class public Lcom/estrongs/io/archive/g;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/g;->a:J

    iput v2, p0, Lcom/estrongs/io/archive/g;->b:I

    iput v2, p0, Lcom/estrongs/io/archive/g;->c:I

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/io/archive/g;->a:J

    return-wide v0
.end method

.method public a(Ljava/io/File;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_13
    if-lt v1, v3, :cond_37

    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    iget v1, p0, Lcom/estrongs/io/archive/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/io/archive/g;->c:I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_34
    if-lt v0, v2, :cond_3f

    :goto_36
    return-void

    :cond_37
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3f
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_47
    iget v0, p0, Lcom/estrongs/io/archive/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/g;->b:I

    iget-wide v0, p0, Lcom/estrongs/io/archive/g;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/g;->a:J

    goto :goto_36
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/estrongs/io/archive/g;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/estrongs/io/archive/g;->c:I

    return v0
.end method
