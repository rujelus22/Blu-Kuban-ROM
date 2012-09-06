.class Lcom/google/googlenav/ui/android/multilinetextview/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# static fields
.field private static final a:Lcom/google/common/base/Y;

.field private static final b:Lcom/google/common/collect/cV;

.field private static final c:Lcom/google/common/base/Q;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/common/base/Y;->a(C)Lcom/google/common/base/Y;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->a:Lcom/google/common/base/Y;

    .line 27
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/h;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/multilinetextview/h;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/cV;->a(Ljava/util/Comparator;)Lcom/google/common/collect/cV;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->b:Lcom/google/common/collect/cV;

    .line 35
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/i;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/multilinetextview/i;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->c:Lcom/google/common/base/Q;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/g;->d:I

    .line 48
    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 75
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/f;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/multilinetextview/f;-><init>()V

    move-object v1, v0

    .line 76
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/android/multilinetextview/e;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->d()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    move-object v1, v0

    .line 82
    goto :goto_14

    .line 83
    :cond_2f
    return-object v2
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/multilinetextview/g;->b(Ljava/util/List;)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/util/List;)I
    .registers 5
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->c:Lcom/google/common/base/Q;

    invoke-static {p1, v0}, Lcom/google/common/collect/bT;->b(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/g;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 106
    :goto_f
    return v0

    :cond_10
    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/g;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_f
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 7
    .parameter

    .prologue
    .line 60
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->a:Lcom/google/common/base/Y;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Y;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/google/googlenav/ui/android/multilinetextview/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/multilinetextview/g;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 63
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/g;->d(Ljava/util/List;)I

    move-result v0

    .line 64
    new-instance v3, Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v0, v2, v4}, Lcom/google/googlenav/ui/android/multilinetextview/b;-><init>(III)V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Ljava/util/ListIterator;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/multilinetextview/g;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/util/List;)I
    .registers 2
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/g;->b:Lcom/google/common/collect/cV;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/cV;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Iterable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/multilinetextview/e;

    .line 121
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->c()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v0

    move v1, v0

    goto :goto_10

    .line 124
    :cond_2d
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v2
.end method

.method private d(Ljava/util/List;)I
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/g;->b(Ljava/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/multilinetextview/g;->b(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Lcom/google/googlenav/ui/android/multilinetextview/g;->c(Ljava/util/List;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 55
    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/g;->b(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/g;->a(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
