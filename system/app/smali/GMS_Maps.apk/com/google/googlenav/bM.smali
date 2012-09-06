.class Lcom/google/googlenav/bm;
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
    .line 223
    iput-object p1, p0, Lcom/google/googlenav/bm;->a:Lcom/google/googlenav/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/googlenav/bm;->a:Lcom/google/googlenav/bj;

    invoke-static {v0}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/br;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/br;->a(Lcom/google/googlenav/br;)V

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/googlenav/bm;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
