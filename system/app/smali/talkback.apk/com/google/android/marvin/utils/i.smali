.class public Lcom/google/android/marvin/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/utils/n;


# static fields
.field private static a:Lcom/google/android/marvin/utils/i;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashSet;

.field private final e:Lcom/google/android/marvin/utils/BasePackageMonitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/i;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/i;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/i;->d:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/marvin/utils/b;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/b;-><init>(Lcom/google/android/marvin/utils/i;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/i;->e:Lcom/google/android/marvin/utils/BasePackageMonitor;

    return-void
.end method

.method public static a()Lcom/google/android/marvin/utils/i;
    .registers 1

    sget-object v0, Lcom/google/android/marvin/utils/i;->a:Lcom/google/android/marvin/utils/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/marvin/utils/i;

    invoke-direct {v0}, Lcom/google/android/marvin/utils/i;-><init>()V

    sput-object v0, Lcom/google/android/marvin/utils/i;->a:Lcom/google/android/marvin/utils/i;

    :cond_b
    sget-object v0, Lcom/google/android/marvin/utils/i;->a:Lcom/google/android/marvin/utils/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/marvin/utils/i;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static synthetic b(Lcom/google/android/marvin/utils/i;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;
    .registers 14

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_10

    const-string v0, "Class name was null. Failed to load class: %s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_40

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_29

    const-string v0, "Missing package name. Failed to load class: %s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_f

    :cond_29
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2e
    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_46

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v1, v3

    goto :goto_f

    :cond_40
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2e

    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_4d} :catch_4f

    move-result-object v1

    goto :goto_f

    :catch_4f
    move-exception v1

    iget-object v1, p0, Lcom/google/android/marvin/utils/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/marvin/utils/i;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v0, "Package not installed. Failed to load class: %s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_f

    :cond_6d
    :try_start_6d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/marvin/utils/i;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_83} :catch_a0

    if-nez v1, :cond_f

    :goto_85
    if-nez v0, :cond_91

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/marvin/utils/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "Failed to load class: %s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    goto/16 :goto_f

    :catch_a0
    move-exception v1

    const-class v1, Lcom/google/android/marvin/utils/i;

    const/4 v5, 0x6

    const-string v6, "Error encountered. Failed to load outside class: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v1, v5, v6, v7}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_85
.end method

.method public final a(Landroid/content/Context;Z)V
    .registers 5

    if-eqz p2, :cond_27

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->e:Lcom/google/android/marvin/utils/BasePackageMonitor;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/utils/BasePackageMonitor;->a(Landroid/content/Context;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/marvin/utils/i;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_27
    monitor-enter p0

    :try_start_28
    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_34

    iget-object v0, p0, Lcom/google/android/marvin/utils/i;->e:Lcom/google/android/marvin/utils/BasePackageMonitor;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/BasePackageMonitor;->a()V

    goto :goto_1a

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method
