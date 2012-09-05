.class Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;
.super Ljava/lang/Object;
.source "SnsAccountFbIntervalSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncIntervalThreadRunnable"
.end annotation


# instance fields
.field mSyncInterval:I

.field mSyncType:I

.field final synthetic this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;II)V
    .registers 5
    .parameter
    .parameter "syncType"
    .parameter "syncInterval"

    .prologue
    const/4 v0, -0x1

    .line 265
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 263
    iput v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 266
    iput p3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    .line 267
    iput p2, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    .line 268
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;

    iget v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncType:I

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;->mSyncInterval:I

    #calls: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->setSyncInterval(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->access$000(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;II)V

    .line 272
    return-void
.end method
