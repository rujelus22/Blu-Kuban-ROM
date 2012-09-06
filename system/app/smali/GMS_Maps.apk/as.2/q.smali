.class LaS/q;
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
    .line 441
    iput-object p1, p0, LaS/q;->b:LaS/o;

    iput-object p2, p0, LaS/q;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v0, p0, LaS/q;->b:LaS/o;

    invoke-virtual {v0}, LaS/o;->h()LaS/h;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1d

    .line 446
    iget-object v1, p0, LaS/q;->b:LaS/o;

    invoke-static {v1}, LaS/o;->a(LaS/o;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-static {v1, v0, v2}, LaS/a;->a(Lcom/google/googlenav/ai;LaS/h;Z)V

    .line 447
    iget-object v0, p0, LaS/q;->a:LaM/m;

    iget-object v1, p0, LaS/q;->b:LaS/o;

    invoke-static {v1}, LaS/o;->a(LaS/o;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LaM/m;->a(Lcom/google/googlenav/ai;Z)V

    .line 449
    :cond_1d
    return-void
.end method
