.class public final Lcom/google/android/music/store/MusicContent$XAudio;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/music/store/MusicContent$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XAudio"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 665
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "audio"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSorted(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "sortParam"

    .prologue
    .line 701
    if-nez p0, :cond_5

    .line 702
    sget-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    .line 704
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method public static getAudioUri(J)Landroid/net/Uri;
    .registers 5
    .parameter "id"

    .prologue
    .line 679
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    .line 680
    sget-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 682
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRecentAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "sortParam"

    .prologue
    .line 713
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 714
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "recent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 715
    if-eqz p0, :cond_12

    .line 716
    const-string v1, "order"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 719
    :cond_12
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getRemoteAudio(J)Landroid/net/Uri;
    .registers 5
    .parameter "id"

    .prologue
    .line 784
    invoke-static {p0, p1}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vers"

    const-string v2, "remote"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedAudioUri([J)Landroid/net/Uri;
    .registers 3
    .parameter "ids"

    .prologue
    .line 694
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 695
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 696
    const-string v1, ","

    invoke-static {v1, p0}, Lcom/google/common/primitives/Longs;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 697
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getStoreAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "sortParam"

    .prologue
    .line 734
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 735
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "store"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 736
    if-eqz p0, :cond_12

    .line 737
    const-string v1, "order"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 739
    :cond_12
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getStoreAudioUriByStoreId(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "storeSongId"

    .prologue
    .line 749
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 750
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "store"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 751
    const-string v1, "storeSongId"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 752
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "sortParam"

    .prologue
    .line 761
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 762
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "thumbsup"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 763
    if-eqz p0, :cond_12

    .line 764
    const-string v1, "order"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 766
    :cond_12
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static hasAudio(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 801
    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 803
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_11

    .line 809
    :goto_10
    return v8

    .line 807
    :cond_11
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_26

    move-result v0

    if-ne v0, v7, :cond_24

    move v0, v7

    .line 809
    :goto_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_10

    :cond_24
    move v0, v8

    .line 807
    goto :goto_1f

    .line 809
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static hasStoreAudio(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 814
    sget-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 815
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "store"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 816
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 818
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1e

    .line 824
    :goto_1d
    return v9

    .line 822
    :cond_1e
    :try_start_1e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_33

    move-result v0

    if-ne v0, v8, :cond_31

    move v0, v8

    .line 824
    :goto_2c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_1d

    :cond_31
    move v0, v9

    .line 822
    goto :goto_2c

    .line 824
    :catchall_33
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setRating(Landroid/content/ContentResolver;JI)V
    .registers 8
    .parameter "resolver"
    .parameter "audioId"
    .parameter "rating"

    .prologue
    const/4 v3, 0x0

    .line 832
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 833
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "Rating"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 834
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 835
    return-void
.end method
