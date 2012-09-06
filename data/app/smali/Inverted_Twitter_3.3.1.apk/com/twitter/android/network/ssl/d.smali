.class public final Lcom/twitter/android/network/ssl/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/twitter/android/network/ssl/d;


# instance fields
.field final a:Ljava/security/KeyStore;

.field private final c:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/twitter/android/network/ssl/d;->b(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/ssl/d;->a(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/network/ssl/d;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/network/ssl/d;->a:Ljava/security/KeyStore;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/network/ssl/d;
    .registers 3

    const-class v1, Lcom/twitter/android/network/ssl/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/network/ssl/d;->b:Lcom/twitter/android/network/ssl/d;

    if-nez v0, :cond_e

    new-instance v0, Lcom/twitter/android/network/ssl/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/network/ssl/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/network/ssl/d;->b:Lcom/twitter/android/network/ssl/d;

    :cond_e
    sget-object v0, Lcom/twitter/android/network/ssl/d;->b:Lcom/twitter/android/network/ssl/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .registers 5

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_9

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2c
    return-object v1
.end method

.method private static b(Landroid/content/Context;)Ljava/security/KeyStore;
    .registers 5

    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/android/ea;->cacerts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const v3, 0x23000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_18} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_18} :catch_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_46

    :try_start_18
    const-string v2, "changeit"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_25
    move-exception v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_21 .. :try_end_2a} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_2a} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_21 .. :try_end_2a} :catch_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_2a} :catch_3f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_46

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_31
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/security/cert/X509Certificate;)Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/network/ssl/d;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final b(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/network/ssl/d;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_11

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v0, v1

    goto :goto_10

    :cond_21
    :try_start_21
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_28
    .catch Ljava/security/GeneralSecurityException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_10

    :catch_29
    move-exception v0

    move-object v0, v1

    goto :goto_10
.end method
