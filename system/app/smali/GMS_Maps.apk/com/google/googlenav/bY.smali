.class Lcom/google/googlenav/by;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/ImmutableList;

.field final b:Lcom/google/common/collect/bx;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/by;->a:Lcom/google/common/collect/ImmutableList;

    .line 327
    invoke-static {}, Lcom/google/common/collect/bx;->h()Lcom/google/common/collect/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/by;->b:Lcom/google/common/collect/bx;

    .line 328
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/bx;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/google/googlenav/by;->a:Lcom/google/common/collect/ImmutableList;

    .line 332
    iput-object p2, p0, Lcom/google/googlenav/by;->b:Lcom/google/common/collect/bx;

    .line 333
    return-void
.end method
