.class public LuK;
.super Ljava/lang/Object;
.source "CompositeToggleDrawableBuilder.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/drawable/Drawable;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuK;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuK;->b:Ljava/util/List;

    .line 34
    iput-object p1, p0, LuK;->a:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p2, p0, LuK;->b:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method private a(Landroid/graphics/drawable/StateListDrawable;IILjava/util/LinkedList;Ljava/util/LinkedList;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/StateListDrawable;",
            "II",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p2, :cond_31

    .line 99
    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    .line 100
    :goto_a
    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 101
    invoke-virtual {p4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 103
    :cond_20
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_30
    :goto_30
    return-void

    .line 108
    :cond_31
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_30

    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_30

    .line 112
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LuK;->a(Landroid/graphics/drawable/StateListDrawable;IILjava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 117
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, LuK;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LuK;->a(Landroid/graphics/drawable/StateListDrawable;IILjava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 120
    invoke-virtual {p4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 121
    invoke-virtual {p5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_30
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 84
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_c
    if-lez v2, :cond_24

    .line 85
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 86
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 87
    iget-object v0, p0, LuK;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 88
    invoke-direct/range {v0 .. v5}, LuK;->a(Landroid/graphics/drawable/StateListDrawable;IILjava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 84
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 91
    :cond_24
    new-array v0, v3, [I

    iget-object v2, p0, LuK;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    return-object v1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)LuK;
    .registers 3
    .parameter

    .prologue
    .line 51
    const v0, 0x10100a7

    invoke-virtual {p0, v0, p1}, LuK;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 52
    return-object p0
.end method

.method public a(ILandroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_f
    invoke-static {v0}, LafQ;->a(Z)V

    .line 42
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2f

    :goto_1b
    invoke-static {v1}, LafQ;->b(Z)V

    .line 43
    iget-object v0, p0, LuK;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, LuK;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void

    :cond_2d
    move v0, v2

    .line 39
    goto :goto_f

    :cond_2f
    move v1, v2

    .line 42
    goto :goto_1b
.end method

.method public b(Landroid/graphics/drawable/Drawable;)LuK;
    .registers 3
    .parameter

    .prologue
    .line 59
    const v0, 0x10100a0

    invoke-virtual {p0, v0, p1}, LuK;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 60
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)LuK;
    .registers 3
    .parameter

    .prologue
    .line 67
    const v0, 0x101009c

    invoke-virtual {p0, v0, p1}, LuK;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 68
    return-object p0
.end method
