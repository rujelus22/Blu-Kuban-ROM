.class public Lcom/sec/android/app/kieswifi/KiesWiFiDebug;
.super Ljava/lang/Object;
.source "KiesWiFiDebug.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SML_DEBUG(ILjava/lang/String;)V
    .registers 2
    .parameter "DBG_LVL"
    .parameter "fmt"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->smlLibWsDebug(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public static smlLibWsDebug(ILjava/lang/String;)V
    .registers 6
    .parameter "DBG_LVL"
    .parameter "s"

    .prologue
    .line 68
    const-string v0, ""

    .line 70
    .local v0, prefix:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, strbuild:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 80
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1d
    packed-switch p0, :pswitch_data_40

    .line 103
    :goto_20
    return-void

    .line 87
    :pswitch_21
    const-string v2, "wifi_kies"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 92
    :pswitch_2b
    const-string v2, "wifi_kies"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 97
    :pswitch_35
    const-string v2, "wifi_kies"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 83
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2b
        :pswitch_21
    .end packed-switch
.end method
