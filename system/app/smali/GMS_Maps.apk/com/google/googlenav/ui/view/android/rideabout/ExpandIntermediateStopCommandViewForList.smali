.class public Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lad/t;

.field private final c:Ljava/util/List;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/google/googlenav/ui/view/android/rideabout/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->a:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/j;->a(Z)V

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 81
    :cond_1a
    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->b:Lad/t;

    invoke-virtual {v0}, Lad/t;->M()V

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->a()V

    .line 158
    return-void
.end method

.method public setExpansionStateListener(Lcom/google/googlenav/ui/view/android/rideabout/g;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandViewForList;->f:Lcom/google/googlenav/ui/view/android/rideabout/g;

    .line 176
    return-void
.end method
