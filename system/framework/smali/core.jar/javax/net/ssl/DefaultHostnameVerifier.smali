.class Ljavax/net/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 57
    sget-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 8
    .parameter "cn"

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    .local v0, cnLen:I
    const/4 v4, 0x7

    if-lt v0, v4, :cond_25

    const/16 v4, 0x9

    if-gt v0, v4, :cond_25

    .line 124
    add-int/lit8 v4, v0, -0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_25

    .line 126
    const/4 v4, 0x2

    add-int/lit8 v5, v0, -0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, s:Ljava/lang/String;
    sget-object v4, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 129
    .local v2, x:I
    if-gez v2, :cond_26

    .line 132
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #x:I
    :cond_25
    :goto_25
    return v3

    .line 129
    .restart local v1       #s:Ljava/lang/String;
    .restart local v2       #x:I
    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method private getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 9
    .parameter "cert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v4

    .line 187
    .local v4, subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v4, :cond_16

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 199
    .end local v4           #subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_a
    :goto_a
    return-object v3

    .line 182
    :catch_b
    move-exception v0

    .line 183
    .local v0, cpe:Ljava/security/cert/CertificateParsingException;
    const-string v6, "Error parsing certificate"

    invoke-static {v6, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_a

    .line 191
    .end local v0           #cpe:Ljava/security/cert/CertificateParsingException;
    .restart local v4       #subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v3, subjectAltList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 193
    .local v2, pair:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 195
    .local v5, type:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    .line 196
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private getFirstCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 9
    .parameter "cert"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, subjectPrincipal:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_26

    aget-object v4, v0, v1

    .line 160
    .local v4, token:Ljava/lang/String;
    const-string v6, "CN="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 161
    .local v5, x:I
    if-ltz v5, :cond_23

    .line 162
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #x:I
    :goto_22
    return-object v6

    .line 159
    .restart local v4       #token:Ljava/lang/String;
    .restart local v5       #x:I
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 165
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #x:I
    :cond_26
    const/4 v6, 0x0

    goto :goto_22
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "hostName"
    .parameter "cn"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-nez p2, :cond_5

    .line 116
    :goto_4
    return v2

    .line 103
    :cond_5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 105
    const-string v3, "*."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 111
    .local v0, matchLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3, p2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v3, 0x2e

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3c

    invoke-direct {p0, p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {p1}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    :goto_3a
    move v2, v1

    goto :goto_4

    :cond_3c
    move v1, v2

    goto :goto_3a

    .line 116
    .end local v0           #matchLength:I
    :cond_3e
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 14
    .parameter "host"
    .parameter "session"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 63
    :try_start_2
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_5} :catch_1f

    move-result-object v0

    .line 68
    .local v0, certs:[Ljava/security/cert/Certificate;
    aget-object v6, v0, v8

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 72
    .local v6, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, hostName:Ljava/lang/String;
    invoke-direct {p0, v6}, Ljavax/net/ssl/DefaultHostnameVerifier;->getFirstCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, firstCn:Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Ljavax/net/ssl/DefaultHostnameVerifier;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 87
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v3           #firstCn:Ljava/lang/String;
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #x509:Ljava/security/cert/X509Certificate;
    :goto_1e
    return v7

    .line 64
    :catch_1f
    move-exception v2

    .local v2, e:Ljavax/net/ssl/SSLException;
    move v7, v8

    .line 65
    goto :goto_1e

    .line 81
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #certs:[Ljava/security/cert/Certificate;
    .restart local v3       #firstCn:Ljava/lang/String;
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v6       #x509:Ljava/security/cert/X509Certificate;
    :cond_22
    invoke-direct {p0, v6}, Ljavax/net/ssl/DefaultHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, cn:Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    goto :goto_1e

    .end local v1           #cn:Ljava/lang/String;
    :cond_3d
    move v7, v8

    .line 87
    goto :goto_1e
.end method
