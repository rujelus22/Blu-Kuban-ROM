.class public Lcom/sec/android/socialhub/image/SocialHubImageObserver;
.super Ljava/lang/Object;
.source "SocialHubImageObserver.java"


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    return-void
.end method

.method public declared-synchronized notifyChange(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 13
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, imageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 95
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_50

    .line 97
    :try_start_a
    iget-object v5, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 99
    .local v3, imgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz v3, :cond_16

    if-nez v0, :cond_22

    .line 101
    :cond_16
    const-string v5, "SocialHubImageObserver"

    const-string v7, "notifyChange()"

    const-string v8, "imgArray or bitmap is null!!"

    invoke-static {v5, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    monitor-exit v6
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_4d

    .line 135
    :goto_20
    monitor-exit p0

    return-void

    .line 105
    :cond_22
    :try_start_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, img:Landroid/widget/ImageView;
    monitor-enter v2
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_4d

    .line 113
    :try_start_33
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, img_url:Ljava/lang/String;
    if-eqz v4, :cond_53

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 119
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :cond_48
    :goto_48
    monitor-exit v2

    goto :goto_26

    .end local v4           #img_url:Ljava/lang/String;
    :catchall_4a
    move-exception v5

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v5

    .line 134
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #imgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :catchall_4d
    move-exception v5

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 93
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_50
    move-exception v5

    monitor-exit p0

    throw v5

    .line 124
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #img:Landroid/widget/ImageView;
    .restart local v3       #imgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    .restart local v4       #img_url:Ljava/lang/String;
    :cond_53
    :try_start_53
    const-string v5, "SocialHubImageObserver"

    const-string v7, "notifyChange()"

    const-string v8, "img_url is null!!!!"

    invoke-static {v5, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_4a

    goto :goto_48

    .line 128
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v4           #img_url:Ljava/lang/String;
    :cond_5d
    :try_start_5d
    const-string v5, "SocialHubImageObserver"

    const-string v7, "noyifyChange()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " registered image is refreshed!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->unregisterImage(Ljava/lang/String;)V

    .line 134
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_4d

    goto :goto_20
.end method

.method public declared-synchronized registerImage(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .registers 11
    .parameter "url"
    .parameter "image"

    .prologue
    .line 43
    monitor-enter p0

    const/4 v2, 0x0

    .line 45
    .local v2, ret:Z
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_69

    .line 47
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "SocialHubImageObserver"

    const-string v5, "registerImage()"

    const-string v6, "==============================================================================="

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "SocialHubImageObserver"

    const-string v5, "registerImage()"

    const-string v6, "url is null so register to map!!"

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "SocialHubImageObserver"

    const-string v5, "registerImage()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "SocialHubImageObserver"

    const-string v5, "registerImage()"

    const-string v6, "==============================================================================="

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x1

    .line 63
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :goto_4d
    iget-object v3, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .local v1, imgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_66

    .line 67
    monitor-exit p0

    return v2

    .line 59
    .end local v1           #imgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :cond_5b
    :try_start_5b
    const-string v3, "SocialHubImageObserver"

    const-string v5, "registerImage()"

    const-string v6, "already registered to map!!"

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x0

    goto :goto_4d

    .line 65
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_66

    :try_start_68
    throw v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 43
    :catchall_69
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unregisterImage(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    .line 78
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 76
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
