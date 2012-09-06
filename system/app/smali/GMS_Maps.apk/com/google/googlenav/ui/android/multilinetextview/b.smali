.class Lcom/google/googlenav/ui/android/multilinetextview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->a:I

    .line 25
    iput p2, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->b:I

    .line 26
    iput p3, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->c:I

    .line 27
    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->b:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->b(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/multilinetextview/b;)I
    .registers 2
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(I)I

    move-result v0

    return v0
.end method

.method private static b(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    sub-int v0, p1, p0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/multilinetextview/b;)I
    .registers 2
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->c:I

    return v0
.end method


# virtual methods
.method public a(Ljava/util/ListIterator;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->a:I

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/google/googlenav/ui/android/multilinetextview/d;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/d;-><init>(Lcom/google/googlenav/ui/android/multilinetextview/b;Lcom/google/googlenav/ui/android/multilinetextview/c;)V

    .line 35
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/b;->a:I

    if-ge v0, v3, :cond_41

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 36
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/multilinetextview/e;

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/android/multilinetextview/d;->a(Lcom/google/googlenav/ui/android/multilinetextview/e;)V

    .line 38
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/ui/android/multilinetextview/d;->a(Lcom/google/googlenav/ui/android/multilinetextview/e;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 40
    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/multilinetextview/d;->a()Lcom/google/googlenav/ui/android/multilinetextview/e;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/android/multilinetextview/d;->b(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 42
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 44
    :cond_3d
    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/multilinetextview/d;->b()V

    goto :goto_c

    .line 47
    :cond_41
    return-object v1
.end method
