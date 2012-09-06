.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field public static final enum AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field public static final enum FORM_ENCODED_BODY:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field public static final enum QUERY_PARAMETER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    const-string v1, "AUTHORIZATION_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 108
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    const-string v1, "QUERY_PARAMETER"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->QUERY_PARAMETER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 114
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    const-string v1, "FORM_ENCODED_BODY"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->FORM_ENCODED_BODY:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->QUERY_PARAMETER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->FORM_ENCODED_BODY:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    .registers 2
    .parameter

    .prologue
    .line 97
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v0}, [Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    return-object v0
.end method
