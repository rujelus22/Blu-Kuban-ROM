.class Lcom/google/android/maps/driveabout/app/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ea;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ea;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->c(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(FF)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 577
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ea;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
