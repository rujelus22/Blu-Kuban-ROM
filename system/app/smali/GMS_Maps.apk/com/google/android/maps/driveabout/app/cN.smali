.class Lcom/google/android/maps/driveabout/app/cN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cN;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/cN;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cN;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cN;->a:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cN;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method
