.class public Lcom/google/googlenav/ui/view/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lcom/google/googlenav/ui/bd;

.field public final c:I

.field public final d:Lag/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/v;-><init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;ILag/g;)V

    .line 671
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;ILag/g;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/googlenav/ui/bd;

    iput-object v2, p0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    .line 676
    iget-object v2, p0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aput-object p1, v2, v0

    .line 678
    if-eqz p1, :cond_11

    move v0, v1

    .line 681
    :cond_11
    iget-object v2, p0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aput-object p2, v2, v1

    .line 682
    if-eqz p2, :cond_19

    .line 683
    add-int/lit8 v0, v0, 0x1

    .line 685
    :cond_19
    iget-object v1, p0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 686
    if-eqz p3, :cond_22

    .line 687
    add-int/lit8 v0, v0, 0x1

    .line 689
    :cond_22
    iget-object v1, p0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 690
    if-eqz p4, :cond_2b

    .line 691
    add-int/lit8 v0, v0, 0x1

    .line 693
    :cond_2b
    iput v0, p0, Lcom/google/googlenav/ui/view/v;->a:I

    .line 694
    iput p5, p0, Lcom/google/googlenav/ui/view/v;->c:I

    .line 695
    iput-object p6, p0, Lcom/google/googlenav/ui/view/v;->d:Lag/g;

    .line 696
    return-void
.end method
