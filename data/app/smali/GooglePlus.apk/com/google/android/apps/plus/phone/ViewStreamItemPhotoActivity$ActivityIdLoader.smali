.class Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "ViewStreamItemPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityIdLoader"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mStreamItemUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "streamItemUri"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 89
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mStreamItemUri:Landroid/net/Uri;

    .line 90
    return-void
.end method

.method private downloadActivityFromServer(Ljava/lang/String;)Z
    .registers 7
    .parameter "activityId"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 153
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 154
    .local v0, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivity(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 156
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 157
    const-string v2, "ViewStreamItemActivity"

    const-string v3, "Cannot download activity"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_24
    return v1

    .line 159
    :cond_25
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 160
    const-string v2, "ViewStreamItemActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot download activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 164
    :cond_48
    const/4 v1, 0x1

    goto :goto_24
.end method

.method private loadMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;I)[B
    .registers 12
    .parameter "resolver"
    .parameter "activityId"
    .parameter "photoIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, activityUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "media"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 138
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_39

    move-result-object v7

    .line 139
    .local v7, mediaBytes:[B
    if-eqz v7, :cond_2d

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    .end local v7           #mediaBytes:[B
    :goto_2c
    return-object v7

    .line 142
    .restart local v7       #mediaBytes:[B
    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    new-array v7, v0, [B
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_39

    .line 146
    .end local v7           #mediaBytes:[B
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    :cond_34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v3

    .line 149
    goto :goto_2c

    .line 146
    :catchall_39
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 14

    .prologue
    .line 97
    const/4 v10, 0x0

    .line 98
    .local v10, personId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 99
    .local v6, activityId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 100
    .local v9, mediaIndex:I
    const/4 v8, 0x0

    .line 101
    .local v8, mediaData:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mStreamItemUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->access$000()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 105
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 106
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_63

    move-result v9

    .line 111
    :cond_2e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 114
    if-eqz v6, :cond_43

    .line 115
    invoke-direct {p0, v0, v6, v9}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->loadMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;I)[B

    move-result-object v8

    .line 116
    if-nez v8, :cond_43

    .line 117
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->downloadActivityFromServer(Ljava/lang/String;)Z

    move-result v12

    .line 118
    .local v12, success:Z
    if-eqz v12, :cond_43

    .line 119
    invoke-direct {p0, v0, v6, v9}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->loadMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;I)[B

    move-result-object v8

    .line 123
    .end local v12           #success:Z
    :cond_43
    new-instance v11, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-static {}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 124
    .local v11, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v8, v1, v2

    invoke-virtual {v11, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    return-object v11

    .line 111
    .end local v11           #result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :catchall_63
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method
