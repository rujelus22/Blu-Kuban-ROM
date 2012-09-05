.class public LaZ/n;
.super LaY/ba;


# instance fields
.field private final D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private E:Lcom/google/android/maps/driveabout/vector/cM;

.field private F:Lcom/google/android/maps/driveabout/vector/cK;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 9

    invoke-direct/range {p0 .. p6}, LaY/ba;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    new-instance v0, LaZ/o;

    invoke-direct {v0, p0}, LaZ/o;-><init>(LaZ/n;)V

    iput-object v0, p0, LaZ/n;->F:Lcom/google/android/maps/driveabout/vector/cK;

    iput-object p7, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-void
.end method

.method static synthetic a(LaZ/n;)LaJ/u;
    .registers 2

    iget-object v0, p0, LaZ/n;->d:LaJ/u;

    return-object v0
.end method

.method static synthetic b(LaZ/n;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, LaZ/n;->b:Lcom/google/googlenav/ui/D;

    return-object v0
.end method


# virtual methods
.method protected bH()V
    .registers 3

    iget-object v0, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    iput-object v0, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v0, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v1, p0, LaZ/n;->F:Lcom/google/android/maps/driveabout/vector/cK;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    iget-object v0, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_4
.end method

.method protected bI()V
    .registers 3

    iget-object v0, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v1, p0, LaZ/n;->F:Lcom/google/android/maps/driveabout/vector/cK;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/cK;)V

    :cond_b
    iget-object v0, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_16

    iget-object v0, p0, LaZ/n;->D:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/n;->E:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_16
    return-void
.end method
