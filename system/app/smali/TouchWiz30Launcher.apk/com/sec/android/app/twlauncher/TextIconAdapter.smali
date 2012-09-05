.class public Lcom/sec/android/app/twlauncher/TextIconAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextIconAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAllItemsEnabled:Z

.field private mCollator:Ljava/text/Collator;

.field private mDisabledBackground:Landroid/graphics/drawable/Drawable;

.field private mEnabledBackground:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 93
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 12
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    .line 39
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mCollator:Ljava/text/Collator;

    .line 107
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    .line 109
    iput p2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    .line 110
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    .line 111
    .local v2, item:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_21

    .line 112
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    .line 117
    .end local v2           #item:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mEnabledBackground:Landroid/graphics/drawable/Drawable;
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_47} :catch_48

    .line 122
    return-void

    .line 119
    .end local v3           #text:Landroid/widget/TextView;
    :catch_48
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "StaticArrayAdapter requires a TextView resource Id"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    .local p1, item:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    .line 146
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 151
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method public compare(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    .local p1, a:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    .local p2, b:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    const/4 v2, 0x0

    .line 162
    .local v2, rc:I
    if-eq p1, p2, :cond_6

    .line 163
    if-nez p1, :cond_7

    .line 164
    const/4 v2, -0x1

    .line 178
    :cond_6
    :goto_6
    return v2

    .line 165
    :cond_7
    if-nez p2, :cond_b

    .line 166
    const/4 v2, 0x1

    goto :goto_6

    .line 168
    :cond_b
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    .local v0, aText:Ljava/lang/CharSequence;
    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    .local v1, bText:Ljava/lang/CharSequence;
    if-nez v0, :cond_17

    .line 171
    const-string v0, ""

    .line 172
    :cond_17
    if-nez v1, :cond_1b

    .line 173
    const-string v1, ""

    .line 175
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    check-cast p1, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->compare(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 182
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 196
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    .line 202
    .local v0, item:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    if-nez p2, :cond_10

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_10
    move-object v1, p2

    .line 205
    check-cast v1, Landroid/widget/TextView;

    .line 206
    .local v1, text:Landroid/widget/TextView;
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mEnabledBackground:Landroid/graphics/drawable/Drawable;

    :goto_29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-object p2

    .line 208
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mDisabledBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_29
.end method

.method public insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V
    .registers 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    .local p1, item:Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;,"TT;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    .line 224
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    .line 225
    return-void
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 229
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public sort()V
    .registers 2

    .prologue
    .line 247
    .local p0, this:Lcom/sec/android/app/twlauncher/TextIconAdapter;,"Lcom/sec/android/app/twlauncher/TextIconAdapter<TT;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method
