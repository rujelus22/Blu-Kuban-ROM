.class public Lcom/sec/android/socialhub/service/error/SocialHubServiceError;
.super Ljava/lang/Object;
.source "SocialHubServiceError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2
    .parameter "errorCode"

    .prologue
    const/4 v0, 0x0

    .line 22
    packed-switch p0, :pswitch_data_14

    .line 42
    :goto_4
    :pswitch_4
    return-object v0

    .line 28
    :pswitch_5
    const-string v0, "Temporary Error"

    goto :goto_4

    .line 31
    :pswitch_8
    const-string v0, "Account not found."

    goto :goto_4

    .line 34
    :pswitch_b
    const-string v0, "Method call error. recheck call routine"

    goto :goto_4

    .line 37
    :pswitch_e
    const-string v0, "Invalid type or value!"

    goto :goto_4

    .line 40
    :pswitch_11
    const-string v0, "Network Error"

    goto :goto_4

    .line 22
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_4
        :pswitch_11
    .end packed-switch
.end method
