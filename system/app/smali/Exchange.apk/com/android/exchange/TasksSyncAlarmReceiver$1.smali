.class Lcom/android/exchange/TasksSyncAlarmReceiver$1;
.super Ljava/lang/Object;
.source "TasksSyncAlarmReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/TasksSyncAlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/TasksSyncAlarmReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/exchange/TasksSyncAlarmReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/exchange/TasksSyncAlarmReceiver$1;->this$0:Lcom/android/exchange/TasksSyncAlarmReceiver;

    iput-object p2, p0, Lcom/android/exchange/TasksSyncAlarmReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exchange/TasksSyncAlarmReceiver$1;->this$0:Lcom/android/exchange/TasksSyncAlarmReceiver;

    iget-object v1, p0, Lcom/android/exchange/TasksSyncAlarmReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/exchange/TasksSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/exchange/TasksSyncAlarmReceiver;->access$000(Lcom/android/exchange/TasksSyncAlarmReceiver;Landroid/content/Context;)V

    .line 63
    return-void
.end method
