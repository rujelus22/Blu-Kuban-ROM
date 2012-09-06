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
    .line 382
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mDisplayDebugToast:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$200(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$1300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v2, v2, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "location_source"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v2, v2, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/LocationController;->getFormattedAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$2$1;->this$1:Lcom/google/android/apps/plus/phone/LocationController$2;

    iget-object v1, v1, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 398
    :cond_5a
    return-void
.end method
