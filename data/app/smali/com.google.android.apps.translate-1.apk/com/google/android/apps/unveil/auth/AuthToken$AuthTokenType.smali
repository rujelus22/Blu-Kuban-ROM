.class public final enum Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;
.super Ljava/lang/Enum;
.source "AuthToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/AuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthTokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

.field public static final enum GPLUS:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

.field public static final enum SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

.field public static final enum WEBUPDATES:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;


# instance fields
.field private final authTokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    const-string v1, "SID"

    const-string v2, "SID"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    const-string v1, "GPLUS"

    const-string v2, "oauth2:https://www.googleapis.com/auth/emeraldsea.stream.read https://www.googleapis.com/auth/emeraldsea.stream.write https://www.googleapis.com/auth/emeraldsea.circles.read https://www.googleapis.com/auth/emeraldsea.circles.write https://www.googleapis.com/auth/picasa https://www.googleapis.com/auth/userinfo.email"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->GPLUS:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    const-string v1, "WEBUPDATES"

    const-string v2, "webupdates"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->WEBUPDATES:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->GPLUS:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->WEBUPDATES:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->$VALUES:[Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->authTokenType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->$VALUES:[Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    return-object v0
.end method


# virtual methods
.method public getAuthTokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->authTokenType:Ljava/lang/String;

    return-object v0
.end method
