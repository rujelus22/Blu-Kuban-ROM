.class Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BooksListHomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/BooksListHomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BooksListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/books/model/CarouselVolumeData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/BooksListHomeView;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/model/CarouselVolumeData;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 184
    #setter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;
    invoke-static {p1, p3}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$002(Lcom/google/android/apps/books/widget/BooksListHomeView;Ljava/util/List;)Ljava/util/List;

    .line 185
    return-void
.end method

.method private ensureImageManager()V
    .registers 6

    .prologue
    .line 244
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$200(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    move-result-object v2

    if-nez v2, :cond_24

    .line 245
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    .line 247
    .local v0, booksApp:Lcom/google/android/apps/books/app/BooksApplication;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getImageManager()Lcom/google/android/apps/books/common/ImageManager;

    move-result-object v1

    .line 248
    .local v1, sharedImageManager:Lcom/google/android/apps/books/common/ImageManager;
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    new-instance v3, Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/common/ImageManager;)V

    #setter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;
    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$202(Lcom/google/android/apps/books/widget/BooksListHomeView;Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    .line 250
    .end local v0           #booksApp:Lcom/google/android/apps/books/app/BooksApplication;
    .end local v1           #sharedImageManager:Lcom/google/android/apps/books/common/ImageManager;
    :cond_24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    .local v2, context:Landroid/content/Context;
    if-nez p2, :cond_14

    .line 191
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f03000b

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 195
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/apps/books/widget/BooksHomeController;->isShowingOfflineUi()Z

    move-result v10

    .line 196
    .local v10, showingOfflineUi:Z
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 198
    .local v4, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    const v13, 0x7f0f000b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/widget/RemoteImageView;

    .line 200
    .local v3, coverView:Lcom/google/android/apps/books/widget/RemoteImageView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->ensureImageManager()V

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mImageManager:Lcom/google/android/apps/books/common/CachingImageManagerProxy;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$200(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/books/widget/RemoteImageView;->setImageManager(Lcom/google/android/apps/books/common/ImageManager;)V

    .line 202
    iget-object v13, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->coverUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v14}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v14

    iget-object v15, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->coverUri:Landroid/net/Uri;

    invoke-interface {v14, v15}, Lcom/google/android/apps/books/widget/BooksHomeController;->getCoverLoadEnsurer(Landroid/net/Uri;)Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lcom/google/android/apps/books/widget/RemoteImageView;->setImageURI(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;)V

    .line 204
    iget-boolean v13, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->isLimitedPreviewLocked:Z

    invoke-virtual {v3, v13}, Lcom/google/android/apps/books/widget/RemoteImageView;->setShowBanner(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v13, v4}, Lcom/google/android/apps/books/widget/BooksListHomeView;->shouldDimCover(Lcom/google/android/apps/books/model/CarouselVolumeData;)Z

    move-result v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/books/widget/RemoteImageView;->setShowDimmedCover(Z)V

    .line 207
    const v13, 0x7f0f000c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 208
    .local v12, titleView:Landroid/widget/TextView;
    iget-object v13, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v13, 0x7f0f000d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 211
    .local v1, authorView:Landroid/widget/TextView;
    iget-object v13, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->author:Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    iget-object v13, v13, Lcom/google/android/apps/books/widget/BooksListHomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 214
    .local v9, res:Landroid/content/res/Resources;
    const v13, 0x7f0e00bc

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->author:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, talkbackText:Ljava/lang/String;
    const v13, 0x7f0f002d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/widget/CheckedImageView;

    .line 219
    .local v7, pinView:Lcom/google/android/apps/books/widget/CheckedImageView;
    if-eqz v10, :cond_10a

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v13

    iget-object v14, v4, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/google/android/apps/books/widget/BooksHomeController;->isPinned(Ljava/lang/String;)Z

    move-result v8

    .line 221
    .local v8, pinned:Z
    invoke-virtual {v7, v8}, Lcom/google/android/apps/books/widget/CheckedImageView;->setChecked(Z)V

    .line 222
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/google/android/apps/books/widget/CheckedImageView;->setVisibility(I)V

    .line 224
    if-eqz v8, :cond_102

    const v13, 0x7f0e00c3

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, pinText:Ljava/lang/String;
    :goto_d3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    .end local v6           #pinText:Ljava/lang/String;
    .end local v8           #pinned:Z
    :goto_ef
    const v13, 0x7f0f002c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 238
    .local v5, downloadProgressView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksListHomeView$BooksListAdapter;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v13, v5, v4, v10}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setDownloadPercentText(Landroid/widget/TextView;Lcom/google/android/apps/books/model/CarouselVolumeData;Z)V

    .line 240
    return-object p2

    .line 224
    .end local v5           #downloadProgressView:Landroid/widget/TextView;
    .restart local v8       #pinned:Z
    :cond_102
    const v13, 0x7f0e00c4

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d3

    .line 231
    .end local v8           #pinned:Z
    :cond_10a
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Lcom/google/android/apps/books/widget/CheckedImageView;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_ef
.end method
