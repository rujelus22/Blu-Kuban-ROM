.class public Lcom/google/googlenav/ui/android/HeaderContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    .line 25
    return-void
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    if-eq v0, p1, :cond_23

    .line 68
    iput p1, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    .line 69
    iget-object v1, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    monitor-enter v1

    .line 70
    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/aa;

    .line 71
    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/android/aa;->a(I)V

    goto :goto_f

    .line 73
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 75
    :cond_23
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->a:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/android/aa;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/android/HeaderContainer;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 52
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/HeaderContainer;->a(I)V

    .line 53
    return-void
.end method
