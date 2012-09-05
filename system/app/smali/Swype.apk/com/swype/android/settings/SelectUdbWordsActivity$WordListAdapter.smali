.class public Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectUdbWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SelectUdbWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WordListAdapter"
.end annotation


# instance fields
.field protected final checked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

.field protected final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/settings/SelectUdbWordsActivity;Ljava/util/List;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, checked:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    .line 175
    iput-object p3, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    .line 176
    return-void
.end method


# virtual methods
.method public checkAll(Z)V
    .registers 4
    .parameter

    .prologue
    .line 220
    if-eqz p1, :cond_d

    .line 221
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    :goto_9
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 223
    :cond_d
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_9
.end method

.method public getChecked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 190
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    if-nez p2, :cond_1c

    .line 196
    iget-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-virtual {v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 197
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 198
    .local v0, label:Landroid/widget/CheckedTextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    .end local v0           #label:Landroid/widget/CheckedTextView;
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 201
    .restart local v0       #label:Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, word:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 204
    return-object p2
.end method

.method public isAnyWordChecked()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEveryWordChecked()Z
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public toggle(I)V
    .registers 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->words:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 212
    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    :goto_15
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 217
    return-void

    .line 214
    :cond_19
    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checked:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method
