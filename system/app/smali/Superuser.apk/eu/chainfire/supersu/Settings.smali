.class public Leu/chainfire/supersu/Settings;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Leu/chainfire/supersu/Settings$Default;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    new-instance v0, Leu/chainfire/supersu/Settings$Default;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$Default;->d()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    return-void

    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "config_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_78

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_log"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v0, "default"

    :cond_78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iput-boolean v5, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    goto :goto_45
.end method

.method static synthetic a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supersu.salt."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".peppa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_48

    :try_start_22
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_62

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_52

    :goto_47
    return-object v0

    :cond_48
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_52
    :try_start_52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_62

    move-result-object v0

    goto :goto_3f

    :catch_62
    move-exception v0

    const-string v0, ""

    goto :goto_47
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "eu.chainfire.supersu.pro"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method static synthetic c(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;
    .registers 5

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Leu/chainfire/supersu/Settings$App;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$App;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object p1, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->i:I

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    return-object v0

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    iget-object v2, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_21
.end method

.method public final a()Leu/chainfire/supersu/Settings$Default;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 15

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v0, "rm /data/data/eu.chainfire.supersu/files/supersu.cfg"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)Ljava/util/List;

    :try_start_a
    const-string v0, "supersu.cfg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v5, "\n"

    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "default"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "notify"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "log"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "access"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_92
    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9b} :catch_1ad

    :goto_9b
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chown 0.0 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v3

    const-string v1, "chown 0:0 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v9

    const-string v1, "chown root.root /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v10

    const-string v1, "chown root:root /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "chmod 600 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v2, v0, v1

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a([Ljava/lang/String;)Ljava/util/List;

    return-void

    :cond_b7
    :try_start_b7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-static {v0}, Leu/chainfire/supersu/Settings$App;->b(Leu/chainfire/supersu/Settings$App;)Z

    move-result v1

    if-nez v1, :cond_92

    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget v1, v0, Leu/chainfire/supersu/Settings$App;->g:I

    if-eq v1, v12, :cond_f8

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "notify"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_f8
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->h:I

    if-eq v1, v12, :cond_119

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "log"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_119
    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "access"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    if-eqz v1, :cond_15d

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15d

    const-string v1, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forceshell"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_15d
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    if-ltz v1, :cond_17e

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forceuser"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_17e
    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a8

    const-string v1, ""

    move v2, v3

    :goto_189
    iget-object v7, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_1b3

    const-string v0, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forcegroups"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v1, v2, v7

    const/4 v1, 0x2

    aput-object v5, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_1a8
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_92

    :catch_1ad
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9b

    :cond_1b3
    :try_start_1b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1eb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1ea} :catch_1ad

    move-result-object v1

    :cond_1eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_189
.end method

.method public final b()[Leu/chainfire/supersu/Settings$App;
    .registers 4

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Settings$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings$1;-><init>(Leu/chainfire/supersu/Settings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Leu/chainfire/supersu/Settings$App;

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_33

    return-object v2

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->a()V

    goto :goto_6

    :cond_33
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20
.end method
