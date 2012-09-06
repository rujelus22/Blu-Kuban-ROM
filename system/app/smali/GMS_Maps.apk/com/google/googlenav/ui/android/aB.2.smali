.class Lcom/google/googlenav/ui/android/aB;
.super Lcom/google/googlenav/ui/android/ax;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TransitStationView;

.field private final b:Ljava/util/ArrayList;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/TransitStationView;Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/googlenav/ui/android/aB;->a:Lcom/google/googlenav/ui/android/TransitStationView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ax;-><init>()V

    .line 441
    iput-object p2, p0, Lcom/google/googlenav/ui/android/aB;->b:Ljava/util/ArrayList;

    .line 442
    iput p3, p0, Lcom/google/googlenav/ui/android/aB;->c:I

    .line 443
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 457
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aB;->a:Lcom/google/googlenav/ui/android/TransitStationView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Lcom/google/googlenav/cn;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 463
    iget v1, p0, Lcom/google/googlenav/ui/android/aB;->c:I

    iget v2, p0, Lcom/google/googlenav/ui/android/aB;->c:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 464
    return-object v0
.end method
