.class public final enum Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

.field public static final enum BACK:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

.field public static final enum FORWARD:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

.field public static final enum NONE:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->BACK:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->FORWARD:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->NONE:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    sget-object v1, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->BACK:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->FORWARD:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->NONE:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->$VALUES:[Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->$VALUES:[Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    return-object v0
.end method
