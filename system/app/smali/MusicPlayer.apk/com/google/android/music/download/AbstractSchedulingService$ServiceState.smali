.class final enum Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
.super Ljava/lang/Enum;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/AbstractSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

.field public static final enum FINISHED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

.field public static final enum INITIALIZED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

.field public static final enum NOT_STARTED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

.field public static final enum WAITING_FOR_SERVICES:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->NOT_STARTED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 37
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    const-string v1, "WAITING_FOR_SERVICES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->WAITING_FOR_SERVICES:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 38
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->INITIALIZED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 39
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->FINISHED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    sget-object v1, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->NOT_STARTED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->WAITING_FOR_SERVICES:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->INITIALIZED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->FINISHED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->$VALUES:[Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->$VALUES:[Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    invoke-virtual {v0}, [Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    return-object v0
.end method
