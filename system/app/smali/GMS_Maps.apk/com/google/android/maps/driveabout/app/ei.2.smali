.class Lcom/google/android/maps/driveabout/app/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ei;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ei;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ei;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dO;->d(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/aL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/s;->a(Lu/P;Z)V

    return-void
.end method
