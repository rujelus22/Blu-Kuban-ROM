.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;


# instance fields
.field public final feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "MOST_VIEWED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const v3, 0x7f0b0029

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 300
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "TOP_RATED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const v3, 0x7f0b0027

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 301
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "MOST_DISCUSSED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const v3, 0x7f0b002a

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 302
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "TOP_FAVORITED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const v3, 0x7f0b0028

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 308
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 309
    iput p4, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->stringId:I

    .line 310
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 2
    .parameter

    .prologue
    .line 297
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 1

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object v0
.end method
