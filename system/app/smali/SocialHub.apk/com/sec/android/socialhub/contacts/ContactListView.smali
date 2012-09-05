.class public Lcom/sec/android/socialhub/contacts/ContactListView;
.super Lcom/sec/android/socialhub/view/IndexListView;
.source "ContactListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;,
        Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;
    }
.end annotation


# instance fields
.field public mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

.field private mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

.field public mFooterView:Landroid/view/View;

.field private mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

.field private mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/IndexListView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;->initialize(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/view/IndexListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/socialhub/view/IndexListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/contacts/ContactListView;)Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getContactSort()Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 53
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    new-array v1, v3, [Ljava/lang/String;

    new-array v2, v3, [I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    .line 54
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/contacts/ContactListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setDividerHeight(I)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    new-instance v1, Lcom/sec/android/socialhub/contacts/ContactListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/contacts/ContactListView$1;-><init>(Lcom/sec/android/socialhub/contacts/ContactListView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->setOnIndexChangedListener(Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    new-instance v1, Lcom/sec/android/socialhub/contacts/ContactListView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/contacts/ContactListView$2;-><init>(Lcom/sec/android/socialhub/contacts/ContactListView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->setOnSelectedCountChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setItemsCanFocus(Z)V

    .line 84
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/contacts/ContactListView$3;-><init>(Lcom/sec/android/socialhub/contacts/ContactListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/contacts/ContactListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public addSelectedRecipients(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->addSelectedRecipients(Ljava/util/ArrayList;)V

    .line 122
    return-void
.end method

.method public getContactAdapter()Lcom/sec/android/socialhub/contacts/ContactListAdapter;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    return-object v0
.end method

.method public getFriendData(I)V
    .registers 10
    .parameter "spType"

    .prologue
    const/4 v2, 0x0

    .line 142
    const/4 v1, -0x1

    sget-object v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getProjection()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/contacts/ContactListView;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->setSearchMode(ZLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public getFriendDataWithCondition(ILjava/lang/String;)V
    .registers 11
    .parameter "spType"
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v0, p2}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getSearchCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, condition:Ljava/lang/String;
    const/4 v1, -0x1

    sget-object v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getProjection()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/contacts/ContactListView;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->setSearchMode(ZLjava/lang/String;)V

    .line 152
    return-void
.end method

.method public onIndexSelected(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView;->setSelection(I)V

    .line 138
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/view/IndexListView;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    if-eqz v0, :cond_12

    .line 161
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    if-eqz p3, :cond_13

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_f
    invoke-interface {v1, v0}, Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;->onCompleted(I)V

    .line 163
    :cond_12
    return-void

    .line 161
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setContactCheckedChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 132
    return-void
.end method

.method public setOnQueryCompleteListener(Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mListener:Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;

    .line 127
    return-void
.end method

.method public setPossibleRecipientsCount(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->setPossibleCount(I)V

    .line 104
    return-void
.end method
