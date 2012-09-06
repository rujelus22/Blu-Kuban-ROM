.class public final enum Lcom/google/android/youtube/core/model/Stream$Quality;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_480P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_720P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_144P"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_240P"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_360P"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 30
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_405P"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_480P"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_480P_ABR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 33
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_720P"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_720P_ABR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_1080P"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "DOWNLOAD_720P"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_HLS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->$VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->$VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Stream$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object v0
.end method
