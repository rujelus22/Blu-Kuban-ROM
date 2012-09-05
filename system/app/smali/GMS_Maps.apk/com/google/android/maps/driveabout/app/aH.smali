.class public Lcom/google/android/maps/driveabout/app/aH;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Lu/x;

.field private b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method


# virtual methods
.method public a(Lu/I;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    invoke-virtual {p1}, Lu/I;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    if-ne v0, p1, :cond_23

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    invoke-virtual {p1}, Lu/I;->i()I

    move-result v1

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, Lu/I;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aH;->a()V

    :cond_23
    return-void
.end method

.method public a(Lu/x;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    if-eq p1, v1, :cond_d

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aH;->a()V

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    invoke-virtual {v1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-eqz p2, :cond_6

    instance-of v0, p2, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-nez v0, :cond_2b

    :cond_6
    new-instance p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;-><init>(Landroid/content/Context;)V

    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Lu/I;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    invoke-virtual {v0}, Lu/x;->q()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(I)V

    if-nez p1, :cond_2e

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Z)V

    return-object p2

    :cond_2b
    check-cast p2, Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    goto :goto_f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Lu/x;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->getCount()I

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

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
