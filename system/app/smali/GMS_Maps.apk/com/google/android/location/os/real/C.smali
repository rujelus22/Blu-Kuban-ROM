.class public Lcom/google/android/location/os/real/C;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static f:Ljava/io/File;


# instance fields
.field private e:Z

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/location/os/real/u;

.field private final i:Li/C;

.field private final j:Lcom/google/android/location/os/real/E;

.field private final k:Lcom/google/android/location/os/real/E;

.field private final l:Lcom/google/android/location/os/real/E;

.field private final m:Lcom/google/android/location/os/real/E;

.field private final n:Lj/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/os/real/C;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/google/android/location/os/real/C;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/os/real/C;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li/C;Lj/a;Lcom/google/android/location/os/real/u;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/os/real/C;->e:Z

    new-instance v0, Lcom/google/android/location/os/real/E;

    sget-object v1, Lcom/google/android/location/os/real/F;->a:Lcom/google/android/location/os/real/F;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/E;-><init>(Lcom/google/android/location/os/real/C;Lcom/google/android/location/os/real/F;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/C;->j:Lcom/google/android/location/os/real/E;

    new-instance v0, Lcom/google/android/location/os/real/E;

    sget-object v1, Lcom/google/android/location/os/real/F;->c:Lcom/google/android/location/os/real/F;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/E;-><init>(Lcom/google/android/location/os/real/C;Lcom/google/android/location/os/real/F;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/C;->k:Lcom/google/android/location/os/real/E;

    new-instance v0, Lcom/google/android/location/os/real/E;

    sget-object v1, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/E;-><init>(Lcom/google/android/location/os/real/C;Lcom/google/android/location/os/real/F;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/C;->l:Lcom/google/android/location/os/real/E;

    new-instance v0, Lcom/google/android/location/os/real/E;

    sget-object v1, Lcom/google/android/location/os/real/F;->d:Lcom/google/android/location/os/real/F;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/E;-><init>(Lcom/google/android/location/os/real/C;Lcom/google/android/location/os/real/F;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/C;->m:Lcom/google/android/location/os/real/E;

    iput-object p1, p0, Lcom/google/android/location/os/real/C;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/C;->i:Li/C;

    iput-object p4, p0, Lcom/google/android/location/os/real/C;->h:Lcom/google/android/location/os/real/u;

    iput-object p3, p0, Lcom/google/android/location/os/real/C;->n:Lj/a;

    invoke-static {p1}, Lcom/google/android/location/os/real/C;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Locale;LW/a;)LW/a;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/location/os/real/C;->b(Ljava/util/Locale;LW/a;)LW/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/C;)Li/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->i:Li/C;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 4

    const-class v1, Lcom/google/android/location/os/real/C;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_f} :catch_11

    :goto_f
    monitor-exit v1

    return-void

    :catch_11
    move-exception v0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/google/android/location/os/real/C;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    invoke-static {v0, p0}, Lcom/google/android/location/internal/h;->a(Lcom/google/android/location/internal/i;Landroid/content/Context;)Lcom/google/android/location/internal/h;

    move-result-object v0

    iget v0, v0, Lcom/google/android/location/internal/h;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/C;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/location/os/real/C;->b(Landroid/content/Context;)Lbv/k;

    move-result-object v0

    invoke-static {p0, v0}, Lh/a;->a(Landroid/content/Context;Lbv/k;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/C;->c:Ljava/lang/String;

    :goto_33
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_40

    monitor-exit v1

    return-void

    :cond_3b
    :try_start_3b
    const-string v0, "android"

    sput-object v0, Lcom/google/android/location/os/real/C;->c:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_40

    goto :goto_33

    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/C;LW/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/C;->e(LW/a;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/google/android/location/os/real/C;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    move-result v0

    if-nez v0, :cond_15

    :goto_13
    monitor-exit v1

    return-void

    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    sput-object p0, Lcom/google/android/location/os/real/C;->d:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_38
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_35} :catch_3b

    goto :goto_13

    :catch_36
    move-exception v0

    goto :goto_13

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_3b
    move-exception v0

    goto :goto_13
.end method

.method private static b(Ljava/util/Locale;LW/a;)LW/a;
    .registers 5

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->P:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/location/os/real/C;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/location/os/real/C;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    :cond_23
    invoke-static {}, Lcom/google/android/location/os/real/C;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILjava/lang/String;)V

    :cond_31
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, LW/a;->b(ILW/a;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lbv/k;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, LQ/b;

    invoke-direct {v0, p0}, LQ/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LP/b;->a(LP/b;)V

    const-string v0, "https://www.google.com/loc/m/api"

    sget-boolean v2, Lcom/google/android/location/os/real/C;->a:Z

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "url:google_location_server"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_19
    if-eqz v1, :cond_3d

    const-string v2, " "

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "rewrite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v0, 0x2

    aget-object v0, v1, v0

    :cond_3d
    new-instance v1, Lbv/k;

    invoke-direct {v1}, Lbv/k;-><init>()V

    invoke-virtual {v1, v0}, Lbv/k;->a(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {v1, v0}, Lbv/k;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/location/os/real/C;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbv/k;->c(Ljava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {v1, v0}, Lbv/k;->d(Ljava/lang/String;)V

    const-string v0, "gmm"

    invoke-virtual {v1, v0}, Lbv/k;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method static declared-synchronized b()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/location/os/real/C;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/google/android/location/os/real/C;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    sget-object v0, Lcom/google/android/location/os/real/C;->d:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_30

    :goto_a
    monitor-exit v1

    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/android/location/os/real/C;->f:Ljava/io/File;

    const-string v4, "nlp_GlsPlatformKey"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    sput-object v3, Lcom/google/android/location/os/real/C;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/location/os/real/C;->d:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_30
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_2f} :catch_35
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2f} :catch_33

    goto :goto_a

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_33
    move-exception v2

    goto :goto_a

    :catch_35
    move-exception v2

    goto :goto_a
.end method

.method static synthetic b(Lcom/google/android/location/os/real/C;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/location/os/real/C;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/location/os/real/C;)Lj/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->n:Lj/a;

    return-object v0
.end method

.method static synthetic c(LW/a;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/location/os/real/C;->d(LW/a;)V

    return-void
.end method

.method private c()Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/android/location/os/real/C;->a:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/location/os/real/C;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_provider_debug"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static synthetic d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->h:Lcom/google/android/location/os/real/u;

    return-object v0
.end method

.method private static d(LW/a;)V
    .registers 3

    const/4 v1, 0x3

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LW/a;->c(I)I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v1}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->a(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private e(LW/a;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/location/os/real/C;->e:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, LW/a;->a(IZ)V

    iput-boolean v0, p0, Lcom/google/android/location/os/real/C;->e:Z

    :cond_d
    sget-boolean v2, Lcom/google/android/location/os/real/C;->a:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/location/os/real/C;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_location_provider_debug"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    if-eqz v1, :cond_3d

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, LW/a;->a(IZ)V

    iget-object v1, p0, Lcom/google/android/location/os/real/C;->g:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    :goto_30
    if-ge v0, v2, :cond_3d

    aget-object v3, v1, v0

    const/4 v4, 0x5

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, LW/a;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3d
    return-void
.end method


# virtual methods
.method public a(LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->k:Lcom/google/android/location/os/real/E;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/os/real/E;->a(LW/a;LW/a;)V

    return-void
.end method

.method public a(LW/a;LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->j:Lcom/google/android/location/os/real/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/E;->a(LW/a;LW/a;)V

    return-void
.end method

.method public b(LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->m:Lcom/google/android/location/os/real/E;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/os/real/E;->a(LW/a;LW/a;)V

    return-void
.end method

.method public b(LW/a;LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/C;->l:Lcom/google/android/location/os/real/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/E;->a(LW/a;LW/a;)V

    return-void
.end method
