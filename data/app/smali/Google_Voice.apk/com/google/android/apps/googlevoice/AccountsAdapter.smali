.class public Lcom/google/android/apps/googlevoice/AccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsAdapter.java"


# instance fields
.field private accounts:[Ljava/lang/String;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private selectedAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "accounts"
    .parameter "selectedAccount"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->selectedAccount:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setAccountsInternal([Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private setAccountsInternal([Ljava/lang/String;)V
    .registers 3
    .parameter "accounts"

    .prologue
    .line 89
    if-nez p1, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    .line 90
    return-void

    .line 89
    :cond_8
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_5
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 65
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_7

    int-to-long v0, p1

    :goto_6
    return-wide v0

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    move-object v1, p3

    check-cast v1, Landroid/widget/ListView;

    .line 41
    .local v1, listView:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/google/android/apps/googlevoice/R$layout;->choose_single_line_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 42
    .local v4, view:Landroid/view/View;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/SingleLineView;

    .line 43
    .local v2, main:Lcom/google/android/apps/googlevoice/SingleLineView;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 45
    .local v3, radio:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->accounts:[Ljava/lang/String;

    aget-object v0, v5, p1

    .line 46
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/SingleLineView;->setText(Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->selectedAccount:Ljava/lang/String;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->selectedAccount:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    :goto_30
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    new-instance v5, Lcom/google/android/apps/googlevoice/AccountsAdapter$1;

    invoke-direct {v5, p0, v1, v4, p1}, Lcom/google/android/apps/googlevoice/AccountsAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/AccountsAdapter;Landroid/widget/ListView;Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-object v4

    .line 47
    :cond_3c
    const/4 v5, 0x0

    goto :goto_30
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts([Ljava/lang/String;)V
    .registers 2
    .parameter "accounts"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setAccountsInternal([Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public setSelectedAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedAccount"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AccountsAdapter;->selectedAccount:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
