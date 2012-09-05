.class Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRefLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/apps/plus/api/MediaRef;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mLoadedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    .line 408
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mMediaRefList:Ljava/util/ArrayList;

    .line 409
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 410
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, accountName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    .line 429
    .local v1, ownerId:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mMediaRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/api/MediaRef;

    .line 430
    .local v12, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v12}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, url:Ljava/lang/String;
    if-nez v5, :cond_68

    const/4 v8, 0x0

    .line 432
    .local v8, galleryUri:Landroid/net/Uri;
    :goto_25
    invoke-static {v8}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/GalleryUtils;->getPhotoId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 435
    .local v11, photoId:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_12

    .line 440
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/GalleryUtils;->getAccountName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 442
    .local v10, photoAccount:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 444
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v12}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 446
    .local v0, newRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 431
    .end local v0           #newRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #galleryUri:Landroid/net/Uri;
    .end local v10           #photoAccount:Ljava/lang/String;
    .end local v11           #photoId:Ljava/lang/Long;
    :cond_68
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_25

    .line 449
    .restart local v8       #galleryUri:Landroid/net/Uri;
    :cond_6d
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 452
    .end local v5           #url:Ljava/lang/String;
    .end local v8           #galleryUri:Landroid/net/Uri;
    .end local v12           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_73
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    return-object v3
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 418
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;->forceLoad()V

    .line 420
    :cond_b
    return-void
.end method
