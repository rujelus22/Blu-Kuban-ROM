.class public final enum Lcom/google/android/youtube/app/ui/Slider$Order;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/Slider$Order;

.field public static final enum FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

.field public static final enum SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/android/youtube/app/ui/Slider$Order;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    new-instance v0, Lcom/google/android/youtube/app/ui/Slider$Order;

    const-string v1, "SECOND"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/ui/Slider$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/Slider$Order;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->$VALUES:[Lcom/google/android/youtube/app/ui/Slider$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/Slider$Order;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/Slider$Order;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/Slider$Order;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->$VALUES:[Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/Slider$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/Slider$Order;

    return-object v0
.end method
