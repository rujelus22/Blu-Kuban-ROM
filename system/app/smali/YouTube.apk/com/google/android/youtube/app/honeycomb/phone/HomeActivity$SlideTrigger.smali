.class final enum Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum AUTO:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum BACK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum CLICK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum SELECTION:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field public static final enum UP:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "SWIPE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->UP:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->BACK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "SELECTION"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SELECTION:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->CLICK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    const-string v1, "AUTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->AUTO:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->UP:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->BACK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SELECTION:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->CLICK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->AUTO:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    return-object v0
.end method
