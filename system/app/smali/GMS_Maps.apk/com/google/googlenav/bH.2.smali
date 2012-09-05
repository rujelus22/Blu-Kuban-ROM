.class public Lcom/google/googlenav/bH;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bH;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/googlenav/bH;->b:Z

    iput p3, p0, Lcom/google/googlenav/bH;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bH;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bH;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bH;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Lcom/google/googlenav/bH;

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/bH;->b()Z

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/bH;->c()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_33
    invoke-virtual {p1}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3f
    invoke-virtual {p0}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "open"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " until "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which is in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->c()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x40ac200000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/bH;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    const-string v0, "closed"

    goto :goto_d
.end method
