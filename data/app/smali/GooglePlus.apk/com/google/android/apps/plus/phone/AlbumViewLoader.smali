.class public Lcom/google/android/apps/plus/phone/AlbumViewLoader;
.super Lcom/google/android/apps/plus/phone/PhotoCursorLoader;
.source "AlbumViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/AlbumViewLoader$PhotoQuery;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "ownerId"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserId"
    .parameter "streamId"
    .parameter "eventId"

    .prologue
    .line 59
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 61
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->getLoaderUri()Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, loaderUri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->setUri(Landroid/net/Uri;)V

    .line 67
    sget-object v1, Lcom/google/android/apps/plus/phone/AlbumViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->setProjection([Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
