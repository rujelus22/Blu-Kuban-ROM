.class Lcom/google/android/apps/plus/phone/LocationController$2$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/LocationController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/LocationController$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/LocationController$2;)V
    .registers 2
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v1, v1, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 348
    :cond_19
    return-void
.end method
