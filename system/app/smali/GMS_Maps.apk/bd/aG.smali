.class public Lbd/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:Lcom/google/googlenav/bN;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/googlenav/bV;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bN;Lcom/google/googlenav/bV;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/aG;->a:Lcom/google/googlenav/bN;

    iput p3, p0, Lbd/aG;->b:I

    iput p4, p0, Lbd/aG;->c:I

    iput-object p2, p0, Lbd/aG;->d:Lcom/google/googlenav/bV;

    return-void
.end method

.method static synthetic a(Lbd/aG;)I
    .registers 2

    iget v0, p0, Lbd/aG;->b:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v0, Lbd/aI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbd/aI;-><init>(Lbd/aG;Lbd/aH;)V

    check-cast p1, Lcom/google/googlenav/ui/android/TransitLineStationView;

    invoke-static {v0, p1}, Lbd/aI;->a(Lbd/aI;Lcom/google/googlenav/ui/android/TransitLineStationView;)Lcom/google/googlenav/ui/android/TransitLineStationView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 9

    check-cast p2, Lbd/aI;

    iget-object v0, p0, Lbd/aG;->a:Lcom/google/googlenav/bN;

    if-eqz v0, :cond_12

    invoke-static {p2}, Lbd/aI;->a(Lbd/aI;)Lcom/google/googlenav/ui/android/TransitLineStationView;

    move-result-object v0

    new-instance v1, Lbd/aH;

    invoke-direct {v1, p0, p1}, Lbd/aH;-><init>(Lbd/aG;Lcom/google/googlenav/ui/p;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-static {p2}, Lbd/aI;->a(Lbd/aI;)Lcom/google/googlenav/ui/android/TransitLineStationView;

    move-result-object v0

    iget-object v1, p0, Lbd/aG;->a:Lcom/google/googlenav/bN;

    iget-object v2, p0, Lbd/aG;->d:Lcom/google/googlenav/bV;

    iget v4, p0, Lbd/aG;->b:I

    iget v5, p0, Lbd/aG;->c:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TransitLineStationView;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/bV;Lcom/google/googlenav/ui/p;II)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03017e

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
