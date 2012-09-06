.class LaS/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/m;

.field final synthetic b:LaS/o;


# direct methods
.method constructor <init>(LaS/o;LaM/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, LaS/r;->b:LaS/o;

    iput-object p2, p0, LaS/r;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, LaS/r;->b:LaS/o;

    invoke-virtual {v0}, LaS/o;->d()LaS/h;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1d

    .line 460
    iget-object v1, p0, LaS/r;->b:LaS/o;

    invoke-static {v1}, LaS/o;->a(LaS/o;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-static {v1, v0, v2}, LaS/a;->a(Lcom/google/googlenav/ai;LaS/h;Z)V

    .line 461
    iget-object v0, p0, LaS/r;->a:LaM/m;

    iget-object v1, p0, LaS/r;->b:LaS/o;

    invoke-static {v1}, LaS/o;->a(LaS/o;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LaM/m;->a(Lcom/google/googlenav/ai;Z)V

    .line 463
    :cond_1d
    return-void
.end method
