.class Lcom/google/googlenav/ui/view/android/rideabout/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/c;->b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/c;->b:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    const/16 v1, 0xe7

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/c;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
