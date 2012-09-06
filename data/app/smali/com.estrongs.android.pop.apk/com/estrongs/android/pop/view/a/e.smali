.class public Lcom/estrongs/android/pop/view/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:Z

.field public static final e:Ljava/lang/String;

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static n:[Lcom/estrongs/android/pop/view/a/k;

.field private static q:Lcom/estrongs/android/pop/view/a/e;

.field private static r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/view/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Z

.field private static t:Ljava/lang/String;


# instance fields
.field d:J

.field private l:Ljava/lang/String;

.field private m:Z

.field private o:Ljava/lang/Object;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v1, Lcom/estrongs/android/pop/view/a/e;->a:Z

    const v0, 0x989680

    sput v0, Lcom/estrongs/android/pop/view/a/e;->b:I

    sput-boolean v1, Lcom/estrongs/android/pop/view/a/e;->c:Z

    sput v3, Lcom/estrongs/android/pop/view/a/e;->f:I

    sput-object v2, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.estrongs/recomm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/recomm_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/apks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/recomm_items_download_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->k:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    sput-object v2, Lcom/estrongs/android/pop/view/a/e;->q:Lcom/estrongs/android/pop/view/a/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    sput-boolean v3, Lcom/estrongs/android/pop/view/a/e;->s:Z

    const-string v0, "PreferActivity"

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/e;->d:J

    iput-object v2, p0, Lcom/estrongs/android/pop/view/a/e;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->o:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/a/e;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/a/e;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/pop/view/a/j;
    .registers 4

    sget-boolean v0, Lcom/estrongs/android/pop/view/a/e;->s:Z

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/e;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/a/e;->s:Z

    :cond_d
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_10
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/a/j;

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 5

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_10

    monitor-exit v1

    :goto_f
    return-void

    :cond_10
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3b
    monitor-exit v1

    goto :goto_f

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/a/j;)V
    .registers 5

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/a/j;

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/e;->c(Landroid/app/Activity;)V

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/a/e;->i()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/a/e;Lcom/estrongs/android/util/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/util/v;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/a/k;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    :cond_30
    return-void
.end method

.method private a(Lcom/estrongs/android/util/v;)V
    .registers 6

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/a/k;->b:Ljava/lang/String;

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://update.estrongs.com/channel?aid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/v;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/v;->c()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/a/k;->s:Z

    goto :goto_8
.end method

.method private declared-synchronized a([Lcom/estrongs/android/pop/view/a/k;)V
    .registers 16

    const/4 v13, 0x4

    const-wide/16 v2, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_ff

    :try_start_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_32
    :goto_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_41

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    move v5, v4

    :goto_3c
    array-length v0, p1
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_6d

    if-lt v5, v0, :cond_6f

    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :cond_41
    :try_start_41
    const-string v8, "######"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-ne v8, v12, :cond_32

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :catch_6d
    move-exception v0

    goto :goto_3f

    :cond_6f
    aget-object v0, p1, v5

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, p1, v5

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    aget-object v8, p1, v5

    if-nez v0, :cond_d0

    move v0, v4

    :goto_88
    iput v0, v8, Lcom/estrongs/android/pop/view/a/k;->k:I

    aget-object v8, p1, v5

    if-nez v1, :cond_d5

    move-wide v0, v2

    :goto_8f
    iput-wide v0, v8, Lcom/estrongs/android/pop/view/a/k;->m:J

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eq v0, v11, :cond_a3

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eq v0, v12, :cond_a3

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v0, v13, :cond_cb

    :cond_a3
    aget-object v0, p1, v5

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-eqz v0, :cond_c6

    aget-object v0, p1, v5

    iget-wide v8, v0, Lcom/estrongs/android/pop/view/a/k;->m:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_da

    :cond_c6
    aget-object v0, p1, v5

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    :cond_cb
    :goto_cb
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3c

    :cond_d0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_88

    :cond_d5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_8f

    :cond_da
    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v0, v11, :cond_e5

    aget-object v0, p1, v5

    const/4 v8, 0x4

    iput v8, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    :cond_e5
    aget-object v0, p1, v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/estrongs/android/pop/view/a/k;->n:J

    aget-object v0, p1, v5

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/a/k;->n:J

    aget-object v8, p1, v5

    iget-wide v8, v8, Lcom/estrongs/android/pop/view/a/k;->m:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_cb

    aget-object v0, p1, v5

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/view/a/k;->k:I
    :try_end_fe
    .catchall {:try_start_41 .. :try_end_fe} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_fe} :catch_6d

    goto :goto_cb

    :catchall_ff
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/a/i;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Lcom/estrongs/android/pop/view/a/i;

    move v2, v0

    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_22

    move-object v0, v3

    goto :goto_12

    :cond_22
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Lcom/estrongs/android/pop/view/a/i;

    invoke-direct {v1}, Lcom/estrongs/android/pop/view/a/i;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/estrongs/android/pop/view/a/i;->a:Landroid/graphics/drawable/Drawable;

    aget-object v5, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcom/estrongs/android/pop/view/a/i;->b:Ljava/lang/String;

    aget-object v1, v3, v2

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    aget-object v1, v3, v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a
.end method

.method public static declared-synchronized b()Lcom/estrongs/android/pop/view/a/e;
    .registers 2

    const-class v1, Lcom/estrongs/android/pop/view/a/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->q:Lcom/estrongs/android/pop/view/a/e;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/view/a/e;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/a/e;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->q:Lcom/estrongs/android/pop/view/a/e;

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->q:Lcom/estrongs/android/pop/view/a/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/estrongs/android/pop/view/a/e;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    move v0, v1

    goto :goto_8

    :cond_33
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v4, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_7c

    :try_start_4a
    sget-object v5, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_4f
    :goto_4f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5b

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_79

    :try_start_56
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_7c

    move v0, v1

    goto :goto_8

    :cond_5b
    :try_start_5b
    const-string v6, "######"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4f

    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    new-instance v8, Lcom/estrongs/android/pop/view/a/j;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v5, v5, v10

    invoke-direct {v8, v9, v5}, Lcom/estrongs/android/pop/view/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :catchall_79
    move-exception v1

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception v1

    goto :goto_8
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_32
    :try_start_32
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_57

    :try_start_3f
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_59

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_9a

    :try_start_50
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_6

    :catch_57
    move-exception v0

    goto :goto_6

    :cond_59
    :try_start_59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/a/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "######"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/view/a/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_49

    :catchall_9a
    move-exception v0

    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_59 .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_57
.end method

.method private d(Ljava/lang/String;)I
    .registers 14

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    :goto_f
    return v1

    :cond_10
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-array v2, v1, [B

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v8}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_40
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v6, v2, v8, v9}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v8

    if-gtz v8, :cond_8d

    invoke-virtual {v6}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v6, "channel_title"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/a/e;->l:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v6, "hash_code"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    if-eqz v6, :cond_9c

    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v6, :cond_9c

    move v1, v4

    goto :goto_f

    :cond_8d
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_91} :catch_92

    goto :goto_40

    :catch_92
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move v1, v3

    goto/16 :goto_f

    :cond_9c
    :try_start_9c
    sput-object v1, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    check-cast v2, Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_249

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    new-array v8, v1, [Lcom/estrongs/android/pop/view/a/k;

    check-cast v2, Lorg/json/simple/JSONArray;

    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_bb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d5

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v1, :cond_244

    move v2, v4

    :goto_c6
    array-length v1, v8

    if-lt v2, v1, :cond_1e9

    :goto_c9
    array-length v1, v8

    if-eqz v1, :cond_d2

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    if-nez v1, :cond_d2

    sput-object v8, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    :cond_d2
    move v1, v5

    goto/16 :goto_f

    :cond_d5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v10, Lcom/estrongs/android/pop/view/a/k;

    invoke-direct {v10}, Lcom/estrongs/android/pop/view/a/k;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "icon"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->a:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "title"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->c:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "aid"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->b:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "package"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "url"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "shortDesc"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->f:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "version"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->g:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "types"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v11, "market"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_164

    const-string v11, "0"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    :cond_164
    move v1, v4

    :goto_165
    iput-boolean v1, v10, Lcom/estrongs/android/pop/view/a/k;->q:Z

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    if-nez v1, :cond_183

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const-string v11, "cn.wps.moffice_eng"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17f

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const-string v11, "cn.wps.moffice"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    :cond_17f
    const-string v1, "text/plain;application/msexcel;application/ms-excel;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.openxmlformats-officedocument.spreadsheetml.template;application/mspowerpoint;application/ms-powerpoint;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.openxmlformats-officedocument.presentationml.template;application/vnd.openxmlformats-officedocument.presentationml.slideshow;application/msword;application/ms-word;application/vnd.ms-word;application/vnd.ms-works;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.openxmlformats-officedocument.wordprocessingml.template;application/octet-stream;application/log;application/kswps;application/kset;application/ksdps;application/wps;application/et;application/dps;application/dpt;application/wpt;application/ett"

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    :cond_183
    :goto_183
    invoke-virtual {p0, v10}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v1

    iput v1, v10, Lcom/estrongs/android/pop/view/a/k;->o:I

    const-string v1, "show"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19d

    iget-boolean v1, v10, Lcom/estrongs/android/pop/view/a/k;->q:Z

    if-eqz v1, :cond_199

    sget-boolean v1, Lcom/estrongs/android/pop/view/a/e;->a:Z

    if-eqz v1, :cond_19d

    :cond_199
    sget v1, Lcom/estrongs/android/pop/view/a/e;->b:I

    if-lt v6, v1, :cond_1a0

    :cond_19d
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/estrongs/android/pop/view/a/k;->p:Z

    :cond_1a0
    sget-boolean v1, Lcom/estrongs/android/pop/view/a/e;->c:Z

    if-nez v1, :cond_1b5

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    if-eqz v1, :cond_1b5

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    const-string v11, "market://"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/estrongs/android/pop/view/a/k;->p:Z

    :cond_1b5
    const-string v1, "vcode"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/estrongs/android/pop/view/a/k;->r:I

    add-int/lit8 v1, v6, 0x1

    aput-object v10, v8, v6

    move v6, v1

    goto/16 :goto_bb

    :cond_1c4
    move v1, v5

    goto :goto_165

    :cond_1c6
    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const-string v11, "com.uc.browser"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e4

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const-string v11, "com.uc.browser.hd"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e4

    iget-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const-string v11, "com.uc.browser.en"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    :cond_1e4
    const-string v1, "text/plain;text/html"

    iput-object v1, v10, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    goto :goto_183

    :cond_1e9
    move v1, v4

    :goto_1ea
    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v6, v6

    if-lt v1, v6, :cond_1f4

    :goto_1ef
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_c6

    :cond_1f4
    sget-object v6, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    aget-object v9, v8, v2

    iget-object v9, v9, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_241

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    iput-object v9, v6, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v9, v9, v1

    iget-boolean v9, v9, Lcom/estrongs/android/pop/view/a/k;->j:Z

    iput-boolean v9, v6, Lcom/estrongs/android/pop/view/a/k;->j:Z

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/estrongs/android/pop/view/a/k;->k:I

    iput v9, v6, Lcom/estrongs/android/pop/view/a/k;->k:I

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    iput-object v9, v6, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v9, v9, v1

    iget-wide v9, v9, Lcom/estrongs/android/pop/view/a/k;->m:J

    iput-wide v9, v6, Lcom/estrongs/android/pop/view/a/k;->m:J

    aget-object v6, v8, v2

    sget-object v9, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v9, v1

    iget-wide v9, v1, Lcom/estrongs/android/pop/view/a/k;->n:J

    iput-wide v9, v6, Lcom/estrongs/android/pop/view/a/k;->n:J

    goto :goto_1ef

    :cond_241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ea

    :cond_244
    invoke-direct {p0, v8}, Lcom/estrongs/android/pop/view/a/e;->a([Lcom/estrongs/android/pop/view/a/k;)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_247} :catch_92

    goto/16 :goto_c9

    :cond_249
    move v1, v3

    goto/16 :goto_f
.end method

.method private e(Lcom/estrongs/android/pop/view/a/k;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    packed-switch v0, :pswitch_data_60

    :cond_11
    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_11

    :pswitch_1e
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_11

    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    goto :goto_11

    :cond_33
    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    :cond_3d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    goto :goto_11

    :pswitch_53
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/a/k;->o:I

    goto :goto_11

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_1e
        :pswitch_22
        :pswitch_53
    .end packed-switch
.end method

.method private declared-synchronized i()V
    .registers 9

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_80

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_80

    :try_start_11
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v0, v0

    if-lt v1, v0, :cond_2b

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_5

    :catch_29
    move-exception v0

    goto :goto_5

    :cond_2b
    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/estrongs/android/pop/view/a/k;->k:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/estrongs/android/pop/view/a/k;->m:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_52

    const-string v0, "0"

    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "######"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "######"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_11 .. :try_end_7c} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7c} :catch_29

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()[Lcom/estrongs/android/pop/view/a/k;
    .registers 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_2
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_46

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    move v1, v3

    :goto_1b
    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    if-eqz v1, :cond_55

    const-string v1, "[{\"aid\":\"8\",\"icon\":\"http:\\/\\/www.estrongs.com\\/images\\/stories\\/apps\\/wps.png\",\"package\":\"cn.wps.moffice\",\"version\":\"4.0.4\",\"vcode\":\"23\",\"title\":\"\\u91d1\\u5c71\\u624b\\u673a Office\",\"shortDesc\":\"\\u514d\\u8d39\\u4e0b\\u8f7d\\u91d1\\u5c71\\u624b\\u673aOffice\",\"developer\":\"\\u91d1\\u5c71\\u79fb\\u52a8\",\"longDesc\":\"\\u514d\\u8d39\\u4e0b\\u8f7d\\u91d1\\u5c71\\u624b\\u673aOffice\",\"types\":\"text\\/plain;application\\/msexcel;application\\/ms-excel;application\\/vnd.ms-excel;application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application\\/vnd.openxmlformats-officedocument.spreadsheetml.template;application\\/mspowerpoint;application\\/ms-powerpoint;application\\/vnd.ms-powerpoint;application\\/vnd.openxmlformats-officedocument.presentationml.presentation;application\\/vnd.openxmlformats-officedocument.presentationml.template;application\\/vnd.openxmlformats-officedocument.presentationml.slideshow;application\\/msword;application\\/ms-word;application\\/vnd.ms-word;application\\/vnd.ms-works;application\\/vnd.openxmlformats-officedocument.wordprocessingml.document;application\\/vnd.openxmlformats-officedocument.wordprocessingml.template;application\\/octet-stream;application\\/log;application\\/kswps;application\\/kset;application\\/ksdps;application\\/wps;application\\/et;application\\/dps;application\\/dpt;application\\/wpt;application\\/ett\",\"url\":\"http:\\/\\/kad.www.wps.cn\\/wps\\/download\\/android\\/kingsoftoffice_2052\\/moffice_2052_escn.apk\",\"show\":\"1\"}]"

    :goto_24
    invoke-virtual {v2, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_f1

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    new-array v4, v1, [Lcom/estrongs/android/pop/view/a/k;

    check-cast v2, Lorg/json/simple/JSONArray;

    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_58

    move-object v1, v4

    :goto_43
    return-object v1

    :cond_44
    const/4 v1, 0x1

    goto :goto_1b

    :cond_46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1b

    :cond_55
    const-string v1, "[{\"aid\":\"9\",\"icon\":\"http:\\/\\/www.estrongs.com\\/images\\/stories\\/apps\\/wps.png\",\"package\":\"cn.wps.moffice_eng\",\"version\":\"4.0.3\",\"vcode\":\"22\",\"title\":\"Kingsoft Office\",\"shortDesc\":\"Free APP to view MS Office\",\"developer\":\"Kingsoft Mobile\",\"longDesc\":\"Free APP to view MS Office\",\"types\":\"text\\/plain;application\\/msexcel;application\\/ms-excel;application\\/vnd.ms-excel;application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application\\/vnd.openxmlformats-officedocument.spreadsheetml.template;application\\/mspowerpoint;application\\/ms-powerpoint;application\\/vnd.ms-powerpoint;application\\/vnd.openxmlformats-officedocument.presentationml.presentation;application\\/vnd.openxmlformats-officedocument.presentationml.template;application\\/vnd.openxmlformats-officedocument.presentationml.slideshow;application\\/msword;application\\/ms-word;application\\/vnd.ms-word;application\\/vnd.ms-works;application\\/vnd.openxmlformats-officedocument.wordprocessingml.document;application\\/vnd.openxmlformats-officedocument.wordprocessingml.template;application\\/octet-stream;application\\/log;application\\/kswps;application\\/kset;application\\/ksdps;application\\/wps;application\\/et;application\\/dps;application\\/dpt;application\\/wpt;application\\/ett\",\"url\":\"http:\\/\\/www.kingsoftstore.com\\/download\\/moffice_1033_es.apk\",\"show\":\"1\"}]"

    goto :goto_24

    :cond_58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v7, Lcom/estrongs/android/pop/view/a/k;

    invoke-direct {v7}, Lcom/estrongs/android/pop/view/a/k;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "icon"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->a:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "title"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->c:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "aid"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->b:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "package"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "url"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "shortDesc"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->f:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "version"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->g:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v8, "types"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v1

    iput v1, v7, Lcom/estrongs/android/pop/view/a/k;->o:I

    const-string v1, "show"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e2

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/estrongs/android/pop/view/a/k;->p:Z

    :cond_e2
    const-string v1, "vcode"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/estrongs/android/pop/view/a/k;->r:I

    add-int/lit8 v1, v3, 0x1

    aput-object v7, v4, v3
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ee} :catch_f4

    move v3, v1

    goto/16 :goto_3c

    :cond_f1
    move-object v1, v5

    goto/16 :goto_43

    :catch_f4
    move-exception v1

    move-object v1, v5

    goto/16 :goto_43
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .registers 6

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/a/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->R()J

    move-result-wide v0

    :goto_10
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    :cond_1c
    iget-wide v0, p0, Lcom/estrongs/android/pop/view/a/e;->d:J

    goto :goto_10
.end method

.method public a()V
    .registers 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_20
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_30
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/e;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Landroid/os/Message;J)V
    .registers 8

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/e;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/view/a/k;I)V
    .registers 5

    iget-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    if-eqz v0, :cond_18

    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    :cond_e
    iput p2, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    :cond_10
    iget-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->b()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    :cond_18
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/estrongs/android/pop/view/a/k;->n:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/a/e;->i()V

    return-void
.end method

.method public a(Z)V
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_15

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_15
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2f

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    :cond_2d
    const-string v0, "zh"

    :cond_2f
    :goto_2f
    const-string v1, "http://update.estrongs.com/channel?"

    sget v2, Lcom/estrongs/android/pop/view/a/e;->f:I

    if-nez v2, :cond_d0

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    if-nez v2, :cond_ac

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "l="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_50
    if-eqz p1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&s=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_65
    new-instance v1, Lcom/estrongs/android/util/v;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/view/a/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/a/f;-><init>(Lcom/estrongs/android/pop/view/a/e;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/v;->c()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/a/e;->d:J

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/estrongs/android/pop/view/a/e;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/c;->a(J)V

    return-void

    :cond_a9
    const-string v0, "en"

    goto :goto_2f

    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "l="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_d0
    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    if-nez v2, :cond_f9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    :cond_f9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50
.end method

.method public a([Lcom/estrongs/android/pop/view/a/k;I)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-lt v0, v1, :cond_b

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/a/e;->i()V

    goto :goto_2

    :cond_b
    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    if-eqz v2, :cond_25

    iget v2, v1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    iget v2, v1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    :cond_1b
    iput p2, v1, Lcom/estrongs/android/pop/view/a/k;->k:I

    :cond_1d
    iget-object v2, v1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    invoke-virtual {v2}, Lcom/estrongs/android/util/v;->b()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    :cond_25
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/estrongs/android/pop/view/a/k;->n:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public b(Lcom/estrongs/android/pop/view/a/k;)I
    .registers 7

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_9

    :cond_19
    iget v3, p1, Lcom/estrongs/android/pop/view/a/k;->r:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    move v0, v2

    goto :goto_9

    :cond_20
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Lcom/estrongs/android/pop/view/a/k;->r:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_24} :catch_2a

    if-ge v0, v1, :cond_28

    const/4 v0, 0x2

    goto :goto_9

    :cond_28
    move v0, v2

    goto :goto_9

    :catch_2a
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method public b(Landroid/os/Handler;)V
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/e;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->p:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public b(Ljava/lang/String;)[Lcom/estrongs/android/pop/view/a/k;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    if-eqz v2, :cond_6e

    :cond_a
    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/a/e;->d(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_65

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/a/e;->a(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/a/e;->j()[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-nez v2, :cond_25

    move-object v0, v1

    :goto_24
    return-object v0

    :cond_25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    :cond_28
    :goto_28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/*"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v0

    :goto_58
    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v7, v7

    if-lt v2, v7, :cond_75

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d2

    move-object v0, v1

    goto :goto_24

    :cond_65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-nez v2, :cond_28

    move-object v0, v1

    goto :goto_24

    :cond_6e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/a/e;->e()V

    goto :goto_28

    :catch_72
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :cond_75
    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_81

    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_81
    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    if-eqz v7, :cond_7e

    if-eqz v5, :cond_b2

    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_b2
    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ca

    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/estrongs/android/pop/view/a/k;->h:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    :cond_ca
    sget-object v7, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_d2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/estrongs/android/pop/view/a/k;

    move v3, v0

    :goto_d9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_e2

    move-object v0, v2

    goto/16 :goto_24

    :cond_e2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    aput-object v0, v2, v3
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ea} :catch_72

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d9
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/a/e;->a(Z)V

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_51

    if-nez v1, :cond_4b

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/a/k;->s:Z

    if-nez v1, :cond_19

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    :cond_19
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/android/pop/view/a/k;->s:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://update.estrongs.com/channel?iid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/estrongs/android/pop/view/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/v;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/v;->c()V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    :cond_4b
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v1, v1
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_51

    if-lt v0, v1, :cond_8

    goto :goto_6

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/estrongs/android/pop/view/a/k;)Z
    .registers 5

    iget-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    new-instance v0, Lcom/estrongs/android/util/v;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    new-instance v1, Lcom/estrongs/android/pop/view/a/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/a/g;-><init>(Lcom/estrongs/android/pop/view/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    iput-object v0, p1, Lcom/estrongs/android/pop/view/a/k;->l:Lcom/estrongs/android/util/v;

    iget v1, p1, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_39

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->f()V

    :goto_37
    const/4 v0, 0x1

    goto :goto_f

    :cond_39
    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    goto :goto_37
.end method

.method public d(Lcom/estrongs/android/pop/view/a/k;)V
    .registers 5

    new-instance v0, Lcom/estrongs/android/util/v;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/a/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->i:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/a/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/a/h;-><init>(Lcom/estrongs/android/pop/view/a/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    return-void
.end method

.method public d()[Lcom/estrongs/android/pop/view/a/k;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    if-eqz v2, :cond_19

    :cond_a
    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->g:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/a/e;->d(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_15

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    sget-object v2, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v2, :cond_14

    :cond_19
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    move v0, v1

    move v2, v1

    :goto_1d
    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v3, v3

    if-lt v0, v3, :cond_2a

    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v0, v0

    if-ne v2, v0, :cond_37

    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    goto :goto_14

    :cond_2a
    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/a/k;->p:Z

    if-eqz v3, :cond_34

    add-int/lit8 v2, v2, 0x1

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_37
    new-array v2, v2, [Lcom/estrongs/android/pop/view/a/k;

    move v0, v1

    :goto_3a
    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v3, v3

    if-lt v1, v3, :cond_41

    move-object v0, v2

    goto :goto_14

    :cond_41
    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/a/k;->p:Z

    if-eqz v3, :cond_51

    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public e()V
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/a/e;->e(Lcom/estrongs/android/pop/view/a/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/a/e;->a([Lcom/estrongs/android/pop/view/a/k;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/a/e;->m:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/a/e;->h()V

    :cond_13
    return-void
.end method

.method public h()V
    .registers 4

    sget-object v0, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_23

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/estrongs/android/pop/view/a/e;->n:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
