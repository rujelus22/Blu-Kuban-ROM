.class Lcom/google/android/apps/unveil/sensors/CameraManager$6;
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
        "Ljava/lang/Boolean;",
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
    .line 333
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$6;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$6;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
