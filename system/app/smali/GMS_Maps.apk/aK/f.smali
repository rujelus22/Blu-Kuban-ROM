.class LaK/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bY;


# instance fields
.field final synthetic a:LaK/e;


# direct methods
.method constructor <init>(LaK/e;)V
    .registers 2

    iput-object p1, p0, LaK/f;->a:LaK/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, LaK/f;->a:LaK/e;

    invoke-static {v1}, LaK/e;->c(LaK/e;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaK/g;

    invoke-direct {v2, p0, p2}, LaK/g;-><init>(LaK/f;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
