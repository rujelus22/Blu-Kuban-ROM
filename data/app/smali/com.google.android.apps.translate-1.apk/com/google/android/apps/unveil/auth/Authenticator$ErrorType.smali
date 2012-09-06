.class public final enum Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;
.super Ljava/lang/Enum;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

.field public static final enum GOOGLE_LOGIN_SERVICE_AUTHENTICATION_SERVER_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

.field public static final enum GOOGLE_LOGIN_SERVICE_AUTHENTICATOR_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->UNKNOWN:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    .line 99
    new-instance v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    const-string v1, "GOOGLE_LOGIN_SERVICE_AUTHENTICATOR_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATOR_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    .line 105
    new-instance v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    const-string v1, "GOOGLE_LOGIN_SERVICE_AUTHENTICATION_SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATION_SERVER_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    sget-object v1, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->UNKNOWN:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATOR_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATION_SERVER_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->$VALUES:[Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;
    .registers 2
    .parameter "name"

    .prologue
    .line 92
    const-class v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->$VALUES:[Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    return-object v0
.end method
