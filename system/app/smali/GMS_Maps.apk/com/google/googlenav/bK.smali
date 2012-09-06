.class Lcom/google/googlenav/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/googlenav/bk;->a:Lcom/google/googlenav/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/br;
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/googlenav/br;->c()Lcom/google/googlenav/br;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/googlenav/bk;->a()Lcom/google/googlenav/br;

    move-result-object v0

    return-object v0
.end method
