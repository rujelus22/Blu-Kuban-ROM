.class Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "DOADatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputStreamCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;


# direct methods
.method private constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/io/File;
    .registers 12
    .parameter "key"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_48

    .line 112
    iget-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    #getter for: Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->access$0(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_34

    .line 115
    :cond_2c
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_4f

    .line 124
    .end local v7           #c:Landroid/database/Cursor;
    :goto_32
    monitor-exit p0

    return-object v1

    .line 118
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_34
    const/4 v1, 0x0

    :try_start_35
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, path:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v8, file:Ljava/io/File;
    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    invoke-super {p0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #file:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_48
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_4f

    goto :goto_32

    .line 111
    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;->get(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
