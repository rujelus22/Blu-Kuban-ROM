.class public Lcom/estrongs/android/pop/fs/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/ag;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    sput-object v1, Lcom/estrongs/android/pop/fs/d;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    sput-object v1, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "consumer_key"

    const-string v2, "7ydzyghbedham3v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "consumer_secret"

    const-string v2, "uzzbmc597mpej4y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server"

    const-string v2, "api.dropbox.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_server"

    const-string v2, "api-content.dropbox.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "port"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/pop/fs/d;->d:Ljava/util/HashMap;

    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/util/ag;
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;
    .registers 11

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_24

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ag;

    :goto_f
    if-nez v0, :cond_23

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    const-string v2, "com.dropbox.client.DropboxAPI"

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/util/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_43

    const-string v0, "DropBox"

    const-string v2, "Create DropboxAPI failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    sget-object v2, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_27
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_3d

    sget-object v2, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_30
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_40

    move-object v0, v1

    goto :goto_f

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v2

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "getConfig"

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_d2

    sget-object v1, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    const-string v1, "authenticateToken"

    invoke-virtual {v2, v1, v4}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6e
    invoke-static {v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    const-string v1, "authStatus"

    invoke-virtual {v3, v1}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    const-string v5, "com.dropbox.client.DropboxAPI"

    const-string v6, "AUTH_STATUS_SUCCESS"

    invoke-static {v1, v5, v6}, Lcom/estrongs/android/util/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_e0

    const-string v1, "DropBox"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "auth failed. auth status: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "authStatus"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "authDetail"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v0, "authDetail"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v1, v0, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v1

    :cond_d2
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v5

    aput-object p0, v1, v6

    aput-object p1, v1, v7

    const-string v4, "authenticate"

    invoke-virtual {v2, v4, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    :cond_e0
    if-nez v0, :cond_103

    const-string v0, "accessTokenKey"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "accessTokenSecret"

    invoke-virtual {v3, v1}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_f5
    sget-object v4, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_100
    .catchall {:try_start_f5 .. :try_end_100} :catchall_10f

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->a()V

    :cond_103
    sget-object v1, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_106
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_112

    move-object v0, v2

    goto/16 :goto_23

    :catchall_10f
    move-exception v0

    :try_start_110
    monitor-exit v3
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v0

    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit v1
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw v0
.end method

.method public static a(Lcom/estrongs/android/util/ag;)Lcom/estrongs/android/util/u;
    .registers 7

    new-instance v1, Lcom/estrongs/android/util/u;

    invoke-direct {v1}, Lcom/estrongs/android/util/u;-><init>()V

    const-string v0, "hash"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const-string v0, "is_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    :goto_1e
    iput v0, v1, Lcom/estrongs/android/util/u;->e:I

    const-string v0, "modified"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->p(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, v1, Lcom/estrongs/android/util/u;->g:I

    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const-string v0, "bytes"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/util/u;->h:I

    iget-object v0, v1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, v1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5e

    :cond_5a
    const-string v0, "/"

    iput-object v0, v1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    :cond_5e
    return-object v1

    :cond_5f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Ljava/io/InputStream;
    .registers 10

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v6}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    const-string v5, "dropbox"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const-string v4, "getFileStream"

    invoke-virtual {v0, v4, v2}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v2

    if-eqz v2, :cond_59

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_a8

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xce

    if-eq v0, v4, :cond_a8

    :cond_59
    const-string v0, "DropBox"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cant get file input stream for:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_89

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_89

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "token expired"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_89
    if-eqz v2, :cond_a6

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_a6

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    :cond_a6
    move-object v0, v1

    :goto_a7
    return-object v0

    :cond_a8
    invoke-static {v7}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addDownloadCount(I)V

    const-string v0, "is"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_a7
.end method

.method private static a(Lcom/estrongs/android/util/u;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x1

    const-string v2, ""

    iget v1, p0, Lcom/estrongs/android/util/u;->e:I

    if-ne v1, v0, :cond_96

    :goto_7
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/estrongs/android/pop/fs/d;->f:Ljava/lang/String;

    if-nez v1, :cond_99

    const-string v1, "MM/dd/yy"

    :goto_f
    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_9d

    const-string v1, ""

    :goto_1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_a6

    move-result-object v1

    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " | "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget v4, p0, Lcom/estrongs/android/util/u;->g:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " | "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_b6

    const-string v0, "d"

    :goto_7a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rw"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_96
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_99
    sget-object v1, Lcom/estrongs/android/pop/fs/d;->f:Ljava/lang/String;

    goto/16 :goto_f

    :cond_9d
    :try_start_9d
    iget v1, p0, Lcom/estrongs/android/util/u;->h:I

    int-to-long v5, v1

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a3} :catch_a6

    move-result-object v1

    goto/16 :goto_1f

    :catch_a6
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_27

    :cond_b6
    const-string v0, "-"

    goto :goto_7a
.end method

.method private static a(ILjava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/u;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/estrongs/android/util/t;->a(II)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/estrongs/android/pop/d/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    if-nez v2, :cond_6

    sput-object p0, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    :cond_6
    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v16

    if-eqz v16, :cond_24

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_24

    :cond_1e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_23
    :goto_23
    return-object v2

    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v5

    const/4 v3, 0x0

    if-nez p2, :cond_45

    if-eqz v5, :cond_45

    :try_start_3d
    iget v2, v5, Lcom/estrongs/android/util/u;->e:I

    if-eqz v2, :cond_45

    iget v2, v5, Lcom/estrongs/android/util/u;->i:I

    if-nez v2, :cond_40d

    :cond_45
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v8, "dropbox"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v19, v4, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x2710

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v6

    const-string v6, "metadata"

    invoke-virtual {v2, v6, v4}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    if-eqz v3, :cond_a5

    const-string v2, "is_dir"

    invoke-virtual {v3, v2}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a5

    const-string v2, "httpCode"

    invoke-virtual {v3, v2}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_cc

    :cond_a5
    if-eqz v3, :cond_c9

    const-string v2, "httpCode"

    invoke-virtual {v3, v2}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x191

    if-ne v2, v4, :cond_c9

    new-instance v2, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v4, "token expired"

    sget-object v6, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v2, v4, v6}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v2
    :try_end_c1
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_3d .. :try_end_c1} :catch_c1

    :catch_c1
    move-exception v2

    iget-object v4, v2, Lcom/estrongs/android/pop/fs/DropboxException;->error:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    sget-object v6, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    if-ne v4, v6, :cond_cc

    throw v2

    :cond_c9
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_cc
    move-object v6, v3

    :goto_cd
    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez v6, :cond_1d2

    if-nez v5, :cond_d6

    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_d6
    iget v2, v5, Lcom/estrongs/android/util/u;->b:I

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/fs/d;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget v2, v5, Lcom/estrongs/android/util/u;->i:I

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xf

    cmp-long v2, v6, v8

    if-lez v2, :cond_40a

    new-instance v2, Lcom/estrongs/android/util/l;

    invoke-direct {v2}, Lcom/estrongs/android/util/l;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    iput-object v5, v2, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/util/l;->a(I)V

    :goto_110
    if-nez v4, :cond_11e

    if-eqz v2, :cond_117

    invoke-virtual {v2}, Lcom/estrongs/android/util/l;->d()V

    :cond_117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_23

    :cond_11e
    const/4 v3, 0x1

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    move-object v13, v2

    move v14, v3

    move-object v15, v5

    move-object v5, v4

    :goto_127
    const/4 v2, 0x0

    if-eqz v5, :cond_1cb

    const/4 v4, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v21

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v6

    const/4 v2, 0x0

    if-nez v21, :cond_248

    new-instance v4, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v4, v3, v6}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    :goto_14b
    if-eqz v2, :cond_293

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_152
    if-eqz v14, :cond_29a

    const/4 v2, 0x0

    move-object v10, v2

    :goto_156
    if-nez p3, :cond_2a2

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_2a2

    const/4 v2, 0x0

    move v3, v2

    :goto_164
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2a6

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_2a6

    const/4 v2, 0x0

    move v4, v2

    :goto_17b
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/d;->f:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_189
    :goto_189
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2aa

    if-eqz v11, :cond_1a5

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1a5

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3ef

    :cond_1a5
    if-nez v14, :cond_1b4

    if-eqz v15, :cond_1b4

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    iget v3, v15, Lcom/estrongs/android/util/u;->a:I

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3, v10}, Lcom/estrongs/android/util/t;->a(IILjava/util/HashMap;)V

    :cond_1b4
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUseCount(I)V

    :cond_1c2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addBowseCount(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->checkUpload(I)V

    move-object v2, v8

    :cond_1cb
    if-eqz v13, :cond_23

    invoke-virtual {v13}, Lcom/estrongs/android/util/l;->d()V

    goto/16 :goto_23

    :cond_1d2
    const-string v2, "contents"

    invoke-virtual {v6, v2}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v5, :cond_22d

    invoke-static {v6}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/ag;)Lcom/estrongs/android/util/u;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    iput v6, v5, Lcom/estrongs/android/util/u;->i:I

    move/from16 v0, v20

    iput v0, v5, Lcom/estrongs/android/util/u;->b:I

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const-string v6, "/"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    const/4 v6, 0x0

    iput v6, v5, Lcom/estrongs/android/util/u;->c:I

    :goto_203
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/estrongs/android/util/t;->a(Lcom/estrongs/android/util/u;)V

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/estrongs/android/util/t;->b(ILjava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v5

    move-object v13, v3

    move v14, v4

    move-object v15, v5

    move-object v5, v2

    goto/16 :goto_127

    :cond_21c
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/estrongs/android/util/u;->c:I

    goto :goto_203

    :cond_22d
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    iput v6, v5, Lcom/estrongs/android/util/u;->i:I

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/estrongs/android/util/t;->b(Lcom/estrongs/android/util/u;)V

    move-object v13, v3

    move v14, v4

    move-object v15, v5

    move-object v5, v2

    goto/16 :goto_127

    :cond_248
    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_257

    new-instance v4, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v4, v3, v6}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_14b

    :cond_257
    const/4 v7, 0x2

    move/from16 v0, v21

    if-ne v0, v7, :cond_266

    new-instance v4, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v4, v3, v6}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_14b

    :cond_266
    const/4 v7, 0x3

    move/from16 v0, v21

    if-ne v0, v7, :cond_275

    new-instance v4, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v4, v3, v6}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_14b

    :cond_275
    const/4 v7, 0x4

    move/from16 v0, v21

    if-ne v0, v7, :cond_405

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v4, v3, v6}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_14b

    :cond_293
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_152

    :cond_29a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v10, v2

    goto/16 :goto_156

    :cond_2a2
    const/4 v2, 0x1

    move v3, v2

    goto/16 :goto_164

    :cond_2a6
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_17b

    :cond_2aa
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v14, :cond_31c

    const/4 v5, 0x0

    :goto_2b1
    if-eqz v14, :cond_321

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/u;

    move-object v9, v2

    :goto_2bc
    if-nez v14, :cond_2c6

    const/4 v2, 0x0

    iput v2, v9, Lcom/estrongs/android/util/u;->i:I

    iget-object v2, v9, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c6
    const-string v2, "dropbox"

    iget-object v5, v9, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1, v5}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget v2, v9, Lcom/estrongs/android/util/u;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_327

    const/4 v2, 0x1

    move v5, v2

    :goto_2d9
    invoke-static/range {v23 .. v23}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_2ea

    if-eqz v2, :cond_2ea

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_189

    :cond_2ea
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_189

    if-eqz v21, :cond_2f9

    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_32a

    :cond_2f9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_302
    :goto_302
    if-eqz v4, :cond_3de

    invoke-static {v9}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/u;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v2, v6, v5

    move-object/from16 v0, v23

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_31c
    invoke-static {v2}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v5

    goto :goto_2b1

    :cond_321
    invoke-static {v5}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/ag;)Lcom/estrongs/android/util/u;

    move-result-object v2

    move-object v9, v2

    goto :goto_2bc

    :cond_327
    const/4 v2, 0x0

    move v5, v2

    goto :goto_2d9

    :cond_32a
    const/4 v6, 0x2

    move/from16 v0, v21

    if-ne v0, v6, :cond_35c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v24, 0x1

    if-eqz v5, :cond_34b

    const-wide/16 v6, 0x0

    :goto_33f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v24

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_302

    :cond_34b
    new-instance v6, Ljava/lang/Long;

    iget v7, v9, Lcom/estrongs/android/util/u;->h:I

    int-to-long v0, v7

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_33f

    :cond_35c
    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_385

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Long;

    iget v0, v9, Lcom/estrongs/android/util/u;->g:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-direct {v7, v0, v1}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v2, v6

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_302

    :cond_385
    const/4 v6, 0x4

    move/from16 v0, v21

    if-ne v0, v6, :cond_302

    if-nez v11, :cond_3ac

    const/4 v2, 0x0

    :goto_38d
    if-eqz v2, :cond_3c4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v6, v7

    const/4 v7, 0x1

    iget v2, v2, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_302

    :cond_3ac
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    goto :goto_38d

    :cond_3c4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_302

    :cond_3de
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v6

    move-object/from16 v0, v23

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_3ef
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V

    goto/16 :goto_19f

    :cond_405
    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_14b

    :cond_40a
    move-object v2, v3

    goto/16 :goto_110

    :cond_40d
    move-object v6, v3

    goto/16 :goto_cd
.end method

.method private static declared-synchronized a()V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/fs/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/estrongs/android/pop/fs/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_2d

    sput-object p0, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    const-string v0, "dropbox"

    invoke-static {v0}, Lcom/estrongs/android/util/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_29

    const-string v0, "DropBox"

    const-string v2, "dropbox can\'t be loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v2, "Not installed"

    sget-object v3, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    const/4 v0, 0x0

    :try_start_2a
    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->j(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_26

    :cond_2d
    monitor-exit v1

    return-void
.end method

.method public static a(Lcom/estrongs/android/util/ag;Lcom/estrongs/android/util/u;)V
    .registers 6

    const-string v0, "hash"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const-string v0, "is_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    :goto_19
    iput v0, p1, Lcom/estrongs/android/util/u;->e:I

    const-string v0, "modified"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->p(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/estrongs/android/util/u;->g:I

    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const-string v0, "bytes"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/util/u;->h:I

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_59

    :cond_55
    const-string v0, "/"

    iput-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    :cond_59
    return-void

    :cond_5a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 2

    instance-of v0, p0, Lcom/estrongs/android/pop/fs/e;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/fs/e;->a()V

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/fs/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;J)Z
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const-string v2, "deleteFile"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v2

    if-eqz v2, :cond_33

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_75

    :cond_33
    if-eqz v2, :cond_4f

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_4f

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "token expired"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_4f
    if-eqz v2, :cond_73

    const-string v0, "httpCode"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_73

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->i(Ljava/lang/String;)V

    :cond_73
    move v0, v1

    :goto_74
    return v0

    :cond_75
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_74
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    const-string v5, "copyFile"

    invoke-virtual {v0, v5, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    if-eqz v3, :cond_42

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_84

    :cond_42
    const-string v0, "DropBox"

    const-string v1, "cant copyFile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_65

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_65

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "token expired"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_65
    if-eqz v3, :cond_82

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_82

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    :cond_82
    move v0, v2

    :goto_83
    return v0

    :cond_84
    move v0, v1

    goto :goto_83
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    const-string v2, "com.dropbox.client.DropboxAPI"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/util/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    const-string v1, "DropBox"

    const-string v2, "Create DropboxAPI failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return v0

    :cond_17
    invoke-static {v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v1

    const-string v2, "getConfig"

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "fake"

    aput-object v4, v3, v0

    const-string v4, "fake"

    aput-object v4, v3, v5

    aput-object v2, v3, v6

    const-string v2, "authenticateToken"

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    const-string v0, "register"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    if-eqz p1, :cond_38

    const-string v3, "createFolder"

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v3, "httpCode"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_66

    :cond_36
    move v0, v2

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    :try_start_3b
    invoke-static {p0, v3, v4}, Lcom/estrongs/android/pop/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4b

    move-result-object v0

    const/16 v3, 0x20

    :try_start_41
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_4b

    if-eqz v0, :cond_49

    :try_start_46
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_63

    :cond_49
    move v0, v1

    goto :goto_37

    :catch_4b
    move-exception v1

    if-eqz v0, :cond_51

    :try_start_4e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_53

    :cond_51
    move v0, v2

    goto :goto_37

    :catch_53
    move-exception v0

    move v0, v2

    goto :goto_37

    :catchall_56
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    throw v0

    :catch_60
    move-exception v0

    move v0, v2

    goto :goto_37

    :catch_63
    move-exception v0

    move v0, v2

    goto :goto_37

    :cond_66
    new-instance v0, Lcom/estrongs/android/util/u;

    invoke-direct {v0}, Lcom/estrongs/android/util/u;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/estrongs/android/util/u;->b:I

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v3

    iget v5, v0, Lcom/estrongs/android/util/u;->b:I

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/estrongs/android/util/u;->c:I

    iput-object v4, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iput v1, v0, Lcom/estrongs/android/util/u;->e:I

    iput v2, v0, Lcom/estrongs/android/util/u;->g:I

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/t;->a(Lcom/estrongs/android/util/u;)V

    move v0, v1

    goto :goto_37

    :catchall_90
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5a
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/fs/e;

    invoke-direct {v0}, Lcom/estrongs/android/pop/fs/e;-><init>()V

    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3}, Ljava/io/PipedInputStream;-><init>()V

    :try_start_22
    invoke-virtual {v3, v0}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_6c

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    const-string v6, "dropbox"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v8

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v2

    new-instance v2, Lcom/estrongs/android/util/l;

    invoke-direct {v2}, Lcom/estrongs/android/util/l;-><init>()V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/fs/e;->a(Lcom/estrongs/android/util/l;)V

    iput-object v1, v2, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    iput-object v3, v2, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v2, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lcom/estrongs/android/util/l;->a(I)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/l;->d()V

    invoke-static {v7}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUploadCount(I)V

    :goto_6b
    return-object v0

    :catch_6c
    move-exception v0

    const-string v0, "DropBox"

    const-string v1, "Can\'t create pipe stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_6b
.end method

.method private static b()V
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_9

    sget-object v0, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    const-string v6, "moveFile"

    invoke-virtual {v0, v6, v3}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    if-eqz v3, :cond_42

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0xc8

    if-eq v0, v6, :cond_84

    :cond_42
    const-string v0, "DropBox"

    const-string v1, "cant moveFile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_65

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_65

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "token expired"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_65
    if-eqz v3, :cond_82

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_82

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    :cond_82
    move v0, v2

    :goto_83
    return v0

    :cond_84
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/t;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/util/t;->b(ILjava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v3

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v2

    if-eqz v3, :cond_a0

    if-nez v2, :cond_a2

    :cond_a0
    move v0, v1

    goto :goto_83

    :cond_a2
    iput v2, v3, Lcom/estrongs/android/util/u;->c:I

    iput-object v5, v3, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/t;->b(Lcom/estrongs/android/util/u;)V

    move v0, v1

    goto :goto_83
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->s(Ljava/lang/String;)Lcom/estrongs/android/util/ag;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v0, "httpCode"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_41

    :cond_1e
    if-eqz v1, :cond_3f

    const-string v0, "httpCode"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3f

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return-object v0

    :cond_41
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/ag;)Lcom/estrongs/android/util/u;

    move-result-object v0

    :cond_45
    new-instance v4, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lcom/estrongs/android/util/u;->e:I

    if-ne v1, v2, :cond_82

    move v1, v2

    :goto_4f
    iput-boolean v1, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v1, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v1, :cond_84

    iget v1, v0, Lcom/estrongs/android/util/u;->h:I

    int-to-long v5, v1

    iput-wide v5, v4, Lcom/estrongs/android/pop/d/e;->e:J

    :goto_5a
    iget v1, v0, Lcom/estrongs/android/util/u;->g:I

    int-to-long v5, v1

    iput-wide v5, v4, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v5, v4, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, v4, Lcom/estrongs/android/pop/d/e;->j:J

    iput-boolean v2, v4, Lcom/estrongs/android/pop/d/e;->k:Z

    iput-boolean v2, v4, Lcom/estrongs/android/pop/d/e;->l:Z

    iget-object v0, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/estrongs/android/pop/d/e;->m:Z

    iget-boolean v0, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v0, :cond_89

    const-string v0, "File"

    :goto_7e
    iput-object v0, v4, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    move-object v0, v4

    goto :goto_40

    :cond_82
    move v1, v3

    goto :goto_4f

    :cond_84
    iput v3, v4, Lcom/estrongs/android/pop/d/e;->g:I

    iput v3, v4, Lcom/estrongs/android/pop/d/e;->f:I

    goto :goto_5a

    :cond_89
    const-string v0, "Directory"

    goto :goto_7e
.end method

.method public static d(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v1, -0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/estrongs/android/util/u;->h:I

    int-to-long v0, v0

    :goto_b
    return-wide v0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->s(Ljava/lang/String;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    if-eqz v3, :cond_22

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_4c

    :cond_22
    if-eqz v3, :cond_4a

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x194

    if-ne v0, v3, :cond_4a

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/d;->i(Ljava/lang/String;)V

    :cond_4a
    move-wide v0, v1

    goto :goto_b

    :cond_4c
    const-string v0, "is_dir"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "bytes"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_b

    :cond_67
    move-wide v0, v1

    goto :goto_b
.end method

.method public static e(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v0

    if-eqz v0, :cond_10

    iget v0, v0, Lcom/estrongs/android/util/u;->e:I

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    move v0, v2

    goto :goto_d

    :cond_10
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->s(Ljava/lang/String;)Lcom/estrongs/android/util/ag;

    move-result-object v3

    if-eqz v3, :cond_34

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_34

    const-string v0, "is_dir"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_57

    :cond_34
    if-eqz v3, :cond_55

    const-string v0, "httpCode"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_55

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V

    :cond_55
    move v0, v2

    goto :goto_d

    :cond_57
    move v0, v1

    goto :goto_d
.end method

.method public static h(Ljava/lang/String;)J
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const-string v1, "accountInfo"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v1

    if-eqz v1, :cond_58

    const-string v0, "httpCode"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_58

    const-string v0, "quotaQuota"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "quotaNormal"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v0, "quotaShared"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_57

    move-result-wide v0

    sub-long v0, v2, v0

    :goto_56
    return-wide v0

    :catch_57
    move-exception v0

    :cond_58
    const-wide/16 v0, 0x0

    goto :goto_56
.end method

.method private static i(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static declared-synchronized j(Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/estrongs/android/pop/fs/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/fs/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    if-nez p0, :cond_14

    sget-object v2, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/c;->b(Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    :try_start_14
    sget-object v2, Lcom/estrongs/android/pop/fs/d;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/pop/fs/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3, p0}, Lcom/estrongs/android/pop/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "dropbox"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_12
    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_1c
    return-void
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_10
    return-object v0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_10
    return-object v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method private static o(Ljava/lang/String;)I
    .registers 2

    const-string v0, "Jan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "Feb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const-string v0, "Mar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    :cond_1e
    const-string v0, "Apr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    goto :goto_9

    :cond_28
    const-string v0, "May"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    goto :goto_9

    :cond_32
    const-string v0, "Jun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    goto :goto_9

    :cond_3c
    const-string v0, "Jul"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x6

    goto :goto_9

    :cond_46
    const-string v0, "Aug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x7

    goto :goto_9

    :cond_50
    const-string v0, "Sep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v0, 0x8

    goto :goto_9

    :cond_5b
    const-string v0, "Oct"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x9

    goto :goto_9

    :cond_66
    const-string v0, "Nov"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0xa

    goto :goto_9

    :cond_71
    const-string v0, "Dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/16 v0, 0xb

    goto :goto_9

    :cond_7c
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0
.end method

.method private static p(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 9

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    :try_start_5
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/d;->o(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_42

    :goto_41
    return-object v0

    :catch_42
    move-exception v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_41
.end method

.method private static q(Ljava/lang/String;)Lcom/estrongs/android/util/u;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->r(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/t;->b(II)Lcom/estrongs/android/util/u;

    move-result-object v0

    goto :goto_7
.end method

.method private static r(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/t;->d(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/t;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/t;->d(Ljava/lang/String;)I

    move-result v0

    :cond_1d
    return v0
.end method

.method private static s(Ljava/lang/String;)Lcom/estrongs/android/util/ag;
    .registers 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/fs/d;->b()V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/util/ag;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "dropbox"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v5

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2710

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const-string v2, "metadata"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v1

    if-eqz v1, :cond_68

    const-string v0, "httpCode"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_68

    new-instance v0, Lcom/estrongs/android/pop/fs/DropboxException;

    const-string v1, "token expired"

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/fs/DropboxException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;)V

    throw v0

    :cond_68
    return-object v1
.end method
