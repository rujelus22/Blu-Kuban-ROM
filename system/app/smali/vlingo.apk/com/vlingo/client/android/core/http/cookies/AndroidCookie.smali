.class public Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
.super Lorg/apache/http/impl/cookie/BasicClientCookie;
.source "AndroidCookie.java"

# interfaces
.implements Lcom/vlingo/client/core/http/cookies/Cookie;


# static fields
.field private static final FIELD_COUNT:I = 0x5

.field private static final FIELD_DELIMITER:C = ','

.field private static final FIELD_INDEX_DOMAIN:I = 0x2

.field private static final FIELD_INDEX_EXPIRES:I = 0x4

.field private static final FIELD_INDEX_NAME:I = 0x0

.field private static final FIELD_INDEX_PATH:I = 0x3

.field private static final FIELD_INDEX_VALUE:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    .registers 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 80
    const/16 v2, 0x2c

    invoke-static {p0, v2}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, fields:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_15

    .line 82
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Badly formatted cookie data"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_15
    new-instance v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-direct {v0, v2, v3}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    aget-object v2, v1, v4

    if-eqz v2, :cond_31

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 86
    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->setDomain(Ljava/lang/String;)V

    .line 88
    :cond_31
    aget-object v2, v1, v5

    if-eqz v2, :cond_42

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    .line 89
    aget-object v2, v1, v5

    invoke-virtual {v0, v2}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->setPath(Ljava/lang/String;)V

    .line 91
    :cond_42
    aget-object v2, v1, v6

    if-eqz v2, :cond_57

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_57

    .line 92
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->setExpires(J)V

    .line 94
    :cond_57
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 102
    instance-of v1, p1, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    if-eqz v1, :cond_43

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    .line 105
    .local v0, ac:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    .line 110
    .end local v0           #ac:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :goto_40
    return v1

    .line 105
    .restart local v0       #ac:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :cond_41
    const/4 v1, 0x0

    goto :goto_40

    .line 110
    .end local v0           #ac:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :cond_43
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_40
.end method

.method public getExpires()J
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 36
    .local v0, date:Ljava/util/Date;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    :goto_8
    return-wide v1

    :cond_9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 114
    const/16 v0, 0x1f

    .line 115
    .local v0, hash:I
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 116
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 117
    :cond_11
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 118
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 119
    :cond_20
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 120
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 121
    :cond_2f
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 122
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 123
    :cond_3e
    return v0
.end method

.method public isExpired()Z
    .registers 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "domain"
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, isMatch:Z
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 46
    if-eqz p1, :cond_3b

    invoke-virtual {p1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v2

    :goto_1c
    and-int/2addr v0, v1

    .line 48
    :cond_1d
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 49
    if-eqz p2, :cond_3d

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :goto_39
    and-int/2addr v0, v2

    .line 51
    :cond_3a
    return v0

    :cond_3b
    move v1, v3

    .line 46
    goto :goto_1c

    :cond_3d
    move v2, v3

    .line 49
    goto :goto_39
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x2c

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 67
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 70
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 73
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getExpires()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 74
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setExpires(J)V
    .registers 4
    .parameter "expires"

    .prologue
    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 56
    .local v0, expiryDate:Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCookie: expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getExpires()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->isExpired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
