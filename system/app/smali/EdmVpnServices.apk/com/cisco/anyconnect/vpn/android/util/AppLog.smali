.class public Lcom/cisco/anyconnect/vpn/android/util/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/util/AppLog$1;,
        Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "functionName"

    .prologue
    .line 93
    return-void
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "severity"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, logString:Ljava/lang/String;
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$util$AppLog$Severity:[I

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 77
    :goto_22
    return-void

    .line 65
    :pswitch_23
    const-string v1, "vpnandroid"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 68
    :pswitch_29
    const-string v1, "vpnandroid"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 71
    :pswitch_2f
    const-string v1, "vpnandroid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 74
    :pswitch_35
    const-string v1, "vpnandroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 62
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "severity"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, logString:Ljava/lang/String;
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$util$AppLog$Severity:[I

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 56
    :goto_22
    return-void

    .line 44
    :pswitch_23
    const-string v1, "vpnandroid"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 47
    :pswitch_29
    const-string v1, "vpnandroid"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 50
    :pswitch_2f
    const-string v1, "vpnandroid"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 53
    :pswitch_35
    const-string v1, "vpnandroid"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 41
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method
