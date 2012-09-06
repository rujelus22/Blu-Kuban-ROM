.class public Ld/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/h;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 705
    new-instance v0, Ld/i;

    invoke-direct {v0}, Ld/i;-><init>()V

    sput-object v0, Ld/f;->a:Ld/h;

    .line 711
    :goto_d
    return-void

    .line 706
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    .line 707
    new-instance v0, Ld/g;

    invoke-direct {v0}, Ld/g;-><init>()V

    sput-object v0, Ld/f;->a:Ld/h;

    goto :goto_d

    .line 709
    :cond_1c
    new-instance v0, Ld/j;

    invoke-direct {v0}, Ld/j;-><init>()V

    sput-object v0, Ld/f;->a:Ld/h;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput-object p1, p0, Ld/f;->b:Ljava/lang/Object;

    .line 932
    return-void
.end method

.method public static a(Landroid/view/View;)Ld/f;
    .registers 2
    .parameter

    .prologue
    .line 949
    sget-object v0, Ld/f;->a:Ld/h;

    invoke-interface {v0, p0}, Ld/h;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Object;)Ld/f;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Ld/f;
    .registers 2
    .parameter

    .prologue
    .line 918
    if-eqz p0, :cond_8

    .line 919
    new-instance v0, Ld/f;

    invoke-direct {v0, p0}, Ld/f;-><init>(Ljava/lang/Object;)V

    .line 921
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()Ld/f;
    .registers 1

    .prologue
    .line 973
    sget-object v0, Ld/f;->a:Ld/h;

    invoke-interface {v0}, Ld/h;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Object;)Ld/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Ld/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 1145
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->a(Ljava/lang/Object;I)V

    .line 1146
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 1288
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1289
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1016
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ld/h;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1017
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 1641
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1642
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1399
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->c(Ljava/lang/Object;Z)V

    .line 1400
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 1303
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1304
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1256
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1257
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1117
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ld/h;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1118
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 1665
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1666
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1448
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->e(Ljava/lang/Object;Z)V

    .line 1449
    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1674
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/h;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 1312
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1313
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 1713
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1714
    return-void
.end method

.method public c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1521
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->a(Ljava/lang/Object;Z)V

    .line 1522
    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1698
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/h;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 1327
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1328
    return-void
.end method

.method public d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1569
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->b(Ljava/lang/Object;Z)V

    .line 1570
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 1724
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/h;->c(Ljava/lang/Object;)V

    .line 1725
    return-void
.end method

.method public e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1617
    sget-object v0, Ld/f;->a:Ld/h;

    iget-object v1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ld/h;->d(Ljava/lang/Object;Z)V

    .line 1618
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1734
    if-ne p0, p1, :cond_5

    .line 1751
    :cond_4
    :goto_4
    return v0

    .line 1737
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1738
    goto :goto_4

    .line 1740
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 1741
    goto :goto_4

    .line 1743
    :cond_15
    check-cast p1, Ld/f;

    .line 1744
    iget-object v2, p0, Ld/f;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 1745
    iget-object v2, p1, Ld/f;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1746
    goto :goto_4

    .line 1748
    :cond_21
    iget-object v2, p0, Ld/f;->b:Ljava/lang/Object;

    iget-object v3, p1, Ld/f;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1749
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1729
    iget-object v0, p0, Ld/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
