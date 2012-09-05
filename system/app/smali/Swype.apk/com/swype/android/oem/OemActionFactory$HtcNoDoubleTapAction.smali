.class Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;
.super Lcom/swype/android/oem/OemActionFactory$HTCAction;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/oem/OemActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtcNoDoubleTapAction"
.end annotation


# instance fields
.field private core:Lcom/swype/android/jni/SwypeCore;

.field private singleTap:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/swype/android/oem/OemActionFactory$HTCAction;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;->core:Lcom/swype/android/jni/SwypeCore;

    .line 375
    return-void
.end method


# virtual methods
.method public getOemId()Lcom/swype/android/oem/OEMBuildID;
    .registers 2

    .prologue
    .line 382
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->HTC_NO_DOUBLETAP:Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method

.method public handleExtractedTextClicked()Z
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;->singleTap:Z

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->appSingleTap()V

    .line 425
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public handleShowInputRequested(IZ)Z
    .registers 7
    .parameter "flags"
    .parameter "configChange"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    move v0, v3

    .line 396
    .local v0, userRequested:Z
    :goto_7
    if-nez p2, :cond_14

    if-eqz v0, :cond_14

    .line 397
    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->appSingleTap()V

    move v1, v3

    .line 400
    :goto_11
    return v1

    .end local v0           #userRequested:Z
    :cond_12
    move v0, v2

    .line 395
    goto :goto_7

    .restart local v0       #userRequested:Z
    :cond_14
    move v1, v2

    .line 400
    goto :goto_11
.end method

.method public onExtractedSelectionChanged(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 411
    if-ne p1, p2, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/swype/android/oem/OemActionFactory$HtcNoDoubleTapAction;->singleTap:Z

    .line 412
    return-void

    .line 411
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method
