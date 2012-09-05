.class Lcom/android/browser/FolderViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderViewAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mFolderTree:Lcom/android/browser/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/Tree",
            "<",
            "Lcom/android/browser/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderView:Landroid/widget/ListView;

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/Tree;Landroid/widget/ListView;)V
    .registers 6
    .parameter "context"
    .parameter
    .parameter "folderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/browser/Tree",
            "<",
            "Lcom/android/browser/FolderItem;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, folderTree:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<Lcom/android/browser/FolderItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/browser/FolderViewAdapter;->mFolderTree:Lcom/android/browser/Tree;

    .line 43
    iget-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mFolderTree:Lcom/android/browser/Tree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/Tree;->getViews(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mViews:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/FolderViewAdapter;->mCount:I

    .line 45
    iput-object p1, p0, Lcom/android/browser/FolderViewAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/android/browser/FolderViewAdapter;->mFolderView:Landroid/widget/ListView;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/android/browser/FolderViewAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    if-eqz p2, :cond_6

    instance-of v2, p2, Lcom/android/browser/FolderItem;

    if-nez v2, :cond_2c

    .line 74
    :cond_6
    new-instance v1, Lcom/android/browser/FolderItem;

    iget-object v2, p0, Lcom/android/browser/FolderViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, item:Lcom/android/browser/FolderItem;
    invoke-virtual {v1}, Lcom/android/browser/FolderItem;->getPaddingLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1}, Lcom/android/browser/FolderItem;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/browser/FolderItem;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/browser/FolderItem;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/browser/FolderItem;->setPadding(IIII)V

    .line 86
    :goto_22
    iget-object v2, p0, Lcom/android/browser/FolderViewAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/FolderItem;

    .line 87
    .local v0, folderItem:Lcom/android/browser/FolderItem;
    move-object v1, v0

    .line 89
    return-object v1

    .end local v0           #folderItem:Lcom/android/browser/FolderItem;
    .end local v1           #item:Lcom/android/browser/FolderItem;
    :cond_2c
    move-object v1, p2

    .line 83
    check-cast v1, Lcom/android/browser/FolderItem;

    .restart local v1       #item:Lcom/android/browser/FolderItem;
    goto :goto_22
.end method

.method public refreshList(Lcom/android/browser/Tree;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tree",
            "<",
            "Lcom/android/browser/FolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, folderTree:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<Lcom/android/browser/FolderItem;>;"
    iput-object p1, p0, Lcom/android/browser/FolderViewAdapter;->mFolderTree:Lcom/android/browser/Tree;

    .line 50
    iget-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mFolderTree:Lcom/android/browser/Tree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/Tree;->getViews(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mViews:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lcom/android/browser/FolderViewAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/FolderViewAdapter;->mCount:I

    .line 52
    invoke-virtual {p0}, Lcom/android/browser/FolderViewAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method
