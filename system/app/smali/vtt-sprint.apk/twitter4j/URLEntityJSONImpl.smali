.class final Ltwitter4j/URLEntityJSONImpl;
.super Ljava/lang/Object;
.source "URLEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/URLEntity;


# static fields
.field private static final serialVersionUID:J = 0x102b94bf50a65174L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private end:I

.field private expandedURL:Ljava/net/URL;

.field private start:I

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 35
    iput v0, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    .line 44
    invoke-direct {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 45
    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .registers 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    .local v0, indicesArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/URLEntityJSONImpl;->end:I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_47

    .line 54
    :try_start_14
    new-instance v2, Ljava/net/URL;

    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_21} :catch_50
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_21} :catch_47

    .line 58
    :goto_21
    :try_start_21
    const-string v2, "expanded_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_26} :catch_47

    move-result v2

    if-nez v2, :cond_36

    .line 60
    :try_start_29
    new-instance v2, Ljava/net/URL;

    const-string v3, "expanded_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_36} :catch_4e
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_36} :catch_47

    .line 64
    :cond_36
    :goto_36
    :try_start_36
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 65
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_46} :catch_47

    .line 70
    :cond_46
    return-void

    .line 67
    .end local v0           #indicesArray:Lorg/json/JSONArray;
    :catch_47
    move-exception v1

    .line 68
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 61
    .end local v1           #jsone:Lorg/json/JSONException;
    .restart local v0       #indicesArray:Lorg/json/JSONArray;
    :catch_4e
    move-exception v2

    goto :goto_36

    .line 55
    :catch_50
    move-exception v2

    goto :goto_21
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_5

    .line 123
    :cond_4
    :goto_4
    return v1

    .line 110
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 112
    check-cast v0, Ltwitter4j/URLEntityJSONImpl;

    .line 114
    .local v0, that:Ltwitter4j/URLEntityJSONImpl;
    iget v3, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    iget v4, v0, Ltwitter4j/URLEntityJSONImpl;->end:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 115
    :cond_1e
    iget v3, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    iget v4, v0, Ltwitter4j/URLEntityJSONImpl;->start:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 116
    :cond_26
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    :cond_34
    move v1, v2

    .line 117
    goto :goto_4

    .line 116
    :cond_36
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-nez v3, :cond_34

    .line 118
    :cond_3a
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_48
    move v1, v2

    .line 119
    goto :goto_4

    .line 118
    :cond_4a
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-nez v3, :cond_48

    .line 120
    :cond_4e
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_5c
    move v1, v2

    .line 121
    goto :goto_4

    .line 120
    :cond_5e
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-eqz v3, :cond_4

    goto :goto_5c
.end method

.method public getDisplayURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    return v0
.end method

.method public getExpandedURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    return-object v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 128
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 129
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    add-int v0, v1, v3

    .line 130
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-eqz v1, :cond_34

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I

    move-result v1

    :goto_15
    add-int v0, v3, v1

    .line 131
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-eqz v1, :cond_36

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I

    move-result v1

    :goto_23
    add-int v0, v3, v1

    .line 132
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_31
    add-int v0, v1, v2

    .line 133
    return v0

    :cond_34
    move v1, v2

    .line 130
    goto :goto_15

    :cond_36
    move v1, v2

    .line 131
    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "URLEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", expandedURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
