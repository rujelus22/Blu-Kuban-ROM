.class abstract Lc/z;
.super Ljava/lang/Object;

# interfaces
.implements Lc/A;


# instance fields
.field private final a:I

.field private final b:LW/d;

.field private final c:LW/d;

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method protected constructor <init>(ILW/d;LW/d;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/z;->a:I

    iput-object p2, p0, Lc/z;->b:LW/d;

    iput-object p3, p0, Lc/z;->c:LW/d;

    iput p4, p0, Lc/z;->d:I

    iput p5, p0, Lc/z;->e:I

    iput p6, p0, Lc/z;->f:I

    return-void
.end method

.method private a(Lc/v;)LW/a;
    .registers 9

    new-instance v1, LW/a;

    iget-object v0, p0, Lc/z;->b:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    invoke-virtual {p1}, Lc/v;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/F;

    new-instance v4, LW/a;

    iget-object v5, p0, Lc/z;->c:LW/d;

    invoke-direct {v4, v5}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v0}, Le/F;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5}, Lc/z;->a(LW/a;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v3, p0, Lc/z;->e:I

    invoke-virtual {v0}, Le/F;->b()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, LW/a;->b(IJ)V

    iget v3, p0, Lc/z;->f:I

    invoke-virtual {v0}, Le/F;->c()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, LW/a;->b(IJ)V

    iget v0, p0, Lc/z;->d:I

    invoke-virtual {v1, v0, v4}, LW/a;->a(ILW/a;)V

    goto :goto_f

    :cond_4b
    return-object v1
.end method


# virtual methods
.method protected abstract a(LW/a;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public a(Lc/v;Ljava/io/InputStream;)V
    .registers 13

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    iget v1, p0, Lc/z;->a:I

    if-eq v0, v1, :cond_2d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch while reading LRU cache file (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc/z;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    new-instance v1, LW/a;

    iget-object v0, p0, Lc/z;->b:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, p2}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    invoke-virtual {v1}, LW/a;->c()Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted LRU cache file: proto not valid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget v0, p0, Lc/z;->d:I

    invoke-virtual {v1, v0}, LW/a;->i(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v2, :cond_76

    iget v3, p0, Lc/z;->d:I

    invoke-virtual {v1, v3, v0}, LW/a;->d(II)LW/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc/z;->d(LW/a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lc/z;->c(LW/a;)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Lc/z;->e:I

    invoke-virtual {v3, v6}, LW/a;->d(I)J

    move-result-wide v6

    iget v8, p0, Lc/z;->f:I

    invoke-virtual {v3, v8}, LW/a;->d(I)J

    move-result-wide v8

    new-instance v3, Le/F;

    invoke-direct {v3, v5, v6, v7}, Le/F;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v3, v8, v9}, Le/F;->b(J)V

    invoke-virtual {p1, v4, v3}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_76
    return-void
.end method

.method public a(Lc/v;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0, p1}, Lc/z;->a(Lc/v;)LW/a;

    move-result-object v0

    iget v1, p0, Lc/z;->a:I

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, p2}, LW/a;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected abstract c(LW/a;)Ljava/lang/Object;
.end method

.method protected abstract d(LW/a;)Ljava/lang/Object;
.end method
