.class Lcom/google/googlenav/ui/wizard/aW;
.super Lcom/google/googlenav/ui/wizard/eH;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aW;->a:Ljava/util/List;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aW;->a:Ljava/util/List;

    .line 38
    return-void
.end method

.method private a(Ljava/util/TreeSet;Lcom/google/googlenav/ui/view/android/Y;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 95
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_9
    :goto_9
    return-void

    .line 102
    :cond_a
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/Y;

    .line 103
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Y;->d()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/Y;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_9

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private a(Ljava/util/TreeSet;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/Y;

    .line 78
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Y;->b()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/aW;->a(Ljava/util/TreeSet;Lcom/google/googlenav/ui/view/android/Y;)V

    goto :goto_4

    .line 82
    :cond_1b
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lcom/google/googlenav/ui/wizard/aX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/aX;-><init>(Lcom/google/googlenav/ui/wizard/aW;)V

    .line 62
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aW;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eH;

    .line 65
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eH;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/aW;->a(Ljava/util/TreeSet;Ljava/util/List;)V

    goto :goto_10

    .line 68
    :cond_24
    invoke-static {v1}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
