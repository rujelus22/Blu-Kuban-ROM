.class public abstract Lorg/apache/commons/httpclient/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# instance fields
.field private challenge:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    .line 63
    if-nez p1, :cond_10

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_10
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 73
    instance-of v0, p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;

    .end local p1
    iget-object v1, p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    :goto_e
    return v0

    .restart local p1
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    return-object v0
.end method
