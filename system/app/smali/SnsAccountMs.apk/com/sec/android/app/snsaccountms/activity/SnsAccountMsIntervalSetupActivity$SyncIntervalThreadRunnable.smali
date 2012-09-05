.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;
.super Ljava/lang/Object;
.source "SnsAccountMsIntervalSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncIntervalThreadRunnable"
.end annotation


# instance fields
.field mSyncInterval:I

.field mSyncType:I

.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;II)V
    .registers 5
    .parameter
    .parameter "syncType"
    .parameter "syncInterval"

    .prologue
    const/4 v0, -0x1

    .line 158
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 156
    iput v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 159
    iput p3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 160
    iput p2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;

    iget v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    iget v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    #calls: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;->setSyncInterval(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsIntervalSetupActivity;II)V

    .line 165
    return-void
.end method
