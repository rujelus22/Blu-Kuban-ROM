.class Lcom/google/android/maps/driveabout/power/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/power/a;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/power/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/c;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/c;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Lcom/google/android/maps/driveabout/power/a;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/c;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/a;->b(Lcom/google/android/maps/driveabout/power/a;)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/c;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/a;->a(Lcom/google/android/maps/driveabout/power/a;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
