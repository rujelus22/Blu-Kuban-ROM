.class public Lcom/android/email/MessagingExceptionStrings;
.super Ljava/lang/Object;
.source "MessagingExceptionStrings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "e"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I
    .registers 3
    .parameter "e"

    .prologue
    const v0, 0x7f080115

    .line 35
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 55
    :pswitch_a
    const v0, 0x7f08002e

    :goto_d
    :pswitch_d
    return v0

    .line 37
    :pswitch_e
    const v0, 0x7f080116

    goto :goto_d

    .line 39
    :pswitch_12
    const v0, 0x7f08009c

    goto :goto_d

    .line 41
    :pswitch_16
    const v0, 0x7f080113

    goto :goto_d

    .line 43
    :pswitch_1a
    const v0, 0x7f080114

    goto :goto_d

    .line 51
    :pswitch_1e
    const v0, 0x7f080118

    goto :goto_d

    .line 53
    :pswitch_22
    const v0, 0x7f08010f

    goto :goto_d

    .line 35
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1a
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1e
        :pswitch_12
        :pswitch_a
        :pswitch_22
    .end packed-switch
.end method
