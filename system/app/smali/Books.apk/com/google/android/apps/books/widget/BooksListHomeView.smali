.class public Lcom/google/android/apps/books/widget/BooksListHomeView;
.super Lcom/google/android/apps/books/widget/BaseBooksHomeView;
.source "BooksListHomeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

.field private mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

.field private final mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

.field private final mListView:Landroid/widget/ListView;

.field private final mListWrapperView:Landroid/view/View;

.field private mPaddingForBottomOfList:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/widget/ListView;Ljava/util/List;Landroid/view/View;Z)V
    .registers 13
    .parameter "controller"
    .parameter "view"
    .parameter
    .parameter "parentView"
    .parameter "isDeviceConnected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/BooksHomeController;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/model/CarouselVolumeData;>;"
    const/4 v6, 0x0

    .line 58
    invoke-interface {p1}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p5}, Lcom/google/android/apps/books/widget/BaseBooksHomeView;-><init>(Landroid/content/Context;Z)V

    .line 47
    iput v6, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mPaddingForBottomOfList:I

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListView:Landroid/widget/ListView;

    .line 62
    iput-object p4, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    .line 64
    if-nez p3, :cond_5f

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    .line 71
    :goto_19
    new-instance v3, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    invoke-interface {v4}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;-><init>(Lcom/google/android/apps/books/widget/BooksListHomeView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/apps/books/widget/BooksListHomeView$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$1;-><init>(Lcom/google/android/apps/books/widget/BooksListHomeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 87
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/apps/books/widget/BooksListHomeView$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$2;-><init>(Lcom/google/android/apps/books/widget/BooksListHomeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    invoke-interface {v3}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    .local v2, context:Landroid/content/Context;
    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 105
    .local v1, carouselBackground:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void

    .line 68
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #carouselBackground:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #context:Landroid/content/Context;
    :cond_5f
    iput-object p3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    goto :goto_19
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/BooksListHomeView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/widget/BooksListHomeView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/common/CachingImageManagerProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/widget/BooksListHomeView;Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Lcom/google/android/apps/books/common/CachingImageManagerProxy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    return-object p1
.end method


# virtual methods
.method public hide()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public moveToHome()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    if-eqz v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->close()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    .line 143
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public refreshManageOfflineUi()V
    .registers 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mPaddingForBottomOfList:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 121
    return-void
.end method

.method public setPaddingForBottomOfList(I)V
    .registers 2
    .parameter "padding"

    .prologue
    .line 155
    iput p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mPaddingForBottomOfList:I

    .line 156
    return-void
.end method

.method public setVolumeData(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/model/CarouselVolumeData;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->clear()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->addAll(Ljava/util/Collection;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListWrapperView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public toggleMakeAvailableOffline(I)V
    .registers 3
    .parameter "slot"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksListHomeView;->mListAdapter:Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method
