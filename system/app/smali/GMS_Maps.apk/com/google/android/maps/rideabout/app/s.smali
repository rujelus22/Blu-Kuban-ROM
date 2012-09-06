.class Lcom/google/android/maps/rideabout/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/q;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lay/c;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    sget-object v0, Lay/c;->b:Lay/c;

    if-eq p1, v0, :cond_8

    sget-object v0, Lay/c;->d:Lay/c;

    if-ne p1, v0, :cond_1a

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->f(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->d()V

    .line 231
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->f(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->e()V

    .line 233
    :cond_1a
    return-void
.end method
