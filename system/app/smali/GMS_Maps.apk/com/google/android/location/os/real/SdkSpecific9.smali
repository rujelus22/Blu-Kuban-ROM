.class public Lcom/google/android/location/os/real/SdkSpecific9;
.super Lcom/google/android/location/os/real/SdkSpecific8;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific8;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/gsm/GsmCellLocation;)I
    .registers 3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/File;->setReadable(Z)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_f

    move-result v0

    if-nez v0, :cond_7

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_11

    move-result v0

    if-nez v0, :cond_e

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_7

    :catch_11
    move-exception v0

    goto :goto_e
.end method
