.class Lcom/samsung/client/EmergencyCallDlgActivity$1;
.super Ljava/lang/Object;
.source "EmergencyCallDlgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/EmergencyCallDlgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/EmergencyCallDlgActivity;


# direct methods
.method constructor <init>(Lcom/samsung/client/EmergencyCallDlgActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/client/EmergencyCallDlgActivity$1;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 45
    :try_start_5
    const-string v0, "EmergencyCallDlgActivity"

    const-string v2, "emergencyCall onClick..... "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$1;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #calls: Lcom/samsung/client/EmergencyCallDlgActivity;->callEmergencyNumber()V
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$100(Lcom/samsung/client/EmergencyCallDlgActivity;)V

    .line 49
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1c

    .line 50
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$1;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #getter for: Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$200(Lcom/samsung/client/EmergencyCallDlgActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    return-void

    .line 49
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
