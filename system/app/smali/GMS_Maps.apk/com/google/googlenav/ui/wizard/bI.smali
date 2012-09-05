.class public Lcom/google/googlenav/ui/wizard/bI;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Lcom/google/googlenav/au;

.field private final b:Lcom/google/googlenav/android/ac;

.field private final c:Z

.field private final d:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;[Lcom/google/googlenav/au;Lcom/google/googlenav/android/ac;Z)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bI;->b:Lcom/google/googlenav/android/ac;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/bI;->c:Z

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bI;->c:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    move-object v1, v0

    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const v0, 0x7f030108

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/bI;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/googlenav/au;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_14
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/google/googlenav/ui/bw;->bB:I

    invoke-static {p2, v0}, Lcom/google/googlenav/aP;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aP;

    const/4 v3, 0x1

    new-instance v4, Lcom/google/googlenav/ui/wizard/bJ;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/bJ;-><init>(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bI;->b:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/wizard/bK;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/googlenav/ui/wizard/bK;-><init>(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;[B)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/bI;->a(Landroid/widget/ImageView;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bI;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    move-object v1, v0

    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/wizard/bI;->a(ILandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->a:[Lcom/google/googlenav/au;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/googlenav/au;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b

    :cond_27
    const v0, 0x7f030108

    const/4 v2, 0x0

    invoke-static {v0, p3, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bI;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/bI;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/wizard/bI;->a(ILandroid/view/ViewGroup;)V

    goto :goto_1e
.end method
