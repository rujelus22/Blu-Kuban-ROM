.class final Lcom/google/android/apps/plus/service/AndroidContactsSync$2;
.super Lcom/google/android/apps/plus/api/LargeAvatarOperation;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;->downloadLargeAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$stateMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Ljava/util/HashMap;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2088
    iput-object p6, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$stateMap:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p8, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    return-void
.end method


# virtual methods
.method protected saveLargeAvatar(Ljava/lang/String;[B)V
    .registers 12
    .parameter "gaiaId"
    .parameter "bytes"

    .prologue
    const/4 v8, 0x0

    .line 2095
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$stateMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;

    .line 2096
    .local v4, state:Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    #calls: Lcom/google/android/apps/plus/service/AndroidContactsSync;->getRawContactsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->access$500(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->rawContactId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2098
    .local v3, rawContactUri:Landroid/net/Uri;
    const-string v5, "display_photo"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2100
    .local v2, rawContactPhotoUri:Landroid/net/Uri;
    if-eqz p2, :cond_56

    .line 2102
    :try_start_1d
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2103
    .local v1, os:Ljava/io/OutputStream;
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2104
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_31

    .line 2114
    .end local v1           #os:Ljava/io/OutputStream;
    :cond_29
    :goto_29
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$resolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v5, v6, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->saveAvatarSignature(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;)V

    .line 2115
    return-void

    .line 2105
    :catch_31
    move-exception v0

    .line 2106
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HttpTransaction"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2107
    const-string v5, "HttpTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not store large avatar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/apps/plus/service/AndroidContactsSync$AvatarState;->gaiaId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 2111
    .end local v0           #e:Ljava/io/IOException;
    :cond_56
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_29
.end method
