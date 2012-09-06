.class public final Lcom/anddoes/launcher/gi;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/gg;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/anddoes/launcher/gi;->a:Lcom/anddoes/launcher/gg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/anddoes/launcher/gi;->a:Lcom/anddoes/launcher/gg;

    invoke-static {v0}, Lcom/anddoes/launcher/gg;->a(Lcom/anddoes/launcher/gg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/gi;->a:Lcom/anddoes/launcher/gg;

    invoke-static {v0}, Lcom/anddoes/launcher/gg;->a(Lcom/anddoes/launcher/gg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/gi;->a:Lcom/anddoes/launcher/gg;

    invoke-static {v0}, Lcom/anddoes/launcher/gg;->a(Lcom/anddoes/launcher/gg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/gh;

    .line 180
    if-nez p2, :cond_36

    .line 181
    iget-object v1, p0, Lcom/anddoes/launcher/gi;->a:Lcom/anddoes/launcher/gg;

    invoke-static {v1}, Lcom/anddoes/launcher/gg;->b(Lcom/anddoes/launcher/gg;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_21
    move-object v1, v2

    .line 184
    check-cast v1, Landroid/widget/TextView;

    .line 185
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lcom/anddoes/launcher/gh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0}, Lcom/anddoes/launcher/gh;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    return-object v2

    :cond_36
    move-object v2, p2

    goto :goto_21
.end method
