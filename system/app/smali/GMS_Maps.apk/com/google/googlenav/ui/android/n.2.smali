.class public final Lcom/google/googlenav/ui/android/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/au;


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/FloorPickerView;

.field private final b:Lcom/google/googlenav/ui/v;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    .line 37
    iput-object p2, p0, Lcom/google/googlenav/ui/android/N;->b:Lcom/google/googlenav/ui/v;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/N;)Lcom/google/googlenav/ui/android/FloorPickerView;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/android/FloorPickerView;Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/android/N;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/google/googlenav/ui/android/N;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/android/N;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lcom/google/googlenav/ui/v;)V

    .line 45
    invoke-direct {v0}, Lcom/google/googlenav/ui/android/N;->a()V

    .line 46
    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-static {v1}, Lt/a;->a([I)Lt/a;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LaM/am;->a(LaM/au;Lt/a;)V

    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    new-instance v1, Lcom/google/googlenav/ui/android/O;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/O;-><init>(Lcom/google/googlenav/ui/android/N;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void

    .line 50
    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/N;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method private b()V
    .registers 6

    .prologue
    .line 83
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->J()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 85
    instance-of v3, v0, LaM/bj;

    if-eqz v3, :cond_12

    .line 86
    check-cast v0, LaM/bj;

    invoke-virtual {v0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    .line 87
    const/4 v0, 0x0

    :goto_29
    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v4

    if-ge v0, v4, :cond_12

    .line 88
    invoke-interface {v3, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v4

    .line 89
    invoke-interface {v4}, Lcom/google/googlenav/E;->b()Ljava/util/List;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_3c

    .line 91
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 96
    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ljava/util/Collection;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/N;->b()V

    .line 70
    return-void
.end method

.method public b(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/N;->b()V

    .line 75
    return-void
.end method

.method public c(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/N;->b()V

    .line 80
    return-void
.end method
