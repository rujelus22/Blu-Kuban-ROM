.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
.super Ljava/lang/Enum;
.source "AccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

.field public static final enum ASSERTION:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Value;
        value = "assertion"
    .end annotation
.end field

.field public static final enum AUTHORIZATION_CODE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Value;
        value = "authorization_code"
    .end annotation
.end field

.field public static final enum NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Value;
        value = "none"
    .end annotation
.end field

.field public static final enum PASSWORD:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Value;
        value = "password"
    .end annotation
.end field

.field public static final enum REFRESH_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Value;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    const-string v1, "AUTHORIZATION_CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->AUTHORIZATION_CODE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 380
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->PASSWORD:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 382
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    const-string v1, "ASSERTION"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->ASSERTION:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 384
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    const-string v1, "REFRESH_TOKEN"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->REFRESH_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 386
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 376
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->AUTHORIZATION_CODE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->PASSWORD:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->ASSERTION:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->REFRESH_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .registers 2
    .parameter

    .prologue
    .line 376
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .registers 1

    .prologue
    .line 376
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    invoke-virtual {v0}, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    return-object v0
.end method
