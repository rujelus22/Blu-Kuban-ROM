.class public Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/commons/httpclient/Credentials;


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_5

    .line 298
    :cond_4
    :goto_4
    return v1

    .line 277
    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    .line 278
    goto :goto_4

    .line 284
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 286
    check-cast v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    .line 288
    .local v0, that:Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 292
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 254
    const/16 v0, 0x11

    .line 256
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 258
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 260
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    if-nez v1, :cond_1d

    const-string v1, "null"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 240
    :cond_1d
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_15
.end method
