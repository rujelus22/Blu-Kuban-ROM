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
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 93
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mStreamItemUri:Landroid/net/Uri;

    .line 94
    return-void
.end method

.method private downloadActivityFromServer(Ljava/lang/String;)Z
    .registers 7
    .parameter "activityId"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 159
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 160
    .local v0, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivity(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 162
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 163
    const-string v2, "ViewStreamItemActivity"

    const-string v3, "Cannot download activity"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_24
    return v1

    .line 165
    :cond_25
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 166
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

    .line 170
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

    .line 137
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 140
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

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 144
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_31

    move-result-object v7

    .line 145
    .local v7, mediaBytes:[B
    if-eqz v7, :cond_2d

    .line 152
    .end local v7           #mediaBytes:[B
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :goto_2c
    return-object v7

    .line 148
    .restart local v7       #mediaBytes:[B
    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    new-array v7, v0, [B
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    goto :goto_29

    .line 152
    .end local v7           #mediaBytes:[B
    :catchall_31
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v3

    .line 155
    goto :goto_2c
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 15

    .prologue
    .line 101
    const/4 v10, 0x0

    .line 102
    .local v10, personId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 103
    .local v6, activityId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, mediaIndex:I
    const/4 v11, 0x0

    .line 105
    .local v11, photoIndex:I
    const/4 v8, 0x0

    .line 106
    .local v8, mediaData:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->mStreamItemUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->access$000()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 111
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 112
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 113
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_70

    move-result v11

    .line 117
    :cond_34
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    if-eqz v6, :cond_49

    .line 121
    invoke-direct {p0, v0, v6, v9}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->loadMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;I)[B

    move-result-object v8

    .line 122
    if-nez v8, :cond_49

    .line 123
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->downloadActivityFromServer(Ljava/lang/String;)Z

    move-result v13

    .line 124
    .local v13, success:Z
    if-eqz v13, :cond_49

    .line 125
    invoke-direct {p0, v0, v6, v9}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;->loadMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;I)[B

    move-result-object v8

    .line 129
    .end local v13           #success:Z
    :cond_49
    new-instance v12, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-static {}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 130
    .local v12, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v1, 0x5

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

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    invoke-virtual {v12, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 131
    return-object v12

    .line 117
    .end local v12           #result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :catchall_70
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method
