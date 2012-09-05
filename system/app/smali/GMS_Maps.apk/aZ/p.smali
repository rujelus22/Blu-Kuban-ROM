.class public LaZ/p;
.super LaY/t;


# instance fields
.field private final D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private E:Lcom/google/android/maps/driveabout/vector/cI;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    iput-object p7, p0, LaZ/p;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-void
.end method


# virtual methods
.method public aV()Z
    .registers 3

    invoke-virtual {p0}, LaZ/p;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->q()Lt/m;

    move-result-object v0

    iget-object v1, p0, LaZ/p;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;Lt/m;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iput-object v0, p0, LaZ/p;->E:Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v0, p0, LaZ/p;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/p;->E:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 3

    iget-object v0, p0, LaZ/p;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/p;->E:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    return-void
.end method
