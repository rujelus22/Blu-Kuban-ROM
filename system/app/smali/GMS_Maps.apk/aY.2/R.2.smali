.class LaY/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/Q;


# direct methods
.method constructor <init>(LaY/Q;)V
    .registers 2

    iput-object p1, p0, LaY/R;->a:LaY/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, LaY/R;->a:LaY/Q;

    iget-object v0, v0, LaY/Q;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->az()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, LaY/R;->a:LaY/Q;

    iget-object v0, v0, LaY/Q;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, LaY/R;->a:LaY/Q;

    iget-object v0, v0, LaY/Q;->a:LaY/K;

    invoke-static {v0}, LaY/K;->h(LaY/K;)V

    :goto_1c
    iget-object v0, p0, LaY/R;->a:LaY/Q;

    invoke-static {v0}, LaY/Q;->a(LaY/Q;)LaX/h;

    move-result-object v0

    iget-object v1, p0, LaY/R;->a:LaY/Q;

    iget-object v1, v1, LaY/Q;->a:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    iget-object v2, p0, LaY/R;->a:LaY/Q;

    iget-object v2, v2, LaY/Q;->a:LaY/K;

    invoke-virtual {v2}, LaY/K;->bM()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LaX/h;->a(Lax/aS;J)V

    goto :goto_a

    :cond_36
    iget-object v0, p0, LaY/R;->a:LaY/Q;

    iget-object v0, v0, LaY/Q;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->bK()V

    goto :goto_1c
.end method
