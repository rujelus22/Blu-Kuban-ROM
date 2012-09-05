.class public Lcom/android/exchange/adapter/FourteenProvisionParser;
.super Lcom/android/exchange/adapter/AbstractUtiltyParser;
.source "FourteenProvisionParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractUtiltyParser;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public checkForProvisioning()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->parse()Z

    move-result v0

    return v0
.end method

.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, status:I
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/FourteenProvisionParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x1d6

    if-eq v2, v3, :cond_10

    .line 25
    new-instance v1, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 26
    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/FourteenProvisionParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    .line 27
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x1cc

    if-ne v2, v3, :cond_10

    .line 28
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->getValueInt()I

    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->isProvisioningStatus(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 30
    const/4 v1, 0x1

    .line 42
    :cond_28
    return v1

    .line 33
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->isDeviceAccessDenied(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 34
    const-string v1, "FourteenProvisionParser"

    const-string v2, "FourteenProvisionParser::parse() - Received status 129, to Block device "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v2, 0x40001

    const v3, 0x7f060014

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v1
.end method
