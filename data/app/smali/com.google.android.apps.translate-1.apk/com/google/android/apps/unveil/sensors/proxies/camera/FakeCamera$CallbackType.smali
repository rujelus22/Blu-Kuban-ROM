.class final enum Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;
.super Ljava/lang/Enum;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

.field public static final enum ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

.field public static final enum REPEATING:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

.field public static final enum WITH_BUFFER:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    const-string v1, "ONESHOT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 65
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    const-string v1, "REPEATING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->REPEATING:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 68
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    const-string v1, "WITH_BUFFER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->WITH_BUFFER:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->REPEATING:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->WITH_BUFFER:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->$VALUES:[Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;
    .registers 2
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->$VALUES:[Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    return-object v0
.end method
