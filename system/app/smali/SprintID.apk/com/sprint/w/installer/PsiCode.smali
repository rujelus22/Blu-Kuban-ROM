.class public final enum Lcom/sprint/w/installer/PsiCode;
.super Ljava/lang/Enum;
.source "PsiCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/w/installer/PsiCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/w/installer/PsiCode;

.field public static final enum APP_AUTHENTICATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

.field public static final enum APP_AUTHORIZATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

.field public static final enum ATTRIBUTE_MISSMATCH:Lcom/sprint/w/installer/PsiCode;

.field public static final enum FORBIDDEN:Lcom/sprint/w/installer/PsiCode;

.field public static final enum INCOMPAT_CONFIG:Lcom/sprint/w/installer/PsiCode;

.field public static final enum INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

.field public static final enum INVALID_CONTENT:Lcom/sprint/w/installer/PsiCode;

.field public static final enum INVALID_DESCRIPTOR:Lcom/sprint/w/installer/PsiCode;

.field public static final enum JAR_SIZE_MISMATCH:Lcom/sprint/w/installer/PsiCode;

.field public static final enum LICENSE_UPDATED:Lcom/sprint/w/installer/PsiCode;

.field public static final enum LOST_SERVICE:Lcom/sprint/w/installer/PsiCode;

.field public static final enum OC:Lcom/sprint/w/installer/PsiCode;

.field public static final enum PUSH_REGISTRATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

.field public static final enum SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

.field public static final enum SUCCESS:Lcom/sprint/w/installer/PsiCode;

.field public static final enum USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "SUCCESS"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v4, v2}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->SUCCESS:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "INSUFFICIENT_MEMORY"

    const/16 v2, 0x385

    invoke-direct {v0, v1, v5, v2}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "USER_CANCELLED"

    const/16 v2, 0x386

    invoke-direct {v0, v1, v6, v2}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "LOST_SERVICE"

    const/16 v2, 0x387

    invoke-direct {v0, v1, v7, v2}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->LOST_SERVICE:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "JAR_SIZE_MISMATCH"

    const/16 v2, 0x388

    invoke-direct {v0, v1, v8, v2}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->JAR_SIZE_MISMATCH:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "ATTRIBUTE_MISSMATCH"

    const/4 v2, 0x5

    const/16 v3, 0x389

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->ATTRIBUTE_MISSMATCH:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "INVALID_DESCRIPTOR"

    const/4 v2, 0x6

    const/16 v3, 0x38a

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->INVALID_DESCRIPTOR:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "INVALID_CONTENT"

    const/4 v2, 0x7

    const/16 v3, 0x38b

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->INVALID_CONTENT:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "INCOMPAT_CONFIG"

    const/16 v2, 0x8

    const/16 v3, 0x38c

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->INCOMPAT_CONFIG:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "APP_AUTHENTICATION_FAILURE"

    const/16 v2, 0x9

    const/16 v3, 0x38d

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->APP_AUTHENTICATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "APP_AUTHORIZATION_FAILURE"

    const/16 v2, 0xa

    const/16 v3, 0x38e

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->APP_AUTHORIZATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "PUSH_REGISTRATION_FAILURE"

    const/16 v2, 0xb

    const/16 v3, 0x38f

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->PUSH_REGISTRATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x3b6

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0xd

    const/16 v3, 0x3b7

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->FORBIDDEN:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "LICENSE_UPDATED"

    const/16 v2, 0xe

    const/16 v3, 0x3b8

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->LICENSE_UPDATED:Lcom/sprint/w/installer/PsiCode;

    new-instance v0, Lcom/sprint/w/installer/PsiCode;

    const-string v1, "OC"

    const/16 v2, 0xf

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/PsiCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->OC:Lcom/sprint/w/installer/PsiCode;

    .line 4
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sprint/w/installer/PsiCode;

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->SUCCESS:Lcom/sprint/w/installer/PsiCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->LOST_SERVICE:Lcom/sprint/w/installer/PsiCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->JAR_SIZE_MISMATCH:Lcom/sprint/w/installer/PsiCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->ATTRIBUTE_MISSMATCH:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->INVALID_DESCRIPTOR:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->INVALID_CONTENT:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->INCOMPAT_CONFIG:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->APP_AUTHENTICATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->APP_AUTHORIZATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->PUSH_REGISTRATION_FAILURE:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->FORBIDDEN:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->LICENSE_UPDATED:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->OC:Lcom/sprint/w/installer/PsiCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/w/installer/PsiCode;->$VALUES:[Lcom/sprint/w/installer/PsiCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/sprint/w/installer/PsiCode;->code:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/w/installer/PsiCode;
    .registers 2
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/sprint/w/installer/PsiCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PsiCode;

    return-object v0
.end method

.method public static values()[Lcom/sprint/w/installer/PsiCode;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/sprint/w/installer/PsiCode;->$VALUES:[Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v0}, [Lcom/sprint/w/installer/PsiCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/w/installer/PsiCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/sprint/w/installer/PsiCode;->code:I

    return v0
.end method
