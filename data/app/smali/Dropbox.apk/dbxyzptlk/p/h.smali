.class public final Ldbxyzptlk/p/h;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static q:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/android/util/aJ;->B:Ljava/lang/Object;

    sput-object v0, Ldbxyzptlk/p/h;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ldbxyzptlk/p/h;->c:Ljava/lang/String;

    .line 36
    const-string v0, "android"

    iput-object v0, p0, Ldbxyzptlk/p/h;->f:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/p/h;->p:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ldbxyzptlk/h/g;)Ldbxyzptlk/p/h;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v1, Ldbxyzptlk/p/h;

    invoke-direct {v1}, Ldbxyzptlk/p/h;-><init>()V

    .line 93
    iget-object v0, p1, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->a:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->b:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->e:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->h:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->i:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Ldbxyzptlk/h/g;->g:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->d:Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/dropbox/android/util/V;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/p/h;->g:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/p/h;->o:Ljava/lang/String;

    .line 101
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/p/h;->l:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3f

    .line 105
    iput-object v0, v1, Ldbxyzptlk/p/h;->m:Ljava/lang/String;

    .line 107
    :cond_3f
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 108
    if-eqz v0, :cond_5f

    .line 109
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_5f

    .line 111
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_5f

    .line 114
    const-string v2, "\\W"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/p/h;->n:Ljava/lang/String;

    .line 119
    :cond_5f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/p/h;->k:Ljava/lang/String;

    .line 120
    iget-object v0, v1, Ldbxyzptlk/p/h;->p:Ljava/util/Map;

    const-string v2, "opengl_version"

    invoke-static {}, Lcom/dropbox/android/util/aW;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_84

    .line 123
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Ldbxyzptlk/p/h;->a(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/p/h;->j:Ljava/lang/String;

    .line 126
    :cond_84
    return-object v1
.end method

.method private static a(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v2, v1, :cond_20

    aget-object v0, v0, v2

    .line 85
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/p/h;->a([B)Ljava/lang/String;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 88
    :goto_1e
    return-object v0

    .line 87
    :catch_1f
    move-exception v0

    .line 88
    :cond_20
    const-string v0, ""

    goto :goto_1e
.end method

.method private static a([B)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 68
    :try_start_0
    sget-object v0, Ldbxyzptlk/p/h;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/p/a;->a([B)Ljava/lang/String;
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 72
    :goto_12
    return-object v0

    .line 70
    :catch_13
    move-exception v0

    .line 72
    const-string v0, ""

    goto :goto_12
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldbxyzptlk/p/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/p/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/p/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/p/h;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
