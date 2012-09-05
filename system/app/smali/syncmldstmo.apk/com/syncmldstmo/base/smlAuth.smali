.class public Lcom/syncmldstmo/base/smlAuth;
.super Ljava/lang/Object;
.source "smlAuth.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _smlAuthCredType2String(I)Ljava/lang/String;
    .registers 3
    .parameter "type"

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_22

    .line 34
    :pswitch_3
    const/high16 v0, 0x4

    const-string v1, "Not Support Auth Type"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 20
    :pswitch_c
    const-string v0, "syncml:auth-basic"

    goto :goto_b

    .line 22
    :pswitch_f
    const-string v0, "syncml:auth-md5"

    goto :goto_b

    .line 24
    :pswitch_12
    const-string v0, "syncml:auth-MAC"

    goto :goto_b

    .line 26
    :pswitch_15
    const-string v0, "syncml:auth-X509"

    goto :goto_b

    .line 28
    :pswitch_18
    const-string v0, "syncml:auth-securid"

    goto :goto_b

    .line 30
    :pswitch_1b
    const-string v0, "syncml:auth-safeword"

    goto :goto_b

    .line 32
    :pswitch_1e
    const-string v0, "syncml:auth-digipass"

    goto :goto_b

    .line 17
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_3
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public static smlCredType2String(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/syncmldstmo/base/smlAuth;->_smlAuthCredType2String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
