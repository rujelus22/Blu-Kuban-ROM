.class Lcom/google/android/maps/driveabout/app/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly/s;->b(Lt/L;)V

    return-void
.end method
