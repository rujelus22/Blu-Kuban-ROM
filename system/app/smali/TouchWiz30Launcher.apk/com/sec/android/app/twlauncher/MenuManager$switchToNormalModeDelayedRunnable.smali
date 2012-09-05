.class Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "switchToNormalModeDelayedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2129
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    .line 2135
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToOnDropBackupModeIfNeeded()V

    .line 2136
    return-void
.end method
