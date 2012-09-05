.class public Lcom/vlingo/client/social/api/FoursquareUser;
.super Ljava/lang/Object;
.source "FoursquareUser.java"


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSONResponse(Ljava/lang/String;)Lcom/vlingo/client/social/api/FoursquareUser;
    .registers 8
    .parameter "response"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, details:Lcom/vlingo/client/social/api/FoursquareUser;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "user"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 28
    .local v4, user:Lorg/json/JSONObject;
    new-instance v1, Lcom/vlingo/client/social/api/FoursquareUser;

    invoke-direct {v1}, Lcom/vlingo/client/social/api/FoursquareUser;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_1b

    .line 29
    .end local v0           #details:Lcom/vlingo/client/social/api/FoursquareUser;
    .local v1, details:Lcom/vlingo/client/social/api/FoursquareUser;
    :try_start_11
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vlingo/client/social/api/FoursquareUser;->id:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_26

    move-object v0, v1

    .line 42
    .end local v1           #details:Lcom/vlingo/client/social/api/FoursquareUser;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #user:Lorg/json/JSONObject;
    .restart local v0       #details:Lcom/vlingo/client/social/api/FoursquareUser;
    :goto_1a
    return-object v0

    .line 39
    :catch_1b
    move-exception v2

    .line 40
    .local v2, ex:Ljava/lang/Exception;
    :goto_1c
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 39
    .end local v0           #details:Lcom/vlingo/client/social/api/FoursquareUser;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #details:Lcom/vlingo/client/social/api/FoursquareUser;
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v4       #user:Lorg/json/JSONObject;
    :catch_26
    move-exception v2

    move-object v0, v1

    .end local v1           #details:Lcom/vlingo/client/social/api/FoursquareUser;
    .restart local v0       #details:Lcom/vlingo/client/social/api/FoursquareUser;
    goto :goto_1c
.end method
