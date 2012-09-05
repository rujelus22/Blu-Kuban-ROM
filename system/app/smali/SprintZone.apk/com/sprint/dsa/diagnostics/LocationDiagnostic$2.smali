.class Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;
.super Ljava/util/TimerTask;
.source "LocationDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

.field private final synthetic val$listener:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;Landroid/location/LocationListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->val$listener:Landroid/location/LocationListener;

    .line 106
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;)Lcom/sprint/dsa/diagnostics/LocationDiagnostic;
    .registers 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$1(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->val$listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 109
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$3(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 110
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    const/4 v1, 0x0

    #setter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z
    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$4(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;Z)V

    .line 112
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_WARN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, v0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, v0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 114
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$5(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2$1;-><init>(Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_33
    return-void
.end method
