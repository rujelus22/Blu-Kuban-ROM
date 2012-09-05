.class Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6061
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 6063
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;->val$packageName:Ljava/lang/String;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->triggerModelAdd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6064
    return-void
.end method
