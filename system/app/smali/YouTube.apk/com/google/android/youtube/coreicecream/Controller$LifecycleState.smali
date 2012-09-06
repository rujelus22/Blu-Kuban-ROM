.class final enum Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

.field public static final enum PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

.field public static final enum RESUMED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

.field public static final enum STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 42
    new-instance v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 46
    new-instance v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->RESUMED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->RESUMED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->$VALUES:[Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->$VALUES:[Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {v0}, [Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    return-object v0
.end method
