.class public Lcom/google/android/maps/driveabout/app/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Lo/x;

.field private b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 152
    :cond_1c
    monitor-exit v2

    .line 153
    return-void

    .line 152
    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method


# virtual methods
.method public a(Lo/I;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    invoke-virtual {p1}, Lo/I;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    if-ne v0, p1, :cond_23

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    invoke-virtual {p1}, Lo/I;->i()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 55
    invoke-virtual {p1}, Lo/I;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    .line 56
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aF;->a()V

    .line 58
    :cond_23
    return-void
.end method

.method public a(Lo/x;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    if-eq p1, v1, :cond_d

    .line 31
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    .line 32
    iput v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    .line 33
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aF;->a()V

    .line 34
    const/4 v0, 0x1

    .line 36
    :cond_d
    return v0
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    invoke-virtual {v0}, Lo/x;->k()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    add-int/2addr v0, p1

    .line 82
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    if-nez v1, :cond_9

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    invoke-virtual {v1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p2, :cond_6

    instance-of v0, p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    if-nez v0, :cond_2b

    .line 108
    :cond_6
    new-instance p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;-><init>(Landroid/content/Context;)V

    .line 112
    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setStep(Lo/I;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    invoke-virtual {v0}, Lo/x;->q()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setDistanceUnits(I)V

    .line 115
    if-nez p1, :cond_2e

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setHighlighted(Z)V

    .line 116
    return-object p2

    .line 110
    :cond_2b
    check-cast p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    goto :goto_f

    .line 115
    :cond_2e
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->a:Lo/x;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aF;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4
    .parameter

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 140
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aF;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
