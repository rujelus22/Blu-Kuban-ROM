.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum INVALID_GRANT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

.field public static final enum UNSUPPORTED_GRANT_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 50
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "INVALID_CLIENT"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 55
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "UNAUTHORIZED_CLIENT"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 62
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "INVALID_GRANT"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_GRANT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 68
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "UNSUPPORTED_GRANT_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->UNSUPPORTED_GRANT_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 73
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    const-string v1, "INVALID_SCOPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_GRANT:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->UNSUPPORTED_GRANT_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    invoke-virtual {v0}, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;

    return-object v0
.end method
