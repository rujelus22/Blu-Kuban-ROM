.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieParser;
    }
.end annotation


# static fields
.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 68
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 434
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/HttpCookie;->version:I

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, ntrim:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/net/HttpCookie;->isValidName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 451
    :cond_1a
    iput-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 452
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 453
    return-void
.end method

.method static synthetic access$002(Ljava/net/HttpCookie;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return p1
.end method

.method static synthetic access$100(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ljava/net/HttpCookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/net/HttpCookie;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method static synthetic access$502(Ljava/net/HttpCookie;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ljava/net/HttpCookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return p1
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "builder"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 721
    if-eqz p3, :cond_19

    if-eqz p1, :cond_19

    .line 722
    const-string v0, ";$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_19
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "domainPattern"
    .parameter "host"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v3

    .line 125
    :cond_7
    :goto_7
    return v2

    .line 94
    :cond_8
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, a:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, b:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 104
    :cond_26
    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_33

    .line 105
    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7

    .line 113
    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_53

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 125
    :cond_53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_79

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_71
    const-string v4, ".local"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_79
    move v2, v3

    goto :goto_7
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .registers 5
    .parameter "s"
    .parameter "firstCharacter"

    .prologue
    .line 184
    const/16 v1, 0x2e

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 185
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isValidName(Ljava/lang/String;)Z
    .registers 7
    .parameter "n"

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const/4 v1, 0x1

    .line 461
    .local v1, isValid:Z
    :goto_1d
    if-eqz v1, :cond_43

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 466
    .local v2, nameChar:C
    if-ltz v2, :cond_42

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_42

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_42

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_42

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_46

    const/16 v3, 0x20

    if-eq v2, v3, :cond_46

    .line 471
    :cond_42
    const/4 v1, 0x0

    .line 476
    .end local v0           #i:I
    .end local v2           #nameChar:C
    :cond_43
    return v1

    .line 459
    .end local v1           #isValid:Z
    :cond_44
    const/4 v1, 0x0

    goto :goto_1d

    .line 462
    .restart local v0       #i:I
    .restart local v1       #isValid:Z
    .restart local v2       #nameChar:C
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private static matchablePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 165
    if-nez p0, :cond_5

    .line 166
    const-string p0, "/"

    .line 170
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 167
    .restart local p0
    :cond_5
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/net/HttpCookie$CookieParser;

    invoke-direct {v0, p0}, Ljava/net/HttpCookie$CookieParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie$CookieParser;->parse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 5
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, uriPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, cookiePath:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 4
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method static secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 4
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private setExpires(Ljava/util/Date;)V
    .registers 6
    .parameter "expires"

    .prologue
    .line 614
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 615
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 662
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 663
    :catch_5
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    if-ne p1, p0, :cond_5

    .line 683
    :cond_4
    :goto_4
    return v1

    .line 677
    :cond_5
    instance-of v3, p1, Ljava/net/HttpCookie;

    if-eqz v3, :cond_37

    move-object v0, p1

    .line 678
    check-cast v0, Ljava/net/HttpCookie;

    .line 679
    .local v0, that:Ljava/net/HttpCookie;
    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_32

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :goto_26
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_30
    move v1, v2

    goto :goto_4

    :cond_32
    iget-object v3, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v3, :cond_30

    goto :goto_26

    .end local v0           #that:Ljava/net/HttpCookie;
    :cond_37
    move v1, v2

    .line 683
    goto :goto_4
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, Ljava/net/HttpCookie;->discard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .registers 3

    .prologue
    .line 511
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .registers 2

    .prologue
    .line 543
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 557
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .registers 6

    .prologue
    .line 566
    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 567
    const/4 v0, 0x0

    .line 574
    :cond_9
    :goto_9
    return v0

    .line 570
    :cond_a
    const/4 v0, 0x0

    .line 571
    .local v0, expired:Z
    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_9

    .line 572
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 694
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_26
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 581
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2
    .parameter "commentURL"

    .prologue
    .line 588
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setDiscard(Z)V
    .registers 2
    .parameter "discard"

    .prologue
    .line 595
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    .line 596
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 603
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 604
    return-void

    .line 603
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public setMaxAge(J)V
    .registers 3
    .parameter "deltaSeconds"

    .prologue
    .line 610
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 611
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 622
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .registers 2
    .parameter "portList"

    .prologue
    .line 629
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .parameter "secure"

    .prologue
    .line 636
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 637
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 645
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setVersion(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 654
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 657
    :cond_b
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 658
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 704
    iget v1, p0, Ljava/net/HttpCookie;->version:I

    if-nez v1, :cond_20

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    :goto_1f
    return-object v1

    .line 708
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "Path"

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v1, "Domain"

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v1, "Port"

    iget-object v2, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f
.end method
