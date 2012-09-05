.class public Lcom/sec/android/app/mobileprint/MPrintSettingManager;
.super Ljava/lang/Object;
.source "MPrintSettingManager.java"


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "appContext"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    .line 40
    if-nez p1, :cond_10

    .line 41
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingManager : appContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_f
    return-void

    .line 45
    :cond_10
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    goto :goto_f
.end method


# virtual methods
.method public loadPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;Ljava/lang/String;)Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .registers 14
    .parameter "printerInfo"
    .parameter "invokeApp"

    .prologue
    .line 168
    new-instance v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-direct {v6}, Lcom/sec/android/app/mobileprint/MPrintJobItem;-><init>()V

    .line 170
    .local v6, printJobInfo:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    iput-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    .line 171
    iget v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    .line 172
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    iput-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    .line 173
    iget v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPort:I

    .line 174
    iget v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    .line 175
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    iput-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    .line 178
    if-nez p2, :cond_b3

    .line 179
    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 186
    .local v5, prefs:Landroid/content/SharedPreferences;
    :goto_25
    const-string v8, "number_of_copy"

    const-string v9, "1"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, strNumber:Ljava/lang/String;
    :try_start_2d
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    .line 189
    iget v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    if-gtz v8, :cond_cf

    .line 190
    const/4 v8, 0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_db

    .line 202
    :cond_3b
    :goto_3b
    const-string v8, "paper_type"

    const-string v9, "Normal"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    .line 205
    const-string v8, "paper_size"

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v9}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getDefaultPaperName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    .line 206
    const-string v8, "paper_size_width"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 207
    const-string v8, "paper_size_height"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 208
    iget v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    if-eqz v8, :cond_77

    iget v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    if-nez v8, :cond_f9

    .line 209
    :cond_77
    iget-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getDefaultPaperSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 210
    .local v4, paperSize:[I
    const/4 v8, 0x0

    aget v8, v4, v8

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 211
    const/4 v8, 0x1

    aget v8, v4, v8

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 212
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v8, :cond_f9

    .line 213
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8c
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v8, v8

    if-ge v2, v8, :cond_f9

    .line 214
    iget-object v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b0

    .line 215
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    .line 216
    iget-object v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    .line 213
    :cond_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 182
    .end local v2           #i:I
    .end local v4           #paperSize:[I
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #strNumber:Ljava/lang/String;
    :cond_b3
    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting_value_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    goto/16 :goto_25

    .line 192
    .restart local v7       #strNumber:Ljava/lang/String;
    :cond_cf
    :try_start_cf
    iget v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    const/16 v9, 0x3e7

    if-le v8, v9, :cond_3b

    .line 193
    const/16 v8, 0x3e7

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d9} :catch_db

    goto/16 :goto_3b

    .line 196
    :catch_db
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "MobilePrint"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MPrintSettingManager : fail to convert mNumberOfCopy. - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v8, 0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    goto/16 :goto_3b

    .line 223
    .end local v1           #e:Ljava/lang/Exception;
    :cond_f9
    const-string v8, "paper_orientation"

    const-string v9, "auto"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, paperOrientation:Ljava/lang/String;
    const-string v8, "auto"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11e

    .line 225
    const/4 v8, 0x2

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 226
    const/4 v8, -0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    .line 238
    :goto_10f
    iget v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-nez v8, :cond_134

    .line 239
    const/4 v8, 0x0

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    .line 246
    :goto_116
    iget v8, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    if-nez v8, :cond_14a

    .line 247
    const/4 v8, 0x0

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    .line 262
    :goto_11d
    return-object v6

    .line 228
    :cond_11e
    const-string v8, "landscape"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12d

    .line 229
    const/4 v8, 0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 230
    const/4 v8, 0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_10f

    .line 233
    :cond_12d
    const/4 v8, 0x0

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 234
    const/4 v8, 0x0

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_10f

    .line 242
    :cond_134
    const-string v8, "color_mode"

    const-string v9, "color"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "color"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    const/4 v8, 0x1

    :goto_145
    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    goto :goto_116

    :cond_148
    const/4 v8, 0x0

    goto :goto_145

    .line 250
    :cond_14a
    const-string v8, "duplex_mode"

    const-string v9, "simplex"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, duplex:Ljava/lang/String;
    const-string v8, "duplex_short"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15e

    .line 252
    const/4 v8, 0x2

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto :goto_11d

    .line 254
    :cond_15e
    const-string v8, "duplex_long"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16a

    .line 255
    const/4 v8, 0x1

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto :goto_11d

    .line 258
    :cond_16a
    const/4 v8, 0x0

    iput v8, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    goto :goto_11d
.end method

.method public loadPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 65
    new-instance v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-direct {v5}, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;-><init>()V

    .line 68
    .local v5, printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v7, "Printer_device"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 69
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "device"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    .line 70
    const-string v6, "model_name"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    .line 71
    const-string v6, "connect_type"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    .line 72
    const-string v6, "ip_address"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    .line 73
    const-string v6, "port_number"

    const/16 v7, 0x238c

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    .line 74
    const-string v6, "duplex_model"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    .line 75
    const-string v6, "color_model"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 77
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v7, "Printer_language"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 78
    const-string v6, "number_of_language"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, languages:I
    if-lez v1, :cond_85

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_62
    if-ge v0, v1, :cond_85

    .line 82
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "language"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 86
    .end local v0           #i:I
    :cond_85
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v7, "Paper_type"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 87
    const-string v6, "number_of_paper_type"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, paperTypes:I
    if-lez v3, :cond_c0

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_9d
    if-ge v0, v3, :cond_c0

    .line 91
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 95
    .end local v0           #i:I
    :cond_c0
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v7, "Paper_size"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 96
    const-string v6, "number_of_paper_size"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, paperSizes:I
    if-lez v2, :cond_13c

    .line 98
    new-array v6, v2, [Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    iput-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    .line 99
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d5
    if-ge v0, v2, :cond_13c

    .line 100
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    new-instance v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    invoke-direct {v7}, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;-><init>()V

    aput-object v7, v6, v0

    .line 101
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    .line 102
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    .line 103
    iget-object v6, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "height"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 107
    .end local v0           #i:I
    :cond_13c
    return-object v5
.end method

.method public loadRestrictAlertInfo()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v2, "Restrict_alert"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "never_show_again"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public savePrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;Ljava/lang/String;)V
    .registers 10
    .parameter "printJobInfo"
    .parameter "invokeApp"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 266
    if-nez p1, :cond_c

    .line 267
    const-string v2, "MobilePrint"

    const-string v3, "MPrintSettingManager : savePrintJobInfo() - printJobInfo is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_b
    return-void

    .line 270
    :cond_c
    if-nez p2, :cond_16

    .line 271
    const-string v2, "MobilePrint"

    const-string v3, "MPrintSettingManager : savePrintJobInfo() - invokeApp is null. discard to save."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 278
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting_value_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v2, "number_of_copy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v2, "paper_type"

    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v2, "paper_size"

    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v2, "paper_size_width"

    iget v3, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v2, "paper_size_height"

    iget v3, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    iget v2, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v2, v6, :cond_93

    .line 295
    const-string v2, "paper_orientation"

    const-string v3, "auto"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    :goto_78
    iget v2, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    if-nez v2, :cond_a7

    .line 306
    const-string v2, "color_mode"

    const-string v3, "mono"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    :goto_83
    iget v2, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    if-ne v2, v6, :cond_af

    .line 314
    const-string v2, "duplex_mode"

    const-string v3, "duplex_short"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    :goto_8e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_b

    .line 297
    :cond_93
    iget v2, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v2, v5, :cond_9f

    .line 298
    const-string v2, "paper_orientation"

    const-string v3, "landscape"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 301
    :cond_9f
    const-string v2, "paper_orientation"

    const-string v3, "portrait"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 309
    :cond_a7
    const-string v2, "color_mode"

    const-string v3, "color"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_83

    .line 316
    :cond_af
    iget v2, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    if-ne v2, v5, :cond_bb

    .line 317
    const-string v2, "duplex_mode"

    const-string v3, "duplex_long"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8e

    .line 320
    :cond_bb
    const-string v2, "duplex_mode"

    const-string v3, "simplex"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8e
.end method

.method public savePrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 8
    .parameter "printer"

    .prologue
    const/4 v5, 0x0

    .line 111
    if-nez p1, :cond_b

    .line 112
    const-string v3, "MobilePrint"

    const-string v4, "MPrintSettingManager : savePrinterInfo() - printer is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_a
    :goto_a
    return-void

    .line 119
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v4, "Printer_device"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 120
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v3, "device"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v3, "model_name"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v3, "connect_type"

    iget v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v3, "ip_address"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v3, "port_number"

    iget v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v3, "duplex_model"

    iget v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v3, "color_model"

    iget v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    if-eqz v3, :cond_99

    .line 132
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v4, "Printer_language"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 133
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v3, "number_of_language"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6d
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_96

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 139
    :cond_96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    .end local v1           #i:I
    :cond_99
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_e4

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v4, "Paper_type"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v3, "number_of_paper_type"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b8
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e1

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 150
    :cond_e1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    .end local v1           #i:I
    :cond_e4
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    if-eqz v3, :cond_a

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v4, "Paper_size"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v3, "number_of_paper_size"

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v4, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_100
    iget-object v3, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_15c

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    .line 163
    :cond_15c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a
.end method

.method public saveRestrictAlertInfo(Z)V
    .registers 7
    .parameter "neverShowAgain"

    .prologue
    .line 57
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->mAppContext:Landroid/content/Context;

    const-string v3, "Restrict_alert"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v2, "never_show_again"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method
