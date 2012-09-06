.class public final Lcom/twitter/android/network/o;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/twitter/android/network/o;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/16 v8, 0x29

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x3b

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_16} :catch_e2

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_e6

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/twitter/android/network/o;->f:Ljava/lang/String;

    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TwitterAndroid"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_ed

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_ea

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_51

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_ea

    :cond_51
    move v0, v1

    :goto_52
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_f5

    :goto_9a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/o;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "client_uuid"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "client_uuid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c7
    iput-object v0, p0, Lcom/twitter/android/network/o;->e:Ljava/lang/String;

    sget v0, Lcom/twitter/android/eb;->base_host:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    sget v0, Lcom/twitter/android/eb;->base_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/o;->b:Ljava/lang/String;

    sget v0, Lcom/twitter/android/eb;->base_url_mobile:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/o;->c:Ljava/lang/String;

    return-void

    :catch_e2
    move-exception v0

    move-object v0, v3

    goto/16 :goto_17

    :cond_e6
    iput-object v3, p0, Lcom/twitter/android/network/o;->f:Ljava/lang/String;

    goto/16 :goto_1d

    :cond_ea
    move v0, v2

    goto/16 :goto_52

    :cond_ed
    const-string v0, "/3.0.0 (^_^)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_52

    :cond_f5
    move v1, v2

    goto :goto_9a
.end method

.method public static a(II)I
    .registers 3

    rem-int v0, p0, p1

    if-lez v0, :cond_9

    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    div-int v0, p0, p1

    goto :goto_8
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I
    .registers 9

    if-eqz p2, :cond_26

    array-length v0, p2

    if-ge p3, v0, :cond_26

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, 0x64

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, p3

    :goto_10
    if-ge v0, v1, :cond_23

    aget-wide v2, p2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_20

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    sub-int v0, v1, p3

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 8

    if-eqz p2, :cond_2c

    array-length v0, p2

    if-ge p3, v0, :cond_2c

    if-lez p4, :cond_2c

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, p3

    :goto_12
    if-ge v0, v1, :cond_29

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_26

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    sub-int v0, v1, p3

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/network/o;
    .registers 4

    const-class v1, Lcom/twitter/android/network/o;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/network/o;->g:Lcom/twitter/android/network/o;

    if-nez v0, :cond_12

    new-instance v0, Lcom/twitter/android/network/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/network/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/network/o;->g:Lcom/twitter/android/network/o;

    :cond_12
    sget-object v0, Lcom/twitter/android/network/o;->g:Lcom/twitter/android/network/o;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    array-length v2, p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_18

    aget-object v3, p1, v0

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_19
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V
    .registers 5

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/network/o;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/network/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/twitter/android/network/c;->d()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/twitter/android/network/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Client-UUID"

    iget-object v2, p0, Lcom/twitter/android/network/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Twitter-Client"

    const-string v2, "TwitterAndroid"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Twitter-Client-Version"

    iget-object v2, p0, Lcom/twitter/android/network/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/twitter/android/network/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/twitter/android/network/c;->d()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    const-string v1, "X-Twitter-Polling"

    const-string v2, "True"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    return-void
.end method
