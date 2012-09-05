.class Lcom/android/browser/provider/SnapshotProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/SnapshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/SnapshotProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/provider/SnapshotProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    iget-object v0, v0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    if-eqz v0, :cond_d

    .line 121
    :try_start_6
    iget-object v0, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    iget-object v0, v0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_e

    .line 129
    :cond_d
    :goto_d
    return-void

    .line 122
    :catch_e
    move-exception v0

    goto :goto_d
.end method
