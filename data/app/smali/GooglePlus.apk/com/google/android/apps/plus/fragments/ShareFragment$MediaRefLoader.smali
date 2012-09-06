.class Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
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
    .line 1932
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    .line 1933
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mMediaRefList:Ljava/util/ArrayList;

    .line 1934
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 1935
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .registers 27
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
    .line 1952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1953
    .local v16, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    .line 1954
    .local v3, ownerId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1955
    .local v18, context:Landroid/content/Context;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 1957
    .local v24, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mMediaRefList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1958
    .local v23, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, url:Ljava/lang/String;
    if-nez v6, :cond_93

    const/16 v19, 0x0

    .line 1960
    .local v19, galleryUri:Landroid/net/Uri;
    :goto_34
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1962
    invoke-static/range {v18 .. v19}, Lcom/google/android/apps/plus/util/GalleryUtils;->getPhotoId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1963
    .local v22, photoId:Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_20

    .line 1968
    invoke-static/range {v18 .. v19}, Lcom/google/android/apps/plus/util/GalleryUtils;->getAccountName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 1970
    .local v21, photoAccount:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1972
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 1974
    .local v17, contentType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "video/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_98

    const/16 v25, 0x1

    .line 1976
    .local v25, typeIsVideo:Z
    :goto_7a
    if-eqz v25, :cond_9b

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 1978
    .local v8, type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_7e
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1980
    .local v2, newRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1959
    .end local v2           #newRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .end local v17           #contentType:Ljava/lang/String;
    .end local v19           #galleryUri:Landroid/net/Uri;
    .end local v21           #photoAccount:Ljava/lang/String;
    .end local v22           #photoId:Ljava/lang/Long;
    .end local v25           #typeIsVideo:Z
    :cond_93
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto :goto_34

    .line 1974
    .restart local v17       #contentType:Ljava/lang/String;
    .restart local v19       #galleryUri:Landroid/net/Uri;
    .restart local v21       #photoAccount:Ljava/lang/String;
    .restart local v22       #photoId:Ljava/lang/Long;
    :cond_98
    const/16 v25, 0x0

    goto :goto_7a

    .line 1976
    .restart local v25       #typeIsVideo:Z
    :cond_9b
    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_7e

    .line 1987
    .end local v17           #contentType:Ljava/lang/String;
    .end local v21           #photoAccount:Ljava/lang/String;
    .end local v22           #photoId:Ljava/lang/Long;
    .end local v25           #typeIsVideo:Z
    :cond_9e
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 1989
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 1991
    .restart local v17       #contentType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e4

    const-string v4, "video/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    const/16 v25, 0x1

    .line 1993
    .restart local v25       #typeIsVideo:Z
    :goto_c0
    if-eqz v25, :cond_e7

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 1995
    .restart local v8       #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_c4
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v11

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v14

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1998
    .restart local v2       #newRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1991
    .end local v2           #newRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .end local v25           #typeIsVideo:Z
    :cond_e4
    const/16 v25, 0x0

    goto :goto_c0

    .line 1993
    .restart local v25       #typeIsVideo:Z
    :cond_e7
    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_c4

    .line 1999
    .end local v17           #contentType:Ljava/lang/String;
    .end local v25           #typeIsVideo:Z
    :cond_ea
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->hasUrl()Z

    move-result v4

    if-nez v4, :cond_f6

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2001
    :cond_f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 2004
    .end local v6           #url:Ljava/lang/String;
    .end local v19           #galleryUri:Landroid/net/Uri;
    .end local v23           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    return-object v4
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->mLoadedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1943
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;->forceLoad()V

    .line 1945
    :cond_b
    return-void
.end method
