.class Lcom/google/android/apps/plus/hangout/GCommApp$3;
.super Ljava/lang/Object;
.source "GCommApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 2
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$3;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected called. Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 449
    instance-of v0, p2, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    if-eqz v0, :cond_2d

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$3;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    check-cast p2, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;->getService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$2102(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommService;)Lcom/google/android/apps/plus/hangout/GCommService;

    .line 452
    :cond_2d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 456
    const-string v0, "onServiceDisconnected called"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$3;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$2102(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommService;)Lcom/google/android/apps/plus/hangout/GCommService;

    .line 458
    return-void
.end method
