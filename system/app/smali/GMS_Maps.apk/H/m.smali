.class LH/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbc/a;

.field final synthetic b:LH/k;


# direct methods
.method constructor <init>(LH/k;Lbc/a;)V
    .registers 3

    iput-object p1, p0, LH/m;->b:LH/k;

    iput-object p2, p0, LH/m;->a:Lbc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LH/m;->b:LH/k;

    invoke-virtual {v0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    iget-object v1, p0, LH/m;->a:Lbc/a;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;)V

    return-void
.end method
