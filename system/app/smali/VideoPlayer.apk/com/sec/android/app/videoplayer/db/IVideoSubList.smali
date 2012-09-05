.class public interface abstract Lcom/sec/android/app/videoplayer/db/IVideoSubList;
.super Ljava/lang/Object;
.source "IVideoSubList.java"


# virtual methods
.method public abstract add(Landroid/content/ContentValues;)V
.end method

.method public abstract addBookmark(Ljava/lang/String;JJ)I
.end method

.method public abstract delete(J)I
.end method

.method public abstract delete(Ljava/lang/String;)I
.end method

.method public abstract deleteAll()I
.end method

.method public abstract deleteBookmark(JLjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteByKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteByVideoId(J)I
.end method

.method public abstract deleteByVideoUri(Ljava/lang/String;)I
.end method

.method public abstract deleteGarbages()I
.end method

.method public abstract deleteGarbagesWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteList(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColumnData(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDetail(J)Landroid/database/Cursor;
.end method

.method public abstract getFavoriteList()Landroid/database/Cursor;
.end method

.method public abstract getIdByName(Ljava/lang/String;)J
.end method

.method public abstract getInfoByDate()Landroid/database/Cursor;
.end method

.method public abstract getList()Landroid/database/Cursor;
.end method

.method public abstract getList(J)Landroid/database/Cursor;
.end method

.method public abstract getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getList(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getListToCheck([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getMostRecentVideoId()Landroid/database/Cursor;
.end method

.method public abstract getNameById(J)Ljava/lang/String;
.end method

.method public abstract getTotalCnt(J)I
.end method

.method public abstract isExistProfileName(Ljava/lang/String;)Z
.end method

.method public abstract refreshBookmarkInfo(J)V
.end method

.method public abstract update(JLandroid/content/ContentValues;)I
.end method

.method public abstract update(Ljava/lang/String;Landroid/content/ContentValues;)I
.end method

.method public abstract updateFavorite(JI)I
.end method

.method public abstract updateIdAndUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
