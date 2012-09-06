.class Lcom/google/googlenav/ui/view/android/rideabout/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/b;->b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/b;->b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    const/16 v1, 0xc8

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/b;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 369
    return-void
.end method
