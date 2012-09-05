.class public abstract Lcom/android/exchange/adapter/AbstractUtiltyParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractUtiltyParser.java"


# instance fields
.field private mProvisioningRequired:Z


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Z)V
    .registers 4
    .parameter "parse"
    .parameter "resumeStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/Parser;-><init>(Lcom/android/exchange/adapter/Parser;Z)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    .line 43
    return-void
.end method


# virtual methods
.method public isDeviceAccessDenied(I)Z
    .registers 4
    .parameter "status"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, deviceAccessDenined:Z
    const/16 v1, 0x81

    if-ne p1, v1, :cond_6

    .line 112
    const/4 v0, 0x1

    .line 116
    :cond_6
    return v0
.end method

.method public isProvisioningStatus(I)Z
    .registers 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 54
    packed-switch p1, :pswitch_data_e

    .line 96
    :goto_4
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    return v0

    .line 66
    :pswitch_7
    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    goto :goto_4

    .line 84
    :pswitch_a
    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    goto :goto_4

    .line 54
    nop

    :pswitch_data_e
    .packed-switch 0x8b
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
