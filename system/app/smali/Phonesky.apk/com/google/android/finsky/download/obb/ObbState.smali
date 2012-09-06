.class public Lcom/google/android/finsky/download/obb/ObbState;
.super Ljava/lang/Object;
.source "ObbState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .parameter "obbState"

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_18

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 35
    :pswitch_8
    const-string v0, "DOWNLOAD_PENDING"

    goto :goto_7

    .line 37
    :pswitch_b
    const-string v0, "DOWNLOADING"

    goto :goto_7

    .line 39
    :pswitch_e
    const-string v0, "DOWNLOADED"

    goto :goto_7

    .line 41
    :pswitch_11
    const-string v0, "NOT_ON_STORAGE"

    goto :goto_7

    .line 43
    :pswitch_14
    const-string v0, "NOT_APPLICABLE"

    goto :goto_7

    .line 33
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method
