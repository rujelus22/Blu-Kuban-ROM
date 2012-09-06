.class public final enum Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;
.super Ljava/lang/Enum;
.source "CameraWrappingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

.field public static final enum FILL:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

.field public static final enum FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    const-string v1, "FIT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 72
    new-instance v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FILL:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FILL:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->$VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;
    .registers 2
    .parameter "name"

    .prologue
    .line 62
    const-class v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->$VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    return-object v0
.end method
