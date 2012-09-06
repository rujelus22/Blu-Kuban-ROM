.class public LaM/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:LY/d;

.field private b:J

.field private final c:LaM/aG;


# direct methods
.method public constructor <init>(LY/c;LaM/aG;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, LaM/aF;->c:LaM/aG;

    .line 52
    new-instance v0, LY/d;

    invoke-direct {v0, p1, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaM/aF;->a:LY/d;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 60
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, LaM/aF;->b:J

    .line 62
    iget-object v0, p0, LaM/aF;->a:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 63
    iget-object v0, p0, LaM/aF;->a:LY/d;

    iget-wide v1, p0, LaM/aF;->b:J

    invoke-virtual {v0, v1, v2}, LY/d;->b(J)V

    .line 64
    iget-object v0, p0, LaM/aF;->a:LY/d;

    invoke-virtual {v0}, LY/d;->g()V

    .line 65
    return-void
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 81
    iget-wide v0, p0, LaM/aF;->b:J

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public run()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LaM/aF;->c:LaM/aG;

    invoke-interface {v0}, LaM/aG;->a()V

    .line 74
    return-void
.end method
