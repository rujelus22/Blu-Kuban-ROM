.class public Lcom/twitter/android/widget/Navbar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Lcom/twitter/android/widget/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f01004a

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public final varargs a(I[I)V
    .registers 7

    array-length v1, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_e

    aget v2, p2, v0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/n;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/n;

    return-void
.end method

.method public final b(II)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    const v1, 0x7f07004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_19

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_19
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/n;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/n;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/n;->a_(I)V

    :cond_d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v0, 0x7f07005a

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/Navbar;->a(I)V

    const v0, 0x7f07004d

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/Navbar;->a(I)V

    return-void
.end method
