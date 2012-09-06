.class public Lcom/google/googlenav/bM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/google/googlenav/bM;->a:Ljava/lang/String;

    .line 366
    iput-boolean p2, p0, Lcom/google/googlenav/bM;->b:Z

    .line 367
    iput p3, p0, Lcom/google/googlenav/bM;->c:I

    .line 368
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/googlenav/bM;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/google/googlenav/bM;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    if-ne p0, p1, :cond_5

    .line 401
    const/4 v0, 0x1

    .line 422
    :cond_4
    :goto_4
    return v0

    .line 403
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 407
    check-cast p1, Lcom/google/googlenav/bM;

    .line 409
    invoke-virtual {p0}, Lcom/google/googlenav/bM;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->b()Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/google/googlenav/bM;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->c()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_33
    invoke-virtual {p1}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 422
    :cond_3f
    invoke-virtual {p0}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/bM;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "open"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " until "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which is in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {p0}, Lcom/google/googlenav/bM;->c()I

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

    invoke-virtual {p0}, Lcom/google/googlenav/bM;->c()I

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
