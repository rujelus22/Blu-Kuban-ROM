.class public abstract Lcom/google/googlenav/friend/history/u;
.super Lcom/google/googlenav/friend/history/I;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected final b:Lcom/google/googlenav/friend/history/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/I;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/history/u;)I
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    iget-object v1, p1, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    return v0
.end method

.method public c()Lcom/google/googlenav/friend/history/b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/google/googlenav/friend/history/u;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/u;->a(Lcom/google/googlenav/friend/history/u;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    if-ne p0, p1, :cond_5

    .line 50
    const/4 v0, 0x1

    .line 60
    :cond_4
    :goto_4
    return v0

    .line 52
    :cond_5
    if-eqz p1, :cond_4

    .line 55
    instance-of v1, p1, Lcom/google/googlenav/friend/history/u;

    if-eqz v1, :cond_4

    .line 59
    check-cast p1, Lcom/google/googlenav/friend/history/u;

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    iget-object v1, p1, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/friend/history/u;->b:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/b;->hashCode()I

    move-result v0

    return v0
.end method
