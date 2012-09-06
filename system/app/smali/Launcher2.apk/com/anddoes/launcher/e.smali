.class public final Lcom/anddoes/launcher/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/anddoes/launcher/f;

.field private d:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 9
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/anddoes/launcher/e;->d:Lcom/anddoes/launcher/Launcher;

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/e;->a:Landroid/view/LayoutInflater;

    .line 85
    invoke-virtual {p1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    iget-object v6, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/anddoes/launcher/f;

    const v3, 0x7f060026

    .line 88
    const v4, 0x7f020027

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/f;-><init>(Lcom/anddoes/launcher/e;Landroid/content/res/Resources;III)V

    .line 87
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v6, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/anddoes/launcher/f;

    const v3, 0x7f060260

    .line 91
    const v4, 0x7f02003e

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/f;-><init>(Lcom/anddoes/launcher/e;Landroid/content/res/Resources;III)V

    .line 90
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v6, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/anddoes/launcher/f;

    const v3, 0x7f060261

    .line 94
    const v4, 0x7f020038

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/f;-><init>(Lcom/anddoes/launcher/e;Landroid/content/res/Resources;III)V

    .line 93
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/anddoes/launcher/f;

    const v3, 0x7f060262

    .line 100
    const v4, 0x7f020041

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/f;-><init>(Lcom/anddoes/launcher/e;Landroid/content/res/Resources;III)V

    .line 99
    iput-object v0, p0, Lcom/anddoes/launcher/e;->c:Lcom/anddoes/launcher/f;

    .line 101
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anddoes/launcher/e;->d:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_1a

    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/e;->c:Lcom/anddoes/launcher/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/e;->c:Lcom/anddoes/launcher/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_19
    :goto_19
    return-void

    .line 73
    :cond_1a
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/e;->c:Lcom/anddoes/launcher/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/e;->c:Lcom/anddoes/launcher/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/anddoes/launcher/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 127
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

    .line 104
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/f;

    .line 106
    if-nez p2, :cond_24

    .line 107
    iget-object v1, p0, Lcom/anddoes/launcher/e;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_13
    move-object v1, v2

    .line 110
    check-cast v1, Landroid/widget/TextView;

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v3, v0, Lcom/anddoes/launcher/f;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, v0, Lcom/anddoes/launcher/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-object v2

    :cond_24
    move-object v2, p2

    goto :goto_13
.end method
