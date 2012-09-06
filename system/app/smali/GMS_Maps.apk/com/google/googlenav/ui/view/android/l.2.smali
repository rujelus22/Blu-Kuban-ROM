.class public Lcom/google/googlenav/ui/view/android/L;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/google/googlenav/ui/g;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/L;->b:Lcom/google/googlenav/ui/g;

    .line 60
    iput p3, p0, Lcom/google/googlenav/ui/view/android/L;->c:I

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->a:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;I)V

    .line 48
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 51
    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->clear()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 149
    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    invoke-interface {v0}, LaQ/H;->b()I

    move-result v0

    .line 99
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 107
    if-nez p2, :cond_20

    .line 108
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/L;->a:Landroid/view/LayoutInflater;

    invoke-interface {v0}, LaQ/H;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    invoke-interface {v0, p2}, LaQ/H;->a(Landroid/view/View;)LaQ/bE;

    move-result-object v1

    .line 110
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_1a
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/L;->b:Lcom/google/googlenav/ui/g;

    invoke-interface {v0, v2, v1}, LaQ/H;->a(Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 117
    return-object p2

    .line 112
    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaQ/bE;

    goto :goto_1a
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/googlenav/ui/view/android/L;->c:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    invoke-interface {v0}, LaQ/H;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
