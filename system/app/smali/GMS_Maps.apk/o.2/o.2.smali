.class public final Lo/O;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_10

    .line 36
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 30
    :pswitch_6
    const-string v0, "Driving"

    goto :goto_5

    .line 32
    :pswitch_9
    const-string v0, "Walking"

    goto :goto_5

    .line 34
    :pswitch_c
    const-string v0, "Bicycling"

    goto :goto_5

    .line 28
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v0

    return v0
.end method
