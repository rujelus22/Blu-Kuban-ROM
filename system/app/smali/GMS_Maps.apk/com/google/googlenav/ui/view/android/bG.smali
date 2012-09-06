.class Lcom/google/googlenav/ui/view/android/bg;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;FI)I

    move-result v0

    .line 136
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 137
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setSelectedStationIndex(I)V

    .line 140
    :cond_33
    const/4 v0, 0x0

    return v0
.end method
