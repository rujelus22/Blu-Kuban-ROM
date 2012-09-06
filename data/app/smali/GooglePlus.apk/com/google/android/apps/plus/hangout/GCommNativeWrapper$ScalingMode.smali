.class public final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

.field public static final enum AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

.field public static final enum ZOOM_IN_TO_FILL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

.field public static final enum ZOOM_OUT_TO_FIT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const-string v1, "ZOOM_OUT_TO_FIT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->ZOOM_OUT_TO_FIT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const-string v1, "ZOOM_IN_TO_FILL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->ZOOM_IN_TO_FILL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    .line 77
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const-string v1, "AUTO_ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->ZOOM_OUT_TO_FIT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->ZOOM_IN_TO_FILL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    return-object v0
.end method
