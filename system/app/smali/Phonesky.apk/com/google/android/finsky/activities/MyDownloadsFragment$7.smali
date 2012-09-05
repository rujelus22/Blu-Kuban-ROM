.class Lcom/google/android/finsky/activities/MyDownloadsFragment$7;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/utils/AssetSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->refundAsset(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 559
    sget-object v0, Lcom/google/android/finsky/activities/MyDownloadsFragment$10;->$SwitchMap$com$google$android$finsky$utils$AssetSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 575
    :goto_b
    :pswitch_b
    return-void

    .line 561
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/utils/AssetSupport;->uninstall(Ljava/lang/String;)V

    goto :goto_b

    .line 567
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AssetSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 568
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->refresh()V

    goto :goto_b

    .line 571
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AssetSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->refresh()V

    goto :goto_b

    .line 559
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_21
    .end packed-switch
.end method
