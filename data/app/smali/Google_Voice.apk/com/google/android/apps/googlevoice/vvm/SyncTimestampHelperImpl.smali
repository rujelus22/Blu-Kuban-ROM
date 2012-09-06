.class public Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelperImpl;
.super Ljava/lang/Object;
.source "SyncTimestampHelperImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelper;


# static fields
.field protected static final TIME_OF_LAST_SYNC:Ljava/lang/String; = "timeOfLastSync"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "sharedPreferences"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelperImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method public readSyncTimestamp()J
    .registers 5

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelperImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "timeOfLastSync"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSyncTimestamp()V
    .registers 3

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelperImpl;->writeSyncTimestamp(J)V

    .line 36
    return-void
.end method

.method public writeSyncTimestamp(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/SyncTimestampHelperImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "timeOfLastSync"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method
