.class Lcom/google/android/apps/unveil/sensors/CameraManager$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;->initDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$5;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$5;->get()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    move-result-object v0

    return-object v0
.end method
