.class public Lcom/google/googlenav/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/af;


# instance fields
.field private a:LS/f;

.field private b:LS/f;


# virtual methods
.method public a(Lcom/google/googlenav/ui/ag;)LS/f;
    .registers 3
    .parameter

    .prologue
    .line 33
    check-cast p1, Lcom/google/googlenav/ui/e;

    invoke-static {p1}, Lcom/google/googlenav/ui/e;->a(Lcom/google/googlenav/ui/e;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/d;->a:LS/f;

    .line 36
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/d;->b:LS/f;

    goto :goto_a
.end method
