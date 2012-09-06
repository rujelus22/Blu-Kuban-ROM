.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum DANGEROUS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum HATE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum PORN:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum RIGHTS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum SPAM:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

.field public static final enum VIOLENCE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;


# instance fields
.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "PORN"

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->PORN:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 320
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "VIOLENCE"

    const v2, 0x7f0b002d

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->VIOLENCE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 321
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "HATE"

    const v2, 0x7f0b002e

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->HATE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 322
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "DANGEROUS"

    const v2, 0x7f0b002f

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->DANGEROUS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 323
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "RIGHTS"

    const v2, 0x7f0b0031

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->RIGHTS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 324
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    const-string v1, "SPAM"

    const/4 v2, 0x5

    const v3, 0x7f0b0030

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->SPAM:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 318
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->PORN:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->VIOLENCE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->HATE:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->DANGEROUS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->RIGHTS:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->SPAM:Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 327
    iput p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->stringId:I

    .line 328
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;
    .registers 2
    .parameter

    .prologue
    .line 318
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;
    .registers 1

    .prologue
    .line 318
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    return-object v0
.end method
