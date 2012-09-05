.class Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;
.super Ljava/lang/Object;
.source "CrashTriggerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;

    #calls: Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->triggerCrash()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->access$000(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;)V

    .line 46
    return-void
.end method
