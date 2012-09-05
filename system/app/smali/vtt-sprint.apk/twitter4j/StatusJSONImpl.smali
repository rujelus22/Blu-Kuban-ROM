.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field static class$twitter4j$StatusJSONImpl:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = 0x68c214e4e0c8cc29L


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private contributors:[Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isTruncated:Z

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private wasRetweetedByMe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "twitter4j.StatusJSONImpl"

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_13
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    goto :goto_c
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 53
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 54
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 59
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 272
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 78
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 79
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 5
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 54
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 59
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 272
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 68
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    .local v0, json:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 70
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 71
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 72
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1f
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
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

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 334
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 336
    :cond_9
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 337
    .local v3, list:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 338
    .local v4, size:I
    new-instance v6, Ltwitter4j/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 339
    .local v6, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    if-ge v0, v4, :cond_31

    .line 340
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 341
    .local v1, json:Lorg/json/JSONObject;
    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 342
    .local v5, status:Ltwitter4j/Status;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 343
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_2b
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 347
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v5           #status:Ltwitter4j/Status;
    :cond_31
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 348
    invoke-static {v6, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_3a} :catch_42

    .line 350
    :cond_3a
    return-object v6

    .line 351
    .end local v0           #i:I
    .end local v3           #list:Lorg/json/JSONArray;
    .end local v4           #size:I
    .end local v6           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_3b
    move-exception v2

    .line 352
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 353
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_42
    move-exception v7

    .line 354
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method

.method private init(Lorg/json/JSONObject;)V
    .registers 15
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v10, "id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->id:J

    .line 83
    const-string v10, "text"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 84
    const-string v10, "source"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 85
    const-string v10, "created_at"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 86
    const-string v10, "truncated"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 87
    const-string v10, "in_reply_to_status_id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 88
    const-string v10, "in_reply_to_user_id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    .line 89
    const-string v10, "favorited"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 90
    const-string v10, "in_reply_to_screen_name"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 91
    const-string v10, "retweet_count"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    .line 92
    const-string v10, "retweeted"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    .line 94
    :try_start_58
    const-string v10, "user"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 95
    new-instance v10, Ltwitter4j/UserJSONImpl;

    const-string v11, "user"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/UserJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_6d} :catch_c5

    .line 100
    :cond_6d
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Lorg/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 101
    const-string v10, "place"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 103
    :try_start_7b
    new-instance v10, Ltwitter4j/PlaceJSONImpl;

    const-string v11, "place"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/PlaceJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_88} :catch_cc

    .line 110
    :cond_88
    :goto_88
    const-string v10, "retweeted_status"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9d

    .line 112
    :try_start_90
    new-instance v10, Ltwitter4j/StatusJSONImpl;

    const-string v11, "retweeted_status"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_9d} :catch_e9

    .line 118
    :cond_9d
    :goto_9d
    const-string v10, "contributors"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_151

    .line 120
    :try_start_a5
    const-string v10, "contributors"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 121
    .local v1, contributorsArray:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 122
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_122

    .line 123
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_c2} :catch_106

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 97
    .end local v1           #contributorsArray:Lorg/json/JSONArray;
    .end local v4           #i:I
    :catch_c5
    move-exception v6

    .line 98
    .local v6, jsone:Lorg/json/JSONException;
    new-instance v10, Ltwitter4j/TwitterException;

    invoke-direct {v10, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 104
    .end local v6           #jsone:Lorg/json/JSONException;
    :catch_cc
    move-exception v5

    .line 105
    .local v5, ignore:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse place:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_88

    .line 113
    .end local v5           #ignore:Lorg/json/JSONException;
    :catch_e9
    move-exception v5

    .line 114
    .restart local v5       #ignore:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse retweeted_status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_9d

    .line 125
    .end local v5           #ignore:Lorg/json/JSONException;
    :catch_106
    move-exception v5

    .line 126
    .restart local v5       #ignore:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse contributors:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 132
    .end local v5           #ignore:Lorg/json/JSONException;
    :cond_122
    :goto_122
    const-string v10, "entities"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_198

    .line 134
    :try_start_12a
    const-string v10, "entities"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 136
    .local v2, entities:Lorg/json/JSONObject;
    const-string v10, "user_mentions"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 137
    .local v9, userMentionsArray:Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 138
    .local v7, len:I
    new-array v10, v7, [Ltwitter4j/UserMentionEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 139
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_13f
    if-ge v4, v7, :cond_155

    .line 140
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v11, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v11, v10, v4
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_12a .. :try_end_14e} :catch_197

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 130
    .end local v2           #entities:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v7           #len:I
    .end local v9           #userMentionsArray:Lorg/json/JSONArray;
    :cond_151
    const/4 v10, 0x0

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    goto :goto_122

    .line 143
    .restart local v2       #entities:Lorg/json/JSONObject;
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v9       #userMentionsArray:Lorg/json/JSONArray;
    :cond_155
    :try_start_155
    const-string v10, "urls"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 144
    .local v8, urlsArray:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 145
    new-array v10, v7, [Ltwitter4j/URLEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 146
    const/4 v4, 0x0

    :goto_164
    if-ge v4, v7, :cond_176

    .line 147
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v11, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/URLEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v11, v10, v4

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_164

    .line 150
    :cond_176
    const-string v10, "hashtags"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 151
    .local v3, hashtagsArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 152
    new-array v10, v7, [Ltwitter4j/HashtagEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 153
    const/4 v4, 0x0

    :goto_185
    if-ge v4, v7, :cond_198

    .line 154
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v11, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v11, v10, v4
    :try_end_194
    .catch Lorg/json/JSONException; {:try_start_155 .. :try_end_194} :catch_197

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_185

    .line 156
    .end local v2           #entities:Lorg/json/JSONObject;
    .end local v3           #hashtagsArray:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v7           #len:I
    .end local v8           #urlsArray:Lorg/json/JSONArray;
    .end local v9           #userMentionsArray:Lorg/json/JSONArray;
    :catch_197
    move-exception v10

    .line 159
    :cond_198
    const-string v10, "annotations"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1ad

    .line 161
    :try_start_1a0
    const-string v10, "annotations"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 162
    .local v0, annotationsArray:Lorg/json/JSONArray;
    new-instance v10, Ltwitter4j/Annotations;

    invoke-direct {v10, v0}, Ltwitter4j/Annotations;-><init>(Lorg/json/JSONArray;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;
    :try_end_1ad
    .catch Lorg/json/JSONException; {:try_start_1a0 .. :try_end_1ad} :catch_1ae

    .line 166
    .end local v0           #annotationsArray:Lorg/json/JSONArray;
    :cond_1ad
    :goto_1ad
    return-void

    .line 163
    :catch_1ae
    move-exception v10

    goto :goto_1ad
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .registers 8
    .parameter "that"

    .prologue
    .line 169
    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 170
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 171
    const/high16 v2, -0x8000

    .line 175
    :goto_11
    return v2

    .line 172
    :cond_12
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 173
    const v2, 0x7fffffff

    goto :goto_11

    .line 175
    :cond_1d
    long-to-int v2, v0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    if-nez p1, :cond_6

    move v0, v1

    .line 371
    .end local p1
    :cond_5
    :goto_5
    return v0

    .line 368
    .restart local p1
    :cond_6
    if-eq p0, p1, :cond_5

    .line 371
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_18

    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_18
    move v0, v1

    goto :goto_5
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getContributors()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 189
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .registers 3

    .prologue
    .line 225
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()J
    .registers 3

    .prologue
    .line 299
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    return-wide v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 360
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .registers 2

    .prologue
    .line 268
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isRetweet()Z
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRetweetedByMe()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    return v0
.end method

.method public isTruncated()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", isTruncated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", isFavorited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geoLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", place="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", retweetCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", wasRetweetedByMe="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", contributors="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    if-nez v0, :cond_11a

    move-object v0, v1

    :goto_bb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", annotations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", retweetedStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_121

    move-object v0, v1

    :goto_e2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_128

    move-object v0, v1

    :goto_f1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_12f

    :goto_ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11a
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_bb

    :cond_121
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_e2

    :cond_128
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_f1

    :cond_12f
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_ff
.end method
