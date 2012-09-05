.class public Lcom/cisco/anyconnect/common/X509NameParser;
.super Ljava/lang/Object;
.source "X509NameParser.java"


# static fields
.field public static final DN_KEYS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cisco/anyconnect/common/X509CertificateDNMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrincipal:Ljava/security/Principal;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const v4, 0x7f050090

    const v3, 0x7f050097

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    .line 55
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "CN"

    const v2, 0x7f05008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "S"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "ST"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "C"

    const v2, 0x7f050091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "L"

    const v2, 0x7f050092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "STREET"

    const v2, 0x7f050093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "E"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "1.2.840.113549.1.9.1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "EMAIL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "EA"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "MAIL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "EMAILADDRESS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "O"

    const v2, 0x7f050098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "OU"

    const v2, 0x7f050099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "DC"

    const v2, 0x7f05009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "UID"

    const v2, 0x7f050094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "POSTALADDRESS"

    const v2, 0x7f050096

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    const-string v1, "POSTALCODE"

    const v2, 0x7f050095

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/security/Principal;)V
    .registers 2
    .parameter "principal"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPrincipal:Ljava/security/Principal;

    .line 78
    invoke-direct {p0}, Lcom/cisco/anyconnect/common/X509NameParser;->parsePrincipal()V

    .line 79
    return-void
.end method

.method public static decodeHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "hexString"

    .prologue
    const/4 v6, 0x0

    .line 125
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_a

    .line 168
    :cond_9
    :goto_9
    return-object v6

    .line 132
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_9

    .line 139
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 140
    .local v3, maxChars:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 142
    .local v1, finalString:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 144
    .local v4, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v3, :cond_3e

    .line 147
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, section:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x2

    .line 151
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v0, v7

    .line 154
    .local v0, c:C
    const/16 v7, 0x20

    if-le v0, v7, :cond_3b

    const/16 v7, 0x80

    if-ge v0, v7, :cond_3b

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 161
    .end local v0           #c:C
    .end local v5           #section:Ljava/lang/String;
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_41} :catch_43

    move-result-object v6

    goto :goto_9

    .line 163
    .end local v1           #finalString:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #maxChars:I
    .end local v4           #offset:I
    :catch_43
    move-exception v7

    goto :goto_9
.end method

.method private parsePrincipal()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 84
    iget-object v7, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPrincipal:Ljava/security/Principal;

    if-nez v7, :cond_6

    .line 120
    :cond_5
    return-void

    .line 89
    :cond_6
    iget-object v7, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPrincipal:Ljava/security/Principal;

    invoke-interface {v7}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, dn:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPairs:Ljava/util/ArrayList;

    .line 92
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/common/X509NameParser;->splitOnCommas(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 94
    .local v6, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, val:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, ops:[Ljava/lang/String;
    const/4 v7, 0x2

    array-length v8, v3

    if-ne v7, v8, :cond_1b

    .line 103
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, key:Ljava/lang/String;
    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, value:Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 109
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cisco/anyconnect/common/X509NameParser;->decodeHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    if-eqz v5, :cond_1b

    .line 118
    :cond_54
    iget-object v7, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPairs:Ljava/util/ArrayList;

    new-instance v8, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;

    invoke-direct {v8, v2, v5}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private splitOnCommas(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "principalString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 211
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v2, st:Ljava/util/StringTokenizer;
    :cond_c
    :goto_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 214
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, curr:Ljava/lang/String;
    :goto_16
    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 219
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 221
    const/4 v0, 0x0

    .line 230
    :cond_25
    if-eqz v0, :cond_c

    .line 236
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 226
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 239
    .end local v0           #curr:Ljava/lang/String;
    :cond_47
    return-object v1
.end method


# virtual methods
.method public getShortName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 250
    const/4 v4, 0x0

    .line 253
    .local v4, shortName:Ljava/lang/String;
    iget-object v5, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPairs:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 255
    const/4 v5, 0x0

    .line 287
    :goto_6
    return-object v5

    .line 258
    :cond_7
    const-string v3, ""

    .line 259
    .local v3, lastFound:Ljava/lang/String;
    iget-object v5, p0, Lcom/cisco/anyconnect/common/X509NameParser;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;

    .line 261
    .local v1, item:Lcom/cisco/anyconnect/common/X509CertificateDNMapping;
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, key:Ljava/lang/String;
    const-string v5, "CN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 266
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getValue()Ljava/lang/String;

    move-result-object v4

    .end local v1           #item:Lcom/cisco/anyconnect/common/X509CertificateDNMapping;
    .end local v2           #key:Ljava/lang/String;
    :cond_2b
    move-object v5, v4

    .line 287
    goto :goto_6

    .line 271
    .restart local v1       #item:Lcom/cisco/anyconnect/common/X509CertificateDNMapping;
    .restart local v2       #key:Ljava/lang/String;
    :cond_2d
    const-string v5, "OU"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    const-string v5, "OU"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 273
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v3, "OU"

    .line 275
    goto :goto_f

    .line 279
    :cond_44
    const-string v5, "O"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    .line 281
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 282
    const-string v3, "O"

    .line 283
    goto :goto_f
.end method
