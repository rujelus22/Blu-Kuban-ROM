.class public Lcom/google/android/play/analytics/EventConstants;
.super Ljava/lang/Object;
.source "EventConstants.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getOrientationValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_1a

    .line 112
    const-string v0, "undefined"

    :goto_f
    return-object v0

    .line 105
    :pswitch_10
    const-string v0, "landscape"

    goto :goto_f

    .line 107
    :pswitch_13
    const-string v0, "portrait"

    goto :goto_f

    .line 109
    :pswitch_16
    const-string v0, "square"

    goto :goto_f

    .line 103
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
