.class public Lcom/swype/android/oem/OemActionFactory;
.super Ljava/lang/Object;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;,
        Lcom/swype/android/oem/OemActionFactory$MotorolaSolonaAction;,
        Lcom/swype/android/oem/OemActionFactory$LGAction;,
        Lcom/swype/android/oem/OemActionFactory$HTCAction;,
        Lcom/swype/android/oem/OemActionFactory$SamsungAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;)Lcom/swype/android/oem/OemAction;
    .registers 4
    .parameter "oemName"
    .parameter "ctx"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/swype/android/oem/OEMBuildID;->fromString(Ljava/lang/String;)Lcom/swype/android/oem/OEMBuildID;

    move-result-object v0

    .line 32
    .local v0, oem_id:Lcom/swype/android/oem/OEMBuildID;
    if-eqz v0, :cond_38

    .line 33
    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->HTC_SENSE_UI:Lcom/swype/android/oem/OEMBuildID;

    if-ne v0, v1, :cond_10

    .line 34
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$HTCAction;

    invoke-direct {v1, p1}, Lcom/swype/android/oem/OemActionFactory$HTCAction;-><init>(Landroid/content/Context;)V

    .line 49
    :goto_f
    return-object v1

    .line 36
    :cond_10
    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->SAMSUNG:Lcom/swype/android/oem/OEMBuildID;

    if-ne v0, v1, :cond_1a

    .line 37
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$SamsungAction;

    invoke-direct {v1, p1}, Lcom/swype/android/oem/OemActionFactory$SamsungAction;-><init>(Landroid/content/Context;)V

    goto :goto_f

    .line 39
    :cond_1a
    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->LG:Lcom/swype/android/oem/OEMBuildID;

    if-ne v0, v1, :cond_24

    .line 40
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$LGAction;

    invoke-direct {v1, p1}, Lcom/swype/android/oem/OemActionFactory$LGAction;-><init>(Landroid/content/Context;)V

    goto :goto_f

    .line 42
    :cond_24
    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->MotorolaSolona:Lcom/swype/android/oem/OEMBuildID;

    if-ne v0, v1, :cond_2e

    .line 43
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$MotorolaSolonaAction;

    invoke-direct {v1, p1}, Lcom/swype/android/oem/OemActionFactory$MotorolaSolonaAction;-><init>(Landroid/content/Context;)V

    goto :goto_f

    .line 45
    :cond_2e
    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->HTC_NO_DOUBLETAP:Lcom/swype/android/oem/OEMBuildID;

    if-ne v0, v1, :cond_38

    .line 46
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;

    invoke-direct {v1, p1}, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;-><init>(Landroid/content/Context;)V

    goto :goto_f

    .line 49
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method
