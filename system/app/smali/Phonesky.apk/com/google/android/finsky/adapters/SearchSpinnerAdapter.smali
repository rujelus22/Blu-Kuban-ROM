.class public Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    const v0, 0x7f0400b4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    if-nez p2, :cond_12

    .line 44
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 49
    .local v0, item:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    const v2, 0x7f080183

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, spinnerText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    :goto_44
    return-object p2

    .line 56
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_44
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .local v0, item:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    move-object v1, p2

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, spinnerText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    return-object p2
.end method