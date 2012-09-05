.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;
.super Ljava/lang/Object;
.source "SnsAccountTwIntervalSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncIntervalThreadRunnable"
.end annotation


# instance fields
.field mSyncInterval:I

.field mSyncType:I

.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;II)V
    .registers 5
    .parameter
    .parameter "syncType"
    .parameter "syncInterval"

    .prologue
    const/4 v0, -0x1

    .line 159
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 157
    iput v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 160
    iput p3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 161
    iput p2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;

    iget v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    iget v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    #calls: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->setSyncInterval(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;II)V

    .line 166
    return-void
.end method
