.class public Le/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected final k:J

.field protected l:Ljava/util/List;

.field protected m:I

.field protected n:I


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Le/b;->a:I

    iput v0, p0, Le/b;->b:I

    iput v0, p0, Le/b;->c:I

    iput v0, p0, Le/b;->d:I

    iput v0, p0, Le/b;->e:I

    iput v0, p0, Le/b;->f:I

    iput v0, p0, Le/b;->g:I

    iput v1, p0, Le/b;->h:I

    iput v1, p0, Le/b;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b;->l:Ljava/util/List;

    iput-wide p1, p0, Le/b;->k:J

    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Le/b;)V
    .registers 6

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "[cid: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->a:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lac: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->b:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mcc: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->d:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mnc: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->e:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " radioType: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->m:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " signalStrength: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/b;->n:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " neighbors["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p1, Le/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c;

    if-eqz v1, :cond_64

    const/4 v1, 0x0

    :goto_60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_51

    :cond_64
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_60

    :cond_6a
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;Le/b;)V
    .registers 6

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    return-void

    :cond_8
    const-string v0, "[cid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " lac: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mcc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mnc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->e:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " radioType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->m:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " signalStrength: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/b;->n:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " neighbors["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v1, p1, Le/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c;

    if-eqz v1, :cond_64

    const/4 v1, 0x0

    :goto_60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_64
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_6a
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method private a(LW/a;III)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1, p2}, LW/a;->c(I)I

    move-result v2

    if-ne v2, p3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    if-eq p3, p4, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private a(LW/a;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1, p2}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p2}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Le/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-direct {p0, p3, p4}, Le/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_4

    if-eqz p2, :cond_e

    :cond_4
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(J)LW/a;
    .registers 13

    const v4, 0x7fffffff

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide v6, 0x4085b38e38e38e39L

    const/4 v3, -0x1

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->X:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iget v1, p0, Le/b;->b:I

    invoke-virtual {v0, v8, v1}, LW/a;->g(II)V

    iget v1, p0, Le/b;->a:I

    invoke-virtual {v0, v9, v1}, LW/a;->g(II)V

    iget v1, p0, Le/b;->e:I

    if-eq v1, v3, :cond_24

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    :cond_24
    iget v1, p0, Le/b;->d:I

    if-eq v1, v3, :cond_2c

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    :cond_2c
    iget v1, p0, Le/b;->n:I

    const/16 v2, -0x270f

    if-eq v1, v2, :cond_36

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    :cond_36
    iget v1, p0, Le/b;->c:I

    if-eq v1, v3, :cond_41

    const/16 v1, 0x8

    iget v2, p0, Le/b;->c:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_41
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x6

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_4c
    iget v1, p0, Le/b;->h:I

    iget v2, p0, Le/b;->i:I

    if-eq v1, v4, :cond_6c

    if-eq v2, v4, :cond_6c

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->w:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    int-to-double v4, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {v3, v8, v1}, LW/a;->g(II)V

    int-to-double v1, v2

    mul-double/2addr v1, v6

    double-to-int v1, v1

    invoke-virtual {v3, v9, v1}, LW/a;->g(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, LW/a;->a(ILW/a;)V

    :cond_6c
    const/16 v1, 0xa

    invoke-virtual {p0}, Le/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    return-object v0
.end method

.method public a()Le/b;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Le/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Le/b;->n:I

    return-void
.end method

.method public a(LW/a;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Le/b;->n()I

    move-result v0

    invoke-direct {p0, p1, v2, v0, v1}, Le/b;->a(LW/a;III)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    iget-object v3, p0, Le/b;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v3, v4}, Le/b;->a(LW/a;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v3, 0x4

    iget v0, p0, Le/b;->f:I

    if-ne v0, v1, :cond_30

    move v0, v1

    :goto_1c
    invoke-direct {p0, p1, v3, v0, v1}, Le/b;->a(LW/a;III)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v3, 0x5

    iget v0, p0, Le/b;->g:I

    if-ne v0, v1, :cond_33

    move v0, v1

    :goto_28
    invoke-direct {p0, p1, v3, v0, v1}, Le/b;->a(LW/a;III)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    :goto_2f
    return v0

    :cond_30
    iget v0, p0, Le/b;->g:I

    goto :goto_1c

    :cond_33
    iget v0, p0, Le/b;->f:I

    goto :goto_28

    :cond_36
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(Le/b;)Z
    .registers 4

    iget v0, p0, Le/b;->a:I

    iget v1, p1, Le/b;->a:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Le/b;->b:I

    iget v1, p1, Le/b;->b:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()I
    .registers 2

    iget v0, p0, Le/b;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Le/b;->b:I

    return v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/b;->l:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Le/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Le/b;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Le/b;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Le/b;->f:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Le/b;->g:I

    return v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Le/b;->k:J

    return-wide v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Le/b;->m:I

    return v0
.end method

.method public j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Le/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public k()Z
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Le/b;->a:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Le/b;->b:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Le/b;->d:I

    if-ltz v0, :cond_13

    iget v0, p0, Le/b;->e:I

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public l()I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, -0x1

    iget v2, p0, Le/b;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :goto_7
    return v0

    :cond_8
    iget v2, p0, Le/b;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v0, 0x4

    goto :goto_7

    :cond_f
    iget v2, p0, Le/b;->m:I

    if-ne v2, v0, :cond_15

    const/4 v0, 0x5

    goto :goto_7

    :cond_15
    move v0, v1

    goto :goto_7
.end method

.method public m()LW/a;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->ad:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    invoke-virtual {p0}, Le/b;->n()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    iget v1, p0, Le/b;->f:I

    if-eq v1, v3, :cond_24

    iget v1, p0, Le/b;->g:I

    if-eq v1, v3, :cond_24

    const/4 v1, 0x5

    iget v2, p0, Le/b;->f:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x4

    iget v2, p0, Le/b;->g:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_24
    iget-object v1, p0, Le/b;->j:Ljava/lang/String;

    if-eqz v1, :cond_2e

    const/4 v1, 0x2

    iget-object v2, p0, Le/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    :cond_2e
    return-object v0
.end method

.method public n()I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, -0x1

    iget v2, p0, Le/b;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :goto_7
    return v0

    :cond_8
    iget v2, p0, Le/b;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v0, 0x4

    goto :goto_7

    :cond_f
    iget v2, p0, Le/b;->m:I

    if-ne v2, v0, :cond_15

    const/4 v0, 0x5

    goto :goto_7

    :cond_15
    move v0, v1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Le/b;->a(Ljava/lang/StringBuilder;Le/b;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
