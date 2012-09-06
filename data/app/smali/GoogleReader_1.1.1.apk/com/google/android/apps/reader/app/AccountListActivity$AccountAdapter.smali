.class Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/AccountListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountAdapter"
.end annotation


# instance fields
.field private final mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentSyncer:Lcom/google/android/accounts/ContentSyncer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 690
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    .line 691
    invoke-static {p1}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    .line 692
    return-void
.end method

.method private getSyncAutomatically(Lcom/google/android/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    const-string v1, "com.google.android.apps.reader"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 730
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 731
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 732
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private setSyncAutomatically(Lcom/google/android/accounts/Account;Z)V
    .registers 5
    .parameter "account"
    .parameter "value"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    const-string v1, "com.google.android.apps.reader"

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/accounts/ContentSyncer;->setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V

    .line 700
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->notifyDataSetChanged()V

    .line 701
    return-void
.end method

.method private toggleSyncAutomatically(Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getSyncAutomatically(Lcom/google/android/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->setSyncAutomatically(Lcom/google/android/accounts/Account;Z)V

    .line 705
    return-void

    .line 704
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public changeAccounts(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 758
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    .line 759
    iget-object v2, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 760
    const-string v3, "@youtube.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 763
    iget-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 766
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->notifyDataSetChanged()V

    .line 767
    return-void
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/accounts/Account;
    .registers 3
    .parameter "position"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getItem(I)Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getItem(I)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 726
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v1, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 739
    move-object v5, p2

    .line 740
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_7

    .line 741
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 743
    :cond_7
    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 744
    .local v3, text1:Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 745
    .local v4, text2:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 746
    .local v1, icon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getItem(I)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 747
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getSyncAutomatically(Lcom/google/android/accounts/Account;)Z

    move-result v2

    .line 748
    .local v2, syncEnabled:Z
    iget-object v6, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    if-eqz v2, :cond_46

    const v6, 0x7f0d0102

    :goto_34
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 750
    if-eqz v2, :cond_4a

    const v6, 0x7f02004a

    :goto_3c
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 751
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 752
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    return-object v5

    .line 749
    :cond_46
    const v6, 0x7f0d0103

    goto :goto_34

    .line 750
    :cond_4a
    const v6, 0x7f02004b

    goto :goto_3c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    .line 778
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->toggleSyncAutomatically(Lcom/google/android/accounts/Account;)V

    .line 779
    return-void
.end method
