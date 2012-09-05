.class Ltwitter4j/FriendshipJSONImpl;
.super Ljava/lang/Object;
.source "FriendshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Friendship;


# static fields
.field private static final serialVersionUID:J = -0x695cf65ed996ccf8L


# instance fields
.field private followedBy:Z

.field private following:Z

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 38
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    .line 43
    :try_start_8
    const-string v4, "id"

    invoke-static {v4, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    .line 44
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    .line 45
    const-string v4, "screen_name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    .line 46
    const-string v4, "connections"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 47
    .local v1, connections:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, connection:Ljava/lang/String;
    const-string v4, "following"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 50
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 47
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 51
    :cond_3f
    const-string v4, "followed_by"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 52
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4a} :catch_4b

    goto :goto_3c

    .line 55
    .end local v0           #connection:Ljava/lang/String;
    .end local v1           #connections:Lorg/json/JSONArray;
    .end local v2           #i:I
    :catch_4b
    move-exception v3

    .line 56
    .local v3, jsone:Lorg/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 58
    .end local v3           #jsone:Lorg/json/JSONException;
    .restart local v1       #connections:Lorg/json/JSONArray;
    .restart local v2       #i:I
    :cond_71
    return-void
.end method

.method static createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .registers 11
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 64
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 66
    :cond_9
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v5

    .line 67
    .local v5, list:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 68
    .local v6, size:I
    new-instance v1, Ltwitter4j/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 69
    .local v1, friendshipList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v6, :cond_31

    .line 70
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, json:Lorg/json/JSONObject;
    new-instance v0, Ltwitter4j/FriendshipJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/FriendshipJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 72
    .local v0, friendship:Ltwitter4j/Friendship;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 73
    invoke-static {v0, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_2b
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 77
    .end local v0           #friendship:Ltwitter4j/Friendship;
    .end local v3           #json:Lorg/json/JSONObject;
    :cond_31
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 78
    invoke-static {v1, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_3a} :catch_42

    .line 80
    :cond_3a
    return-object v1

    .line 81
    .end local v1           #friendshipList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    .end local v2           #i:I
    .end local v5           #list:Lorg/json/JSONArray;
    .end local v6           #size:I
    :catch_3b
    move-exception v4

    .line 82
    .local v4, jsone:Lorg/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 83
    .end local v4           #jsone:Lorg/json/JSONException;
    :catch_42
    move-exception v7

    .line 84
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_5

    .line 121
    :cond_4
    :goto_4
    return v1

    .line 111
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

    .line 113
    check-cast v0, Ltwitter4j/FriendshipJSONImpl;

    .line 115
    .local v0, that:Ltwitter4j/FriendshipJSONImpl;
    iget-boolean v3, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    iget-boolean v4, v0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 116
    :cond_1e
    iget-boolean v3, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    iget-boolean v4, v0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 117
    :cond_26
    iget v3, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    iget v4, v0, Ltwitter4j/FriendshipJSONImpl;->id:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 118
    :cond_2e
    iget-object v3, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    move v1, v2

    goto :goto_4

    .line 119
    :cond_3a
    iget-object v3, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    iget v0, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    .line 127
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 129
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eqz v1, :cond_2a

    move v1, v2

    :goto_1f
    add-int v0, v4, v1

    .line 130
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eqz v4, :cond_2c

    :goto_27
    add-int v0, v1, v2

    .line 131
    return v0

    :cond_2a
    move v1, v3

    .line 129
    goto :goto_1f

    :cond_2c
    move v2, v3

    .line 130
    goto :goto_27
.end method

.method public isFollowedBy()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    return v0
.end method

.method public isFollowing()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FriendshipJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
