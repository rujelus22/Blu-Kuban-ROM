.class public Lcom/google/googlenav/ui/wizard/cn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/googlenav/aw;

.field private final b:Lcom/google/googlenav/android/Y;

.field private final c:Z

.field private final d:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;[Lcom/google/googlenav/aw;Lcom/google/googlenav/android/Y;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 323
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    .line 328
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    .line 329
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cn;->b:Lcom/google/googlenav/android/Y;

    .line 330
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/cn;->c:Z

    .line 331
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2e

    .line 382
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cn;->c:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    move-object v1, v0

    .line 384
    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 385
    const v0, 0x7f040150

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 387
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cn;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 391
    :cond_2e
    return-void

    .line 382
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_14
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 395
    sget v0, Lcom/google/googlenav/ui/bn;->bA:I

    invoke-static {p2, v0}, Lcom/google/googlenav/aP;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aP;

    const/4 v3, 0x1

    new-instance v4, Lcom/google/googlenav/ui/wizard/co;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/co;-><init>(Lcom/google/googlenav/ui/wizard/cn;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V

    invoke-virtual {v1, v2}, Lac/h;->c(Lac/g;)V

    .line 409
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x1

    .line 413
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cn;->b:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/cp;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/googlenav/ui/wizard/cp;-><init>(Lcom/google/googlenav/ui/wizard/cn;Landroid/widget/ImageView;[B)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cn;Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/cn;->a(Landroid/widget/ImageView;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 345
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cn;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    move-object v1, v0

    .line 358
    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 361
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/wizard/cn;->a(ILandroid/view/ViewGroup;)V

    .line 363
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 375
    :goto_1e
    return-object v0

    .line 354
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cn;->a:[Lcom/google/googlenav/aw;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b

    .line 367
    :cond_27
    const v0, 0x7f040150

    const/4 v2, 0x0

    invoke-static {v0, p3, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 369
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cn;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cn;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/wizard/cn;->a(ILandroid/view/ViewGroup;)V

    goto :goto_1e
.end method
