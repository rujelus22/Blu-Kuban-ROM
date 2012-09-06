.class LE/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LE/a;


# direct methods
.method constructor <init>(LE/a;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, LE/d;->a:LE/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, LE/d;->a:LE/a;

    iget-object v0, v0, LE/a;->b:LE/h;

    invoke-virtual {v0}, LE/h;->c()LE/j;

    move-result-object v0

    invoke-virtual {v0}, LE/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    .line 247
    if-nez v0, :cond_f

    .line 256
    :cond_e
    :goto_e
    return-void

    .line 250
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_1f

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_1f

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_e

    .line 254
    :cond_1f
    iget-object v0, p0, LE/d;->a:LE/a;

    invoke-virtual {v0}, LE/a;->f()V

    goto :goto_e
.end method
