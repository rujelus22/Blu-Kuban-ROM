.class final LaT/e;
.super LY/b;
.source "SourceFile"


# direct methods
.method constructor <init>(LY/c;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 131
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 132
    return-void
.end method
