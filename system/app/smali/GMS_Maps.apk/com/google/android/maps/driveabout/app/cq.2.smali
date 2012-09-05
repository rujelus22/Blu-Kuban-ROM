.class Lcom/google/android/maps/driveabout/app/cq;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Law/a;

.field final synthetic b:Law/f;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/cp;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cp;Law/a;Law/f;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cq;->c:Lcom/google/android/maps/driveabout/app/cp;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Law/a;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cq;->b:Law/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Law/a;

    invoke-interface {v0}, Law/a;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->b:Law/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->b:Law/f;

    invoke-interface {v0, p1}, Law/f;->a(Law/c;)V

    :cond_e
    return-void
.end method
