.class public Lcom/samsung/android/application/fileshare/api/FileShareException;
.super Ljava/lang/Exception;
.source "FileShareException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "errorCode"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareException;->mErrorCode:I

    .line 68
    iput p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareException;->mErrorCode:I

    .line 69
    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3
    .parameter "errorCode"

    .prologue
    .line 80
    sparse-switch p1, :sswitch_data_1c

    .line 96
    const-string v0, ""

    :goto_5
    return-object v0

    .line 82
    :sswitch_6
    const-string v0, "no error"

    goto :goto_5

    .line 84
    :sswitch_9
    const-string v0, "using invalid argument"

    goto :goto_5

    .line 86
    :sswitch_c
    const-string v0, "fail to subscribe a target device"

    goto :goto_5

    .line 88
    :sswitch_f
    const-string v0, "device is not initialized"

    goto :goto_5

    .line 90
    :sswitch_12
    const-string v0, "fail to open socket."

    goto :goto_5

    .line 92
    :sswitch_15
    const-string v0, "fail to connect to a target device."

    goto :goto_5

    .line 94
    :sswitch_18
    const-string v0, "fail to invoke a upnp action."

    goto :goto_5

    .line 80
    nop

    :sswitch_data_1c
    .sparse-switch
        -0x3ef -> :sswitch_18
        -0x3ee -> :sswitch_15
        -0x3ed -> :sswitch_12
        -0x3ec -> :sswitch_f
        -0x3eb -> :sswitch_c
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_6
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareException;->mErrorCode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/api/FileShareException;->codeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
