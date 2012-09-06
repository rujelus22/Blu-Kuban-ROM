.class Lcom/google/googlenav/intersectionexplorer/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/intersectionexplorer/m;


# direct methods
.method constructor <init>(Lcom/google/googlenav/intersectionexplorer/m;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/n;->a:Lcom/google/googlenav/intersectionexplorer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr/aj;Lr/aj;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-virtual {p2}, Lr/aj;->b()F

    move-result v0

    invoke-virtual {p1}, Lr/aj;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 506
    cmpg-float v1, v0, v2

    if-gez v1, :cond_10

    .line 507
    const/4 v0, 0x1

    .line 511
    :goto_f
    return v0

    .line 508
    :cond_10
    cmpl-float v0, v0, v2

    if-lez v0, :cond_16

    .line 509
    const/4 v0, -0x1

    goto :goto_f

    .line 511
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 501
    check-cast p1, Lr/aj;

    check-cast p2, Lr/aj;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/intersectionexplorer/n;->a(Lr/aj;Lr/aj;)I

    move-result v0

    return v0
.end method
