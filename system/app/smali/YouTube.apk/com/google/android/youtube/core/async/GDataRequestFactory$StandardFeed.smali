.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum ON_THE_WEB:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public static final enum WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "MOST_VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 103
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "TOP_RATED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 104
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "MOST_DISCUSSED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 105
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "TOP_FAVORITES"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 106
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "MOST_RESPONDED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 107
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "MOST_POPULAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 108
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "MOST_LINKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 109
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "RECENTLY_FEATURED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 110
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "WATCH_ON_MOBILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 111
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    const-string v1, "ON_THE_WEB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->ON_THE_WEB:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->ON_THE_WEB:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;
    .registers 2
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
