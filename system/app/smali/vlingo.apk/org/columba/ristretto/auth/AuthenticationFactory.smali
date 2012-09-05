.class public Lorg/columba/ristretto/auth/AuthenticationFactory;
.super Ljava/lang/Object;
.source "AuthenticationFactory.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final authTokenizerPattern:Ljava/util/regex/Pattern;

.field static class$org$columba$ristretto$auth$mechanism$CramMD5Mechanism:Ljava/lang/Class;

.field static class$org$columba$ristretto$auth$mechanism$DigestMD5Mechanism:Ljava/lang/Class;

.field static class$org$columba$ristretto$auth$mechanism$LoginMechanism:Ljava/lang/Class;

.field static class$org$columba$ristretto$auth$mechanism$PlainMechanism:Ljava/lang/Class;

.field private static myInstance:Lorg/columba/ristretto/auth/AuthenticationFactory;


# instance fields
.field private authTable:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-string v0, "org.columba.ristretto.auth"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->LOG:Ljava/util/logging/Logger;

    .line 72
    const-string v0, "\\b([^\\s]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTokenizerPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    .line 81
    const-string v1, "PLAIN"

    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$PlainMechanism:Ljava/lang/Class;

    if-nez v0, :cond_55

    const-string v0, "org.columba.ristretto.auth.mechanism.PlainMechanism"

    invoke-static {v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$PlainMechanism:Ljava/lang/Class;

    :goto_18
    invoke-virtual {p0, v1, v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->addAuthentication(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-string v1, "LOGIN"

    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$LoginMechanism:Ljava/lang/Class;

    if-nez v0, :cond_58

    const-string v0, "org.columba.ristretto.auth.mechanism.LoginMechanism"

    invoke-static {v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$LoginMechanism:Ljava/lang/Class;

    :goto_29
    invoke-virtual {p0, v1, v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->addAuthentication(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    invoke-static {}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->available()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 85
    const-string v1, "DIGEST-MD5"

    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$DigestMD5Mechanism:Ljava/lang/Class;

    if-nez v0, :cond_5b

    const-string v0, "org.columba.ristretto.auth.mechanism.DigestMD5Mechanism"

    invoke-static {v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$DigestMD5Mechanism:Ljava/lang/Class;

    :goto_40
    invoke-virtual {p0, v1, v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->addAuthentication(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-string v1, "CRAM-MD5"

    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$CramMD5Mechanism:Ljava/lang/Class;

    if-nez v0, :cond_5e

    const-string v0, "org.columba.ristretto.auth.mechanism.CramMD5Mechanism"

    invoke-static {v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$CramMD5Mechanism:Ljava/lang/Class;

    :goto_51
    invoke-virtual {p0, v1, v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;->addAuthentication(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    :cond_54
    return-void

    .line 81
    :cond_55
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$PlainMechanism:Ljava/lang/Class;

    goto :goto_18

    .line 82
    :cond_58
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$LoginMechanism:Ljava/lang/Class;

    goto :goto_29

    .line 85
    :cond_5b
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$DigestMD5Mechanism:Ljava/lang/Class;

    goto :goto_40

    .line 86
    :cond_5e
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->class$org$columba$ristretto$auth$mechanism$CramMD5Mechanism:Ljava/lang/Class;

    goto :goto_51
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getInstance()Lorg/columba/ristretto/auth/AuthenticationFactory;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->myInstance:Lorg/columba/ristretto/auth/AuthenticationFactory;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lorg/columba/ristretto/auth/AuthenticationFactory;

    invoke-direct {v0}, Lorg/columba/ristretto/auth/AuthenticationFactory;-><init>()V

    sput-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->myInstance:Lorg/columba/ristretto/auth/AuthenticationFactory;

    .line 100
    :cond_b
    sget-object v0, Lorg/columba/ristretto/auth/AuthenticationFactory;->myInstance:Lorg/columba/ristretto/auth/AuthenticationFactory;

    return-object v0
.end method


# virtual methods
.method public addAuthentication(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "name"
    .parameter "auth"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public getAuthentication(Ljava/lang/String;)Lorg/columba/ristretto/auth/AuthenticationMechanism;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v2, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;

    invoke-direct {v2, p1}, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_e
    :try_start_e
    iget-object v2, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/auth/AuthenticationMechanism;
    :try_end_1c
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1c} :catch_24

    .line 134
    .local v0, auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    return-object v0

    .line 128
    .end local v0           #auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    :catch_1d
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v2, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 130
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_24
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSecurestMethod(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "authCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 211
    sget-object v1, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTokenizerPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 214
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 218
    :cond_a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 219
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/auth/AuthenticationFactory;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 224
    :cond_1f
    new-instance v1, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;

    invoke-direct {v1, p1}, Lorg/columba/ristretto/auth/NoSuchAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedMechanisms()Ljava/util/List;
    .registers 5

    .prologue
    .line 156
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v2, list:Ljava/util/List;
    iget-object v3, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 158
    .local v1, keys:Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 160
    .local v0, it:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 164
    :cond_1d
    return-object v2
.end method

.method public getSupportedMechanisms(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "authCapa"

    .prologue
    const/4 v3, 0x1

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 177
    .local v0, list:Ljava/util/List;
    sget-object v2, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTokenizerPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 180
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 184
    :cond_f
    :goto_f
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 185
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/columba/ristretto/auth/AuthenticationFactory;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 186
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 190
    :cond_27
    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .registers 3
    .parameter "mechanism"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/columba/ristretto/auth/AuthenticationFactory;->authTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
