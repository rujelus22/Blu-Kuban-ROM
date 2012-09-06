.class public Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter;
.super Ljava/lang/Object;
.source "MediaStoreMergerAdapter.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;
    }
.end annotation


# instance fields
.field private final mediaStoreMergerFactory:Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;)V
    .registers 2
    .parameter "adapteeFactory"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter;->mediaStoreMergerFactory:Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;

    .line 38
    return-void
.end method

.method public static getImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;
    .registers 15
    .parameter "contentResolver"
    .parameter "imageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->fromUris(Landroid/content/ContentResolver;Ljava/util/List;)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;

    move-result-object v12

    .line 73
    .local v12, mediaStore:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
    :try_start_8
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->nextMediaRow()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2a

    move-result-object v11

    .line 74
    .local v11, currentRow:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    if-nez v11, :cond_13

    .line 75
    const/4 v0, 0x0

    .line 82
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->close()V

    :goto_12
    return-object v0

    .line 79
    :cond_13
    :try_start_13
    new-instance v0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;

    iget-object v1, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->storageUri:Landroid/net/Uri;

    iget-object v2, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->description:Ljava/lang/String;

    iget-wide v3, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->dateTaken:J

    iget v5, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->orientation:I

    iget-wide v6, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->latitude:D

    iget-wide v8, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->longitude:D

    iget-object v10, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;-><init>(Landroid/net/Uri;Ljava/lang/String;JIDDLjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2a

    .line 82
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->close()V

    goto :goto_12

    .end local v11           #currentRow:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :catchall_2a
    move-exception v0

    invoke-virtual {v12}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->close()V

    throw v0
.end method


# virtual methods
.method public getImages()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter;->mediaStoreMergerFactory:Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMergerAdapter$MediaStoreMergerFactory;->makeMediaStoreMerger()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;

    move-result-object v14

    .line 44
    .local v14, mediaStore:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
    :try_start_6
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    .line 45
    .local v13, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    const/4 v11, 0x0

    .line 47
    .local v11, currentRow:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :goto_c
    :try_start_c
    invoke-virtual {v14}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->nextMediaRow()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v11

    if-eqz v11, :cond_37

    .line 48
    new-instance v0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;

    invoke-virtual {v11}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->description:Ljava/lang/String;

    iget-wide v3, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->dateTaken:J

    iget v5, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->orientation:I

    iget-wide v6, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->latitude:D

    iget-wide v8, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->longitude:D

    iget-object v10, v11, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;-><init>(Landroid/net/Uri;Ljava/lang/String;JIDDLjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32
    .catch Lcom/google/android/apps/unveil/env/media/InvalidUriException; {:try_start_c .. :try_end_2a} :catch_2b

    goto :goto_c

    .line 51
    :catch_2b
    move-exception v12

    .line 56
    .local v12, e:Lcom/google/android/apps/unveil/env/media/InvalidUriException;
    :try_start_2c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_32

    .line 60
    .end local v11           #currentRow:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .end local v12           #e:Lcom/google/android/apps/unveil/env/media/InvalidUriException;
    .end local v13           #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    :catchall_32
    move-exception v0

    invoke-virtual {v14}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->close()V

    throw v0

    .restart local v11       #currentRow:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .restart local v13       #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    :cond_37
    invoke-virtual {v14}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->close()V

    return-object v13
.end method
