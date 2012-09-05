.class Lcom/android/commands/pm/Pm$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .registers 2
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    const/4 v0, 0x1

    .line 886
    monitor-enter p0

    .line 887
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->finished:Z

    .line 888
    if-ne p2, v0, :cond_e

    :goto_7
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->result:Z

    .line 889
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 890
    monitor-exit p0

    .line 891
    return-void

    .line 888
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 890
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
