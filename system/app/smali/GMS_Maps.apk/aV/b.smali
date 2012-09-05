.class LaV/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:LaM/m;

.field final synthetic c:LaV/a;


# direct methods
.method constructor <init>(LaV/a;[Ljava/lang/String;LaM/m;)V
    .registers 4

    iput-object p1, p0, LaV/b;->c:LaV/a;

    iput-object p2, p0, LaV/b;->a:[Ljava/lang/String;

    iput-object p3, p0, LaV/b;->b:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaV/b;->c:LaV/a;

    invoke-static {v0}, LaV/a;->a(LaV/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name=? AND address=?"

    iget-object v4, p0, LaV/b;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, LaV/b;->c:LaV/a;

    invoke-static {v1}, LaV/a;->a(LaV/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    iget-object v3, p0, LaV/b;->b:LaM/m;

    invoke-static {v3}, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a(LaM/m;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_53

    :cond_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    iget-object v1, p0, LaV/b;->c:LaV/a;

    invoke-static {v1}, LaV/a;->a(LaV/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    iget-object v3, p0, LaV/b;->b:LaM/m;

    invoke-static {v3}, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a(LaM/m;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "name=? AND address=?"

    iget-object v5, p0, LaV/b;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_53

    goto :goto_34

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method
