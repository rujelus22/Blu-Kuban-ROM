.class public abstract Lcom/android/providers/tasks/SyncAdapter;
.super Ljava/lang/Object;
.source "SyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/tasks/SyncAdapter$Transport;
    }
.end annotation


# instance fields
.field mTransport:Lcom/android/providers/tasks/SyncAdapter$Transport;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/providers/tasks/SyncAdapter$Transport;

    invoke-direct {v0, p0}, Lcom/android/providers/tasks/SyncAdapter$Transport;-><init>(Lcom/android/providers/tasks/SyncAdapter;)V

    iput-object v0, p0, Lcom/android/providers/tasks/SyncAdapter;->mTransport:Lcom/android/providers/tasks/SyncAdapter$Transport;

    return-void
.end method


# virtual methods
.method public abstract cancelSync()V
.end method

.method public abstract startSync(Landroid/content/SyncContext;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
