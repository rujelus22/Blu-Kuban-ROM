.class public final enum Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field public static final enum ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field public static final enum NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field public static final enum SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field public static final enum WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    const-string v1, "SUBSCRIBED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 43
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    const-string v1, "NOT_SUBSCRIBED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 44
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 45
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->$VALUES:[Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->$VALUES:[Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    return-object v0
.end method
