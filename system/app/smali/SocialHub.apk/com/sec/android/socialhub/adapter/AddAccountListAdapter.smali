.class public Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AddAccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
        ">;"
    }
.end annotation


# instance fields
.field private accountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p3, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    if-nez p2, :cond_55

    .line 37
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;

    .end local v1           #holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    invoke-direct {v1}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;-><init>()V

    .line 40
    .restart local v1       #holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    invoke-virtual {v1, p2}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->getViewResource(Landroid/view/View;)V

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    .line 50
    .local v0, accountItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iput-object v0, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->mItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    .line 52
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_34

    .line 54
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDividerBelow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    :cond_34
    iget-boolean v2, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->bIsSubTitle:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    .line 59
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatortext:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspNameResource:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 62
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->rowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    :goto_54
    return-object p2

    .line 46
    .end local v0           #accountItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    check-cast v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;

    .restart local v1       #holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    goto :goto_1b

    .line 67
    .restart local v0       #accountItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_5c
    iget-boolean v2, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->bHasSubTitle:Z

    if-eqz v2, :cond_86

    .line 68
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    :goto_65
    iget v2, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mImgResource:I

    if-lez v2, :cond_70

    .line 73
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->userAccounttypeimg:Landroid/widget/ImageView;

    iget v3, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mImgResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :cond_70
    iget v2, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspNameResource:I

    if-lez v2, :cond_7b

    .line 76
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->text:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspNameResource:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_7b
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->rowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_54

    .line 70
    :cond_86
    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_65
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->clear()V

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->accountList:Ljava/util/ArrayList;

    .line 95
    :cond_f
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method
