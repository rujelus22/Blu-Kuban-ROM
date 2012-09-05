.class public LaE/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:LaJ/B;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lt/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LaE/l;->a()V

    invoke-virtual {p0, p1}, LaE/l;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, LaE/l;->b()V

    invoke-virtual {p0}, LaE/l;->e()V

    invoke-virtual {p0}, LaE/l;->h()V

    invoke-virtual {p0}, LaE/l;->i()V

    invoke-virtual {p0}, LaE/l;->j()V

    invoke-virtual {p0}, LaE/l;->l()V

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, LaE/l;->c:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, LaE/l;->f:J

    return-void
.end method

.method public a(LaJ/B;)V
    .registers 2

    iput-object p1, p0, LaE/l;->b:LaJ/B;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaE/l;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lt/y;)V
    .registers 2

    iput-object p1, p0, LaE/l;->g:Lt/y;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaE/l;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, LaE/l;->d:I

    return-void
.end method

.method public c()LaJ/B;
    .registers 2

    iget-object v0, p0, LaE/l;->b:LaJ/B;

    return-object v0
.end method

.method public c(I)V
    .registers 3

    invoke-static {p1}, Lar/i;->a(I)I

    move-result v0

    iput v0, p0, LaE/l;->e:I

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, LaE/l;->b:LaJ/B;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaE/l;->b:LaJ/B;

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, LaE/l;->c:I

    return v0
.end method

.method public g()Z
    .registers 3

    iget v0, p0, LaE/l;->c:I

    if-ltz v0, :cond_d

    iget v0, p0, LaE/l;->c:I

    const v1, 0x1869f

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, LaE/l;->c:I

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, LaE/l;->d:I

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, LaE/l;->e:I

    return-void
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, LaE/l;->f:J

    return-wide v0
.end method

.method public l()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaE/l;->f:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, LaE/l;->g:Lt/y;

    if-nez v0, :cond_67

    const-string v0, ""

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationFix[source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaE/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", point="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaE/l;->b:LaJ/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/l;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/l;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LaE/l;->f:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/l;->g:Lt/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
