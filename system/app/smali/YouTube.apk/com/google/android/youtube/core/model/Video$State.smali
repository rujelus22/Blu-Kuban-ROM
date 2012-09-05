.class public final enum Lcom/google/android/youtube/core/model/Video$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum ACCOUNT_SUSPENDED:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum BLOCKED_BY_OWNER:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum CANT_PROCESS:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum COPYRIGHT:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum COUNTRY_RESTRICTED:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum DELETED:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum DUPLICATE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum EMPTY:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum INAPPROPRIATE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum INVALID_FORMAT:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum NOT_AVAILABLE_ON_MOBILE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum PRIVATE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum TERMS_OF_USE:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum TOO_SMALL:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum UNSUPPORTED_CODEC:Lcom/google/android/youtube/core/model/Video$State;

.field public static final enum VIDEO_TOO_LONG:Lcom/google/android/youtube/core/model/Video$State;


# instance fields
.field public final explanationId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "PLAYABLE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "PROCESSING"

    const v2, 0x7f0a002f

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    .line 47
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "DELETED"

    const v2, 0x7f0a0030

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->DELETED:Lcom/google/android/youtube/core/model/Video$State;

    .line 50
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "COUNTRY_RESTRICTED"

    const v2, 0x7f0a003e

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->COUNTRY_RESTRICTED:Lcom/google/android/youtube/core/model/Video$State;

    .line 51
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "NOT_AVAILABLE_ON_MOBILE"

    const v2, 0x7f0a003f

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->NOT_AVAILABLE_ON_MOBILE:Lcom/google/android/youtube/core/model/Video$State;

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "PRIVATE"

    const/4 v2, 0x5

    const v3, 0x7f0a0040

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->PRIVATE:Lcom/google/android/youtube/core/model/Video$State;

    .line 55
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "COPYRIGHT"

    const/4 v2, 0x6

    const v3, 0x7f0a0037

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->COPYRIGHT:Lcom/google/android/youtube/core/model/Video$State;

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "INAPPROPRIATE"

    const/4 v2, 0x7

    const v3, 0x7f0a0038

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->INAPPROPRIATE:Lcom/google/android/youtube/core/model/Video$State;

    .line 57
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "DUPLICATE"

    const/16 v2, 0x8

    const v3, 0x7f0a0039

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->DUPLICATE:Lcom/google/android/youtube/core/model/Video$State;

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "TERMS_OF_USE"

    const/16 v2, 0x9

    const v3, 0x7f0a003a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->TERMS_OF_USE:Lcom/google/android/youtube/core/model/Video$State;

    .line 59
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "ACCOUNT_SUSPENDED"

    const/16 v2, 0xa

    const v3, 0x7f0a003b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->ACCOUNT_SUSPENDED:Lcom/google/android/youtube/core/model/Video$State;

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "VIDEO_TOO_LONG"

    const/16 v2, 0xb

    const v3, 0x7f0a003c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->VIDEO_TOO_LONG:Lcom/google/android/youtube/core/model/Video$State;

    .line 61
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "BLOCKED_BY_OWNER"

    const/16 v2, 0xc

    const v3, 0x7f0a003d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->BLOCKED_BY_OWNER:Lcom/google/android/youtube/core/model/Video$State;

    .line 64
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "CANT_PROCESS"

    const/16 v2, 0xd

    const v3, 0x7f0a0041

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->CANT_PROCESS:Lcom/google/android/youtube/core/model/Video$State;

    .line 65
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "INVALID_FORMAT"

    const/16 v2, 0xe

    const v3, 0x7f0a0042

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->INVALID_FORMAT:Lcom/google/android/youtube/core/model/Video$State;

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "UNSUPPORTED_CODEC"

    const/16 v2, 0xf

    const v3, 0x7f0a0043

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->UNSUPPORTED_CODEC:Lcom/google/android/youtube/core/model/Video$State;

    .line 67
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "EMPTY"

    const/16 v2, 0x10

    const v3, 0x7f0a0044

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->EMPTY:Lcom/google/android/youtube/core/model/Video$State;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/model/Video$State;

    const-string v1, "TOO_SMALL"

    const/16 v2, 0x11

    const v3, 0x7f0a0045

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->TOO_SMALL:Lcom/google/android/youtube/core/model/Video$State;

    .line 43
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->DELETED:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->COUNTRY_RESTRICTED:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->NOT_AVAILABLE_ON_MOBILE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PRIVATE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->COPYRIGHT:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->INAPPROPRIATE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->DUPLICATE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->TERMS_OF_USE:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->ACCOUNT_SUSPENDED:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->VIDEO_TOO_LONG:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->BLOCKED_BY_OWNER:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->CANT_PROCESS:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->INVALID_FORMAT:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->UNSUPPORTED_CODEC:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->EMPTY:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->TOO_SMALL:Lcom/google/android/youtube/core/model/Video$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Video$State;->$VALUES:[Lcom/google/android/youtube/core/model/Video$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$State;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/google/android/youtube/core/model/Video$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$State;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/youtube/core/model/Video$State;->$VALUES:[Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$State;

    return-object v0
.end method
