.class public Landroid/support/place/picker/MediaRouteProviderClient;
.super Ljava/lang/Object;
.source "MediaRouteProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;,
        Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    }
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

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
    .registers 7
    .parameter "app"

    .prologue
    .line 117
    iget-object v3, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 119
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_b

    .line 132
    :goto_a
    return-void

    .line 124
    :cond_b
    :try_start_b
    sget-object v3, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 126
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_24} :catch_28

    .line 130
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_a

    .line 127
    .end local v2           #uri:Landroid/net/Uri;
    :catch_28
    move-exception v1

    .line 128
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_29
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    .line 130
    .end local v1           #ex:Landroid/os/RemoteException;
    :catchall_2f
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
.end method

.method public getRouteIdForApplication(Ljava/lang/String;)Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    .registers 13
    .parameter "app"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 62
    iget-object v2, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 64
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_d

    .line 90
    :goto_c
    return-object v8

    .line 69
    :cond_d
    :try_start_d
    sget-object v2, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "get"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, uri:Landroid/net/Uri;
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

    move-result-object v6

    .line 75
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3a} :catch_57

    move-result v2

    if-nez v2, :cond_41

    .line 90
    :cond_3d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_c

    .line 79
    :cond_41
    const/4 v8, 0x0

    .line 81
    .local v8, result:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    const/4 v2, 0x0

    :try_start_43
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 82
    .local v9, routeIdType:I
    if-ne v9, v10, :cond_53

    .line 83
    new-instance v8, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .end local v8           #result:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_53} :catch_57

    .line 90
    .restart local v8       #result:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    :cond_53
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_c

    .line 87
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    .end local v9           #routeIdType:I
    :catch_57
    move-exception v7

    .line 88
    .local v7, ex:Landroid/os/RemoteException;
    :try_start_58
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5e

    .line 90
    .end local v7           #ex:Landroid/os/RemoteException;
    :catchall_5e
    move-exception v2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v2
.end method

.method public setRouteIdForApplication(Ljava/lang/String;Landroid/support/place/picker/MediaRouteProviderClient$RouteId;)V
    .registers 9
    .parameter "app"
    .parameter "routeId"

    .prologue
    .line 95
    iget-object v4, p0, Landroid/support/place/picker/MediaRouteProviderClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 97
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_b

    .line 114
    :goto_a
    return-void

    .line 102
    :cond_b
    :try_start_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "route_id_type"

    invoke-virtual {p2}, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->getRouteIdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v4, "route_id"

    invoke-virtual {p2}, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;->getRouteIdValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v4, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "set"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 108
    .local v2, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3f} :catch_43

    .line 112
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_a

    .line 109
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_43
    move-exception v1

    .line 110
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_44
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4a

    .line 112
    .end local v1           #ex:Landroid/os/RemoteException;
    :catchall_4a
    move-exception v4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
.end method
