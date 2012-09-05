.class Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;
.super Ljava/lang/Object;
.source "LocationDiagnostic.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->val$listener:Landroid/location/LocationListener;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x447a

    .line 91
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$0(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$1(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->val$listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 95
    :cond_1a
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$2(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 96
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->access$1(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;->val$listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 99
    :cond_2f
    return-void
.end method
