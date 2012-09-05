.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 64
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "TOKEN"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 67
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "CODE_AND_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    .registers 2
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    invoke-virtual {v0}, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-object v0
.end method


# virtual methods
.method public final set(Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->responseType:Ljava/lang/String;

    .line 76
    return-void
.end method
