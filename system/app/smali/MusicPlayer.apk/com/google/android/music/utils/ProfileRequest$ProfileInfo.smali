.class public Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "ProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/ProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileInfo"
.end annotation


# instance fields
.field public mFamilyName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "familyName"
    .end annotation
.end field

.field public mGivenName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "givenName"
    .end annotation
.end field

.field public mPhotoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "photoUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method

.method public static parse([B)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 43
    const-string v1, "ProfileRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 46
    const-class v1, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :try_end_1c
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 47
    :catch_1d
    move-exception v0

    .line 48
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
