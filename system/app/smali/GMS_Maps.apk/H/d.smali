.class LH/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LH/a;


# direct methods
.method constructor <init>(LH/a;)V
    .registers 2

    iput-object p1, p0, LH/d;->a:LH/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LH/d;->a:LH/a;

    iget-object v0, v0, LH/a;->b:LH/h;

    invoke-virtual {v0}, LH/h;->c()LH/j;

    move-result-object v0

    invoke-virtual {v0}, LH/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_1f

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_1f

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_e

    :cond_1f
    iget-object v0, p0, LH/d;->a:LH/a;

    invoke-virtual {v0}, LH/a;->f()V

    goto :goto_e
.end method
