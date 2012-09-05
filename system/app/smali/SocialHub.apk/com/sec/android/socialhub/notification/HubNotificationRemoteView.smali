.class public Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;
.super Landroid/widget/RemoteViews;
.source "HubNotificationRemoteView.java"


# instance fields
.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne p2, v3, :cond_19

    const v0, 0x7f03002a

    :goto_b
    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->mViewMode:I

    .line 20
    iput p2, p0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->mViewMode:I

    .line 22
    iget v0, p0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->mViewMode:I

    packed-switch v0, :pswitch_data_3a

    .line 38
    :goto_18
    :pswitch_18
    return-void

    .line 18
    :cond_19
    const v0, 0x109009e

    goto :goto_b

    .line 29
    :pswitch_1d
    const v0, 0x7f0b00db

    invoke-virtual {p0, v0, v2, v2, v3}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setProgressBar(IIIZ)V

    goto :goto_18

    .line 33
    :pswitch_24
    const v0, 0x1020006

    const v1, 0x1080089

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setImageViewResource(II)V

    .line 34
    const v0, 0x1020066

    const-string v1, "setTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setLong(ILjava/lang/String;J)V

    goto :goto_18

    .line 22
    :pswitch_data_3a
    .packed-switch -0x1
        :pswitch_18
        :pswitch_18
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public setState(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->mViewMode:I

    packed-switch v0, :pswitch_data_e

    .line 66
    :goto_5
    :pswitch_5
    return-void

    .line 63
    :pswitch_6
    const v0, 0x1020048

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 56
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->mViewMode:I

    packed-switch v0, :pswitch_data_14

    .line 52
    :goto_5
    return-void

    .line 45
    :pswitch_6
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 49
    :pswitch_d
    const v0, 0x1020016

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 42
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method
