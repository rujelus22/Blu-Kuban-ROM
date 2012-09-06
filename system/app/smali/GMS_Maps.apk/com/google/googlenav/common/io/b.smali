.class public abstract Lcom/google/googlenav/common/io/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/j;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/googlenav/common/io/l;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/io/l;-><init>(Lcom/google/googlenav/common/io/j;)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/b;->a:Lcom/google/googlenav/common/io/l;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/common/io/b;->a:Lcom/google/googlenav/common/io/l;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/l;->a()V

    .line 64
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/common/io/b;->a:Lcom/google/googlenav/common/io/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/l;->a(Z)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/common/io/b;->a:Lcom/google/googlenav/common/io/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/l;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public a_(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/common/io/b;->a:Lcom/google/googlenav/common/io/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/l;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
