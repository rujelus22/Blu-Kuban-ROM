.class public final enum Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
.super Ljava/lang/Enum;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/Cameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/Cameras$CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field public static final enum FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field public static final enum RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    const-string v1, "FrontFacing"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    new-instance v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    const-string v1, "RearFacing"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->$VALUES:[Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2
    .parameter "name"

    .prologue
    .line 81
    const-class v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->$VALUES:[Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method
