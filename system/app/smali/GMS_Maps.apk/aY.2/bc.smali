.class public LaY/bc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/bS;

.field private b:Lcom/google/googlenav/bN;


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/bc;->b:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/googlenav/bS;
    .registers 2

    iget-object v0, p0, LaY/bc;->a:Lcom/google/googlenav/bS;

    return-object v0
.end method
