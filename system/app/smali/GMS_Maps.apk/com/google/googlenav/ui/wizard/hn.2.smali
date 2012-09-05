.class public Lcom/google/googlenav/ui/wizard/hn;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hi;

.field private final b:Lcom/google/googlenav/ui/wizard/ho;

.field private final c:Lam/b;

.field private d:Lam/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hi;Lcom/google/googlenav/ah;ILcom/google/googlenav/ui/wizard/ho;)V
    .registers 10

    const/4 v4, 0x2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hi;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hn;->b:Lcom/google/googlenav/ui/wizard/ho;

    new-instance v0, Lam/b;

    sget-object v1, LbD/fu;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lam/b;->h(II)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/hn;->a(Lcom/google/googlenav/ah;)I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    invoke-virtual {v0, v4, v1}, Lam/b;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v2, 0x3

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/hn;->b(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->c()B

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_7a

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    :goto_36
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v2, 0x5

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v2, 0x6

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    if-ne v1, v4, :cond_60

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    invoke-static {v2}, LaJ/C;->c(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_60
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/hi;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/googlenav/ui/wizard/hi;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v2

    invoke-virtual {v2}, LaJ/p;->s()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_79
    return-void

    :cond_7a
    invoke-virtual {p2}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method private a(Lcom/google/googlenav/ah;)I
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aj()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->c()B

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->c()B

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_28

    :cond_26
    const/4 v0, 0x2

    goto :goto_11

    :cond_28
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private b(Lcom/google/googlenav/ah;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->ae()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v1

    const/16 v2, 0x6e

    const/16 v3, 0x79

    invoke-static {v1, v2, v3}, Lam/g;->d(Lam/b;II)J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x440

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_40
    return-object v0

    :cond_41
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x38

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/fu;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->d:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->b:Lcom/google/googlenav/ui/wizard/ho;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ho;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->d:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->d:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hn;->d:Lam/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hn;->b:Lcom/google/googlenav/ui/wizard/ho;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/ho;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4f

    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hn;->c:Lam/b;

    invoke-virtual {v3, v4}, Lam/b;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hi;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hi;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hn;->d:Lam/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_59
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
