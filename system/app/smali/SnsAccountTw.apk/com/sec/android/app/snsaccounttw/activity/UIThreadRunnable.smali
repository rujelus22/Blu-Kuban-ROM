.class Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
.super Ljava/lang/Object;
.source "SnsAccountTwAuthenticatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mActionType:I

.field mAppContext:Landroid/content/Context;

.field mColIndex:[I

.field mContent:Ljava/lang/String;

.field mImageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "ctxt"
    .parameter "actionType"

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    .line 792
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mActionType:I

    .line 794
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mContent:Ljava/lang/String;

    .line 796
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mImageUri:Landroid/net/Uri;

    .line 798
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mColIndex:[I

    .line 801
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    .line 802
    iput p2, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mActionType:I

    .line 803
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 806
    iget v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mActionType:I

    packed-switch v0, :pswitch_data_34

    .line 832
    :goto_5
    :pswitch_5
    return-void

    .line 809
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_5

    .line 813
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_5

    .line 817
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_5

    .line 821
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_5

    .line 825
    :pswitch_2a
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_5

    .line 806
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_18
        :pswitch_21
        :pswitch_5
        :pswitch_2a
    .end packed-switch
.end method
