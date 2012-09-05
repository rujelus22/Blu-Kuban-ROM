.class public abstract Lcom/android/providers/tasks/SyncableContentProvider;
.super Landroid/content/ContentProvider;
.source "SyncableContentProvider.java"


# instance fields
.field private volatile mTempProviderSyncAdapter:Lcom/android/providers/tasks/TempProviderSyncAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getTempProviderSyncAdapter()Lcom/android/providers/tasks/TempProviderSyncAdapter;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/providers/tasks/SyncableContentProvider;->mTempProviderSyncAdapter:Lcom/android/providers/tasks/TempProviderSyncAdapter;

    return-object v0
.end method
