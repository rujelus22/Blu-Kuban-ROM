.class Ly/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aF;


# instance fields
.field final synthetic a:Lu/I;

.field final synthetic b:Ly/s;


# direct methods
.method constructor <init>(Ly/s;Lu/I;)V
    .registers 3

    iput-object p1, p0, Ly/t;->b:Ly/s;

    iput-object p2, p0, Ly/t;->a:Lu/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 5

    iget-object v0, p0, Ly/t;->b:Ly/s;

    iget-object v0, v0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    iget-object v1, p0, Ly/t;->a:Lu/I;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/s;->b(Lu/I;Z)V

    return-void
.end method
