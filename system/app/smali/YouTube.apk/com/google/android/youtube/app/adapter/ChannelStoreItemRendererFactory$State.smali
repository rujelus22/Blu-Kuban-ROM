.class final enum Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

.field public static final enum SUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

.field public static final enum UNSUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

.field public static final enum WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    .line 54
    new-instance v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    const-string v1, "SUBSCRIBE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->SUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    const-string v1, "UNSUBSCRIBE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->UNSUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->SUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->UNSUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->$VALUES:[Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;
    .registers 2
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->$VALUES:[Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    return-object v0
.end method
