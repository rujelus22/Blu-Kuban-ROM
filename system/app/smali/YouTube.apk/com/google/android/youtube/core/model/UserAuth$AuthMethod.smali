.class public final enum Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field public static final enum CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field public static final enum OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;


# instance fields
.field public final authTokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    const-string v1, "CLIENTLOGIN"

    const-string v2, "youtube"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    const-string v1, "OAUTH2"

    const-string v2, "oauth2:http://gdata.youtube.com"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->$VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->$VALUES:[Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    return-object v0
.end method
