.class public Lcom/sec/android/app/mobileprint/MPrintCommon;
.super Ljava/lang/Object;
.source "MPrintCommon.java"


# static fields
.field public static final ACTION_CANCELED:Ljava/lang/String; = "mobileprint.event.print_canceled"

.field public static final ACTION_COMPLETED:Ljava/lang/String; = "mobileprint.event.print_completed"

.field public static final ACTION_ERROR:Ljava/lang/String; = "mobileprint.event.print_error"

.field public static final ACTION_PROGRESS:Ljava/lang/String; = "mobileprint.event.print_progress"

.field public static final ALPHA_OF_DISABLED:I = 0x66

.field public static final ALPHA_OF_ENABLED:I = 0xff

.field public static final DIALOG_ID_CANCELLED:I = 0xc9

.field public static final DIALOG_ID_CHECK_PRINTER_IPADDRESS:I = 0x69

.field public static final DIALOG_ID_COMPLETED:I = 0xc8

.field public static final DIALOG_ID_CONNECT_WIFI:I = 0x2

.field public static final DIALOG_ID_COULD_NOT_CONNECT:I = 0x68

.field public static final DIALOG_ID_GET_PRINTER_INFO:I = 0x3

.field public static final DIALOG_ID_INTERNAL_ERROR:I = 0x14d

.field public static final DIALOG_ID_NOT_SUPPORTED_CONTENTES:I = 0x12f

.field public static final DIALOG_ID_NOT_SUPPORTED_PRINTER:I = 0x132

.field public static final DIALOG_ID_OUTPUT_STREAM_ERROR:I = 0x130

.field public static final DIALOG_ID_OUT_OF_MEMORY:I = 0x12d

.field public static final DIALOG_ID_PRINTER_UNAVAILABLE:I = 0x65

.field public static final DIALOG_ID_PRINT_OPTION_ERROR:I = 0x12e

.field public static final DIALOG_ID_RESTRICT_ALERT:I = 0x1

.field public static final DIALOG_ID_STILL_RUNNING:I = 0x131

.field public static final DIALOG_ID_UNABLE_TO_GET_INFO:I = 0x66

.field public static final DIALOG_ID_WIFI_NOT_AVAILABLE:I = 0x67

.field public static final EnableUsbPrinting:Z = true

.field public static final EnableWifiDirectPrinting:Z = true

.field public static final FILE_PATH:Ljava/lang/String; = "FilePath"

.field public static final FlagForPreviewRotation:Z = false

.field public static final INTENT_PAGE:Ljava/lang/String; = "Page"

.field public static final INTENT_PRINTER_INFO:Ljava/lang/String; = "PrinterInfo"

.field public static final INTENT_PRINT_JOB_INFO:Ljava/lang/String; = "PrintJobInfo"

.field public static final INTENT_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final INTENT_TEXT:Ljava/lang/String; = "Text"

.field public static final INTENT_TITLE:Ljava/lang/String; = "Title"

.field public static final INTENT_TOTAL_PAGE:Ljava/lang/String; = "TotalPage"

.field public static final INTENT_TRANSACTION:Ljava/lang/String; = "Transaction"

.field public static final INTENT_VALUE:Ljava/lang/String; = "Value"

.field public static final ITEM_COLOR_MODEL:Ljava/lang/String; = "color_model"

.field public static final ITEM_CONNECT_TYPE:Ljava/lang/String; = "connect_type"

.field public static final ITEM_DEVICE:Ljava/lang/String; = "device"

.field public static final ITEM_DUPLEX_MODEL:Ljava/lang/String; = "duplex_model"

.field public static final ITEM_IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field public static final ITEM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final ITEM_MODEL_NAME:Ljava/lang/String; = "model_name"

.field public static final ITEM_NEVER_SHOW_AGAIN:Ljava/lang/String; = "never_show_again"

.field public static final ITEM_PAPER_HEIGHT:Ljava/lang/String; = "height"

.field public static final ITEM_PAPER_NAME:Ljava/lang/String; = "name"

.field public static final ITEM_PAPER_TYPE:Ljava/lang/String; = "type"

.field public static final ITEM_PAPER_WIDTH:Ljava/lang/String; = "width"

.field public static final ITEM_PORT_NUMBER:Ljava/lang/String; = "port_number"

.field public static final NUMBER_OF_COPY_MAX:I = 0x3e7

.field public static final NUMBER_OF_COPY_MIN:I = 0x1

.field public static final NUMBER_OF_LANGUAGE:Ljava/lang/String; = "number_of_language"

.field public static final NUMBER_OF_PAPER_SIZE:Ljava/lang/String; = "number_of_paper_size"

.field public static final NUMBER_OF_PAPER_TYPE:Ljava/lang/String; = "number_of_paper_type"

.field public static final PAPER_NAME_A4:Ljava/lang/String; = "A4"

.field public static final PAPER_NAME_LETTER:Ljava/lang/String; = "Letter"

.field public static final PREF_APP_SETTING_VALUE:Ljava/lang/String; = "Setting_value_"

.field public static final PREF_KEY_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field public static final PREF_KEY_DUPLEX_MODE:Ljava/lang/String; = "duplex_mode"

.field public static final PREF_KEY_NUMBER_OF_COPY:Ljava/lang/String; = "number_of_copy"

.field public static final PREF_KEY_PAPER_ORIENTATION:Ljava/lang/String; = "paper_orientation"

.field public static final PREF_KEY_PAPER_SIZE:Ljava/lang/String; = "paper_size"

.field public static final PREF_KEY_PAPER_SIZE_HEIGHT:Ljava/lang/String; = "paper_size_height"

.field public static final PREF_KEY_PAPER_SIZE_WIDTH:Ljava/lang/String; = "paper_size_width"

.field public static final PREF_KEY_PAPER_TYPE:Ljava/lang/String; = "paper_type"

.field public static final PREF_KEY_PRINTER_MODEL:Ljava/lang/String; = "model_name"

.field public static final PREF_PAPER_SIZE:Ljava/lang/String; = "Paper_size"

.field public static final PREF_PAPER_TYPE:Ljava/lang/String; = "Paper_type"

.field public static final PREF_PRINTER_DEVICE:Ljava/lang/String; = "Printer_device"

.field public static final PREF_PRINTER_LANGUAGE:Ljava/lang/String; = "Printer_language"

.field public static final PREF_RESTRICT_ALERT:Ljava/lang/String; = "Restrict_alert"

.field public static final PRINTER_DEV_USB_FILE:Ljava/lang/String; = "/dev/usb/lp0"

.field public static final PRINTER_NW_PORT_NUMBER:I = 0x238c

.field public static final RESELECT_MODE:Ljava/lang/String; = "ReselectMode"

.field public static final ServiceSimulationMode:Z = false

.field public static final TAG:Ljava/lang/String; = "MobilePrint"

.field public static final UIConceptCode:I = 0x9

.field public static final VALUE_COLORMODE_COLOR:Ljava/lang/String; = "color"

.field public static final VALUE_COLORMODE_MONO:Ljava/lang/String; = "mono"

.field public static final VALUE_DUPLEXMODE_LONG:Ljava/lang/String; = "duplex_long"

.field public static final VALUE_DUPLEXMODE_SHORT:Ljava/lang/String; = "duplex_short"

.field public static final VALUE_DUPLEXMODE_SIMPLEX:Ljava/lang/String; = "simplex"

.field public static final VALUE_ORIENTATION_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final VALUE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final VALUE_TYPE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final VALUE_TYPE_THICK:Ljava/lang/String; = "Thick"

.field public static final VALUE_TYPE_THIN:Ljava/lang/String; = "Thin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)Z
    .registers 5
    .parameter "printJobInfo"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 362
    if-nez p0, :cond_c

    .line 363
    const-string v1, "MobilePrint"

    const-string v2, "checkPrintJobInfo() : printJobInfo is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_b
    return v0

    .line 367
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    if-ne v2, v1, :cond_24

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    if-eqz v2, :cond_3c

    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-lt v2, v1, :cond_3c

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    if-lt v2, v1, :cond_3c

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    if-ge v2, v1, :cond_17d

    .line 378
    :cond_3c
    const-string v1, "MobilePrint"

    const-string v2, "checkPrintJobInfo() : invalid print job info."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - FilePathList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - ConnectedType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - ColorModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - NumberOfCopy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PrintOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - ColorPrint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_17d
    move v0, v1

    .line 396
    goto/16 :goto_b
.end method

.method public static checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z
    .registers 5
    .parameter "printerInfo"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 333
    if-nez p0, :cond_c

    .line 334
    const-string v1, "MobilePrint"

    const-string v2, "checkPrinterInfo() : printerInfo is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_b
    return v0

    .line 338
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    if-ne v2, v1, :cond_1c

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    if-eqz v2, :cond_28

    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-nez v2, :cond_d1

    .line 345
    :cond_28
    const-string v1, "MobilePrint"

    const-string v2, "checkPrinterInfo() : invalid printer info."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - ModelName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - ConnectedType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Languages : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperTypes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - PaperSizes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_d1
    move v0, v1

    .line 358
    goto/16 :goto_b
.end method

.method public static getDefaultPaperName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "deviceLocale"

    .prologue
    const/4 v3, 0x1

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, paperName:Ljava/lang/String;
    const-string v1, "US"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_32

    const-string v1, "CA"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_32

    const-string v1, "PH"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_32

    const-string v1, "BR"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_35

    .line 301
    :cond_32
    const-string v0, "Letter"

    .line 306
    :goto_34
    return-object v0

    .line 304
    :cond_35
    const-string v0, "A4"

    goto :goto_34
.end method

.method public static getDefaultPaperSize(Ljava/lang/String;)[I
    .registers 5
    .parameter "paperName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 310
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 311
    .local v0, size:[I
    const-string v1, "Letter"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_16

    .line 312
    const/16 v1, 0x9f6

    aput v1, v0, v3

    .line 313
    const/16 v1, 0xce4

    aput v1, v0, v2

    .line 319
    :goto_15
    return-object v0

    .line 316
    :cond_16
    const/16 v1, 0x9b0

    aput v1, v0, v3

    .line 317
    const/16 v1, 0xdb3

    aput v1, v0, v2

    goto :goto_15
.end method

.method public static getImagePath(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "intent"

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, imagePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 265
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    .local v0, extraBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 267
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #uri:Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 268
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_17

    .line 269
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 279
    :goto_16
    return-object v1

    .line 272
    :cond_17
    const-string v3, "MobilePrint"

    const-string v4, "getImagePath : uri is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 276
    :cond_1f
    const-string v3, "MobilePrint"

    const-string v4, "getImagePath : extraBundle is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public static getIpAddressHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "ip"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    const-string v2, "F"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".1"

    const-string v3, "B"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".2"

    const-string v3, "C"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, " + 0x"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 7

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 244
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 245
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 246
    .local v3, interf:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 247
    .local v4, ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_14
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 249
    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pdp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 251
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_45
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_45} :catch_47

    move-result-object v5

    .line 258
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #interf:Ljava/net/NetworkInterface;
    .end local v4           #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_46
    return-object v5

    .line 255
    :catch_47
    move-exception v1

    .line 256
    .local v1, ex:Ljava/net/SocketException;
    const-string v5, "MobilePrint"

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1           #ex:Ljava/net/SocketException;
    :cond_51
    const/4 v5, 0x0

    goto :goto_46
.end method

.method public static getSubject(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter "intent"

    .prologue
    .line 287
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter "intent"

    .prologue
    .line 291
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter "intent"

    .prologue
    .line 283
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTargetNetworkAvailable(Ljava/lang/String;)Z
    .registers 6
    .parameter "targetIP"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 215
    if-nez p0, :cond_c

    .line 216
    const-string v3, "MobilePrint"

    const-string v4, "isTargetNetworkAvailable() : targetIP is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_b
    :goto_b
    return v2

    .line 220
    :cond_c
    invoke-static {}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, localIP:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, ipBase:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v3, :cond_1d

    move v2, v3

    .line 225
    goto :goto_b

    .line 228
    :cond_1d
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v3, :cond_2f

    move v2, v3

    .line 231
    goto :goto_b

    .line 234
    :cond_2f
    const-string v3, "MobilePrint"

    const-string v4, "isTargetNetworkAvailable() : targetIP is not available."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static isUSBConnected()Z
    .registers 2

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/usb/lp0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, devUSB:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isWifiConnected(Landroid/app/Activity;)Z
    .registers 10
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    .line 185
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 188
    .local v2, wifi:Landroid/net/wifi/WifiManager;
    const-string v6, "wifip2p"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 189
    .local v4, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v4, :cond_52

    .line 190
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 191
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 192
    .local v1, netInfo:Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 193
    const-string v6, "MobilePrint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :cond_51
    :goto_51
    return v5

    .line 198
    :cond_52
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    if-ne v6, v5, :cond_60

    .line 199
    const-string v6, "MobilePrint"

    const-string v7, "WifiAp : Enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 204
    :cond_60
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-ne v6, v5, :cond_70

    .line 205
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 206
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    if-nez v6, :cond_51

    .line 211
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_70
    const/4 v5, 0x0

    goto :goto_51
.end method

.method public static printSecuLog(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 330
    return-void
.end method
