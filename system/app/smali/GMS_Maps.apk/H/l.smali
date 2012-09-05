.class LH/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/j;

.field final synthetic b:LH/k;


# direct methods
.method constructor <init>(LH/k;Lcom/google/android/maps/rideabout/view/j;)V
    .registers 3

    iput-object p1, p0, LH/l;->b:LH/k;

    iput-object p2, p0, LH/l;->a:Lcom/google/android/maps/rideabout/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LH/l;->a:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, LH/l;->b:LH/k;

    iget-object v1, v1, LH/k;->d:LH/g;

    invoke-virtual {v1}, LH/g;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(I)V

    return-void
.end method
