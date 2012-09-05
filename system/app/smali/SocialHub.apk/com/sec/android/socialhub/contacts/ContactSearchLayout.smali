.class public Lcom/sec/android/socialhub/contacts/ContactSearchLayout;
.super Lcom/sec/android/socialhub/view/SearchBaseLayout;
.source "ContactSearchLayout.java"


# instance fields
.field private mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

.field private miSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->miSpType:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->miSpType:I

    .line 28
    return-void
.end method


# virtual methods
.method public getListView()Lcom/sec/android/socialhub/contacts/ContactListView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    return-object v0
.end method

.method public getSearchBar(Landroid/content/Context;)Lcom/sec/android/socialhub/view/SocialHubSearchBar;
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactSearchBar;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactSearchBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSearchFieldList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v3, 0x7f0800e0

    invoke-direct {v2, v3, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 33
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onCreate(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->addView(Landroid/view/View;II)V

    .line 36
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 5
    .parameter "str"
    .parameter "model"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v1, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->miSpType:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;->getFriendDataWithCondition(ILjava/lang/String;)V

    .line 53
    :goto_10
    return-void

    .line 51
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v1, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->miSpType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListView;->getFriendData(I)V

    goto :goto_10
.end method

.method public setSpType(I)V
    .registers 2
    .parameter "sp"

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->miSpType:I

    .line 58
    return-void
.end method
