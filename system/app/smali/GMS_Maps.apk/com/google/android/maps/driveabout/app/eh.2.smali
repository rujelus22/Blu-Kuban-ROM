.class Lcom/google/android/maps/driveabout/app/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dO;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v2, Ly/g;->a:Ly/g;

    if-eq v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dO;->e(Z)V

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
