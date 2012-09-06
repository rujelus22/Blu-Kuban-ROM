.class final Lcom/anddoes/launcher/ce;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/EditShortcutActivity;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ce;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 707
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/anddoes/launcher/ce;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 708
    :cond_8
    const/4 v0, 0x0

    .line 710
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 715
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 720
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/anddoes/launcher/ce;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_b

    :cond_9
    move-object v2, v3

    .line 731
    :goto_a
    return-object v2

    .line 723
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/cf;

    .line 724
    if-nez p2, :cond_3f

    .line 725
    iget-object v1, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/EditShortcutActivity;->k(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_27
    move-object v1, v2

    .line 727
    check-cast v1, Landroid/widget/TextView;

    .line 728
    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/anddoes/launcher/ce;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v4, v5}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 729
    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_3f
    move-object v2, p2

    goto :goto_27
.end method
