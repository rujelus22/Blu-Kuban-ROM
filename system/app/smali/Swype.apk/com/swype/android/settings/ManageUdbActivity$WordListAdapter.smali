.class public Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageUdbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/ManageUdbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WordListAdapter"
.end annotation


# instance fields
.field protected final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity;

.field protected final words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/settings/ManageUdbActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 383
    new-instance v0, Lcom/swype/android/settings/ManageUdbActivity$WordListComparator;

    invoke-direct {v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListComparator;-><init>()V

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->comparator:Ljava/util/Comparator;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    .line 388
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, position:I
    if-gez v0, :cond_11

    .line 435
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 436
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 438
    :cond_11
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 427
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 428
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 430
    :cond_12
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 455
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 402
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getPosition(Ljava/lang/String;)I
    .registers 4
    .parameter "word"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 407
    if-nez p2, :cond_1c

    .line 408
    iget-object v2, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    invoke-virtual {v2}, Lcom/swype/android/settings/ManageUdbActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 410
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 411
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    .end local v0           #label:Landroid/widget/TextView;
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 414
    .restart local v0       #label:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, word:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-object p2
.end method

.method public getWords()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(I)V
    .registers 3
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->notifyDataSetChanged()V

    .line 450
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "word"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 442
    .local v0, position:I
    if-ltz v0, :cond_9

    .line 443
    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->remove(I)V

    .line 445
    :cond_9
    return-void
.end method
