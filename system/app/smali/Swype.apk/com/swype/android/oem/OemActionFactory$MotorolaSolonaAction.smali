.class Lcom/swype/android/oem/OemActionFactory$MotorolaSolonaAction;
.super Lcom/swype/android/oem/OemAction;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/oem/OemActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaSolonaAction"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/swype/android/oem/OemAction;-><init>()V

    .line 319
    return-void
.end method


# virtual methods
.method public getOemId()Lcom/swype/android/oem/OEMBuildID;
    .registers 2

    .prologue
    .line 325
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->MotorolaSolona:Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 336
    sparse-switch p1, :sswitch_data_22

    .line 351
    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 338
    :sswitch_6
    invoke-virtual {p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchVoiceDictation()V

    move v0, v3

    .line 339
    goto :goto_5

    .line 341
    :sswitch_b
    invoke-virtual {p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_4

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_4

    move v0, v3

    .line 347
    goto :goto_5

    .line 336
    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_b
        0x6f -> :sswitch_6
    .end sparse-switch
.end method
