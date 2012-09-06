.class final Lcom/anddoes/launcher/an;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field final synthetic f:Lcom/anddoes/launcher/AppsCustomizeTabHost;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/AppsCustomizeTabHost;ZLjava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/anddoes/launcher/an;->f:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    .line 731
    iput-boolean p2, p0, Lcom/anddoes/launcher/an;->b:Z

    .line 732
    iput-object p3, p0, Lcom/anddoes/launcher/an;->c:Ljava/lang/String;

    .line 733
    iput p4, p0, Lcom/anddoes/launcher/an;->d:I

    .line 734
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 750
    iput-object p1, p0, Lcom/anddoes/launcher/an;->e:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 753
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 754
    array-length v5, v4

    move v3, v1

    :goto_11
    if-lt v3, v5, :cond_50

    .line 759
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1c

    move v1, v2

    .line 760
    :cond_1c
    iget-object v2, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    iget-boolean v0, p0, Lcom/anddoes/launcher/an;->b:Z

    if-eqz v0, :cond_7f

    const-string v0, "new_app_group"

    :goto_24
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    const-string v2, "setup_group"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    if-eqz v1, :cond_37

    .line 763
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    const-string v1, "remove_group"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_37
    iget v0, p0, Lcom/anddoes/launcher/an;->d:I

    invoke-static {}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4c

    .line 766
    iget-object v1, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    iget-boolean v0, p0, Lcom/anddoes/launcher/an;->b:Z

    if-eqz v0, :cond_82

    const-string v0, "switch_to_widgets"

    :goto_49
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_4c
    invoke-virtual {p0}, Lcom/anddoes/launcher/an;->notifyDataSetChanged()V

    .line 769
    return-void

    .line 754
    :cond_50
    aget-object v6, v4, v3

    .line 755
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 756
    iget-object v0, p0, Lcom/anddoes/launcher/an;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    move v0, v1

    :goto_61
    invoke-static {}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->k()I

    move-result v7

    if-lt v0, v7, :cond_70

    :cond_67
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11

    .line 756
    :cond_70
    iget-object v7, p0, Lcom/anddoes/launcher/an;->f:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    iget-object v7, v7, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6c

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 760
    :cond_7f
    const-string v0, "new_widget_group"

    goto :goto_24

    .line 766
    :cond_82
    const-string v0, "switch_to_apps"

    goto :goto_49
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 788
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 793
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 798
    if-nez p2, :cond_4b

    .line 800
    iget-object v0, p0, Lcom/anddoes/launcher/an;->f:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/AppsCustomizeTabHost;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object p2, v0

    .line 804
    :goto_17
    iget-object v0, p0, Lcom/anddoes/launcher/an;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 805
    iget-object v1, p0, Lcom/anddoes/launcher/an;->f:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/AppsCustomizeTabHost;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v2, "tab_menu_indicator"

    invoke-virtual {v1, v3, v2}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 806
    if-eqz v1, :cond_32

    .line 807
    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    :cond_32
    iget-object v1, p0, Lcom/anddoes/launcher/an;->f:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/AppsCustomizeTabHost;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v1, p0, Lcom/anddoes/launcher/an;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 811
    return-object p2

    .line 802
    :cond_4b
    check-cast p2, Landroid/widget/CheckedTextView;

    goto :goto_17
.end method
