.class Lcom/google/android/maps/rideabout/app/u;
.super Ljava/lang/Object;

# interfaces
.implements LaN/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/s;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/u;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaN/d;)V
    .registers 3

    sget-object v0, LaN/d;->b:LaN/d;

    if-eq p1, v0, :cond_8

    sget-object v0, LaN/d;->d:LaN/d;

    if-ne p1, v0, :cond_1a

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/u;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->f(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->d()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/u;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->f(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->e()V

    :cond_1a
    return-void
.end method
