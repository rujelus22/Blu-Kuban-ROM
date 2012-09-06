.class Lcom/google/android/maps/rideabout/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/maps/rideabout/view/a;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/a;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/b;->b:Lcom/google/android/maps/rideabout/view/a;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/b;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
