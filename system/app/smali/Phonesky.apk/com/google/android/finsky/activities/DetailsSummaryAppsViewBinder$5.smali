.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/utils/AssetSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAsset(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mIsPendingRefund:Z

    .line 284
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;->$SwitchMap$com$google$android$finsky$utils$AssetSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 304
    :cond_10
    :goto_10
    return-void

    .line 286
    :pswitch_11
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshFragment()V

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_10

    .line 294
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshFragment()V

    goto :goto_10

    .line 298
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->handleRefundFailure()V

    goto :goto_10

    .line 301
    :pswitch_40
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->handleRefundFailure()V

    goto :goto_10

    .line 284
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_11
        :pswitch_34
        :pswitch_3a
        :pswitch_40
    .end packed-switch
.end method
