.class public final enum Lcom/google/android/youtube/core/model/Video$Privacy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$Privacy;

.field public static final enum PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

.field public static final enum PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

.field public static final enum UNLISTED:Lcom/google/android/youtube/core/model/Video$Privacy;


# instance fields
.field public final nameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    const-string v1, "PUBLIC"

    const v2, 0x7f0b0035

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/model/Video$Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 79
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    const-string v1, "UNLISTED"

    const v2, 0x7f0b0037

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->UNLISTED:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    const-string v1, "PRIVATE"

    const v2, 0x7f0b0036

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->UNLISTED:Lcom/google/android/youtube/core/model/Video$Privacy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Privacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$Privacy;->nameId:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object v0
.end method
