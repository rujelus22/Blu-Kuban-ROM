.class Lcom/android/providers/tasks/SyncAdapter$Transport;
.super Landroid/content/ISyncAdapter$Stub;
.source "SyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/tasks/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/tasks/SyncAdapter;


# direct methods
.method constructor <init>(Lcom/android/providers/tasks/SyncAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/providers/tasks/SyncAdapter$Transport;->this$0:Lcom/android/providers/tasks/SyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .registers 3
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/providers/tasks/SyncAdapter$Transport;->this$0:Lcom/android/providers/tasks/SyncAdapter;

    invoke-virtual {v0}, Lcom/android/providers/tasks/SyncAdapter;->cancelSync()V

    .line 48
    return-void
.end method

.method public initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 7
    .parameter "syncContext"
    .parameter "authority"
    .parameter "account"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/providers/tasks/SyncAdapter$Transport;->this$0:Lcom/android/providers/tasks/SyncAdapter;

    new-instance v1, Landroid/content/SyncContext;

    invoke-direct {v1, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    invoke-virtual {v0, v1, p3, p2, p4}, Lcom/android/providers/tasks/SyncAdapter;->startSync(Landroid/content/SyncContext;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method
