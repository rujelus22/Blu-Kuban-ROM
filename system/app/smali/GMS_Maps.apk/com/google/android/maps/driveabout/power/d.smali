.class Lcom/google/android/maps/driveabout/power/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/power/a;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/power/a;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/d;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/d;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Lcom/google/android/maps/driveabout/power/a;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 220
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 222
    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/d;->a:Lcom/google/android/maps/driveabout/power/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/a;->a(Lcom/google/android/maps/driveabout/power/a;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 223
    return-void
.end method
