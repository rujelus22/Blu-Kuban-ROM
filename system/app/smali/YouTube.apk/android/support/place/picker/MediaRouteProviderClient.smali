.class public Landroid/support/place/picker/MediaRouteProviderClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROUTE_ID_TYPE_SERIAL_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "aah.MediaRouteProviderClient"


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method


# virtual methods
.method public deleteRouteIdForApplication(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 119
    if-nez v1, :cond_b

    .line 131
    :goto_a
    return-void

    .line 124
    :cond_b
    :try_start_b
    sget-object v0, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "delete"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_24} :catch_28

    .line 130
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_a

    .line 127
    :catch_28
    move-exception v0

    .line 128
    :try_start_29
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    .line 130
    :catchall_2f
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public getRouteIdForApplication(Ljava/lang/String;)Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    iget-object v0, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 64
    if-nez v0, :cond_d

    .line 90
    :goto_c
    return-object v6

    .line 69
    :cond_d
    :try_start_d
    sget-object v1, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "route_id_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "route_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3a} :catch_57

    move-result v1

    if-nez v1, :cond_41

    .line 76
    :cond_3d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_c

    .line 81
    :cond_41
    const/4 v1, 0x0

    :try_start_42
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 82
    if-ne v1, v7, :cond_63

    .line 83
    new-instance v1, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_52} :catch_57

    .line 90
    :goto_52
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v6, v1

    goto :goto_c

    .line 87
    :catch_57
    move-exception v1

    .line 88
    :try_start_58
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5e

    .line 90
    :catchall_5e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    :cond_63
    move-object v1, v6

    goto :goto_52
.end method

.method public setRouteIdForApplication(Ljava/lang/String;Landroid/support/place/picker/MediaRouteProviderClient$RouteId;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 97
    if-nez v1, :cond_b

    .line 113
    :goto_a
    return-void

    .line 102
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v2, "route_id_type"

    invoke-virtual {p2}, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->getRouteIdType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "route_id"

    invoke-virtual {p2}, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->getRouteIdValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v2, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "set"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 108
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3f} :catch_43

    .line 112
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_a

    .line 109
    :catch_43
    move-exception v0

    .line 110
    :try_start_44
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4a

    .line 112
    :catchall_4a
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method
