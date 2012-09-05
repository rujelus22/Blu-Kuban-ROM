.class public Lcom/sec/android/widgetapp/stockclock/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final mReservedCharacter:[[Ljava/lang/String;

.field public static prefs:Landroid/content/SharedPreferences;

.field static sdf:Ljava/text/SimpleDateFormat;

.field static sdfScroll:Ljava/text/SimpleDateFormat;

.field static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&quot;"

    aput-object v2, v1, v4

    const-string v2, "\""

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&apos;"

    aput-object v2, v1, v4

    const-string v2, "\'"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&amp;"

    aput-object v2, v1, v4

    const-string v2, "&"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "&lt;"

    aput-object v3, v2, v4

    const-string v3, "<"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "&gt;"

    aput-object v3, v2, v4

    const-string v3, ">"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->mReservedCharacter:[[Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckChar(Ljava/lang/String;)V
    .registers 5
    .parameter "temp"

    .prologue
    .line 862
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 864
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, str:Ljava/lang/String;
    :try_start_f
    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 862
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    :cond_22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 872
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_29

    goto :goto_1f

    .line 876
    :catch_29
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    .line 882
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #str:Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method public static NumberUtil(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"

    .prologue
    .line 838
    move-object v0, p0

    .line 839
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    return-object v0
.end method

.method public static ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1278
    const-string v0, ""

    .line 1279
    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1280
    :cond_c
    const-string v0, ""

    .line 1305
    :goto_e
    return-object v0

    .line 1282
    :cond_f
    if-eqz p1, :cond_4a

    .line 1284
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    const-string v1, "\r"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    const-string v1, "\n"

    const-string v2, "<p>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1295
    :cond_4a
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    const-string v1, "<br>"

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    const-string v1, "<p>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static US_Format(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 852
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v1, 0x0

    .line 855
    .local v1, temp:Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->CheckChar(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public static VolumeUtil(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"

    .prologue
    .line 845
    move-object v0, p0

    .line 846
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    return-object v0
.end method

.method public static buildEmptyStockItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .registers 7
    .parameter "name"
    .parameter "symbol"
    .parameter "exchange"
    .parameter "context"

    .prologue
    const v2, 0x7f090050

    .line 1231
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1232
    .local v0, emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    invoke-virtual {v0, p0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1238
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLinkUrl(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 1243
    return-object v0
.end method

.method public static changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "text"
    .parameter "context"

    .prologue
    .line 727
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 728
    .local v2, format:Ljava/text/NumberFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.0000"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v3, 0x0

    .line 731
    .local v3, returnValue:Ljava/lang/String;
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_16

    .line 733
    :cond_14
    const/4 v4, 0x0

    .line 770
    :goto_15
    return-object v4

    .line 737
    :cond_16
    const/16 v4, 0x2e

    :try_start_18
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_38

    .line 739
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 740
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_36

    .line 742
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_36
    move-object v4, v3

    .line 744
    goto :goto_15

    .line 748
    :cond_38
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 750
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 751
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_58

    .line 753
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_58
    :goto_58
    move-object v4, v3

    .line 764
    goto :goto_15

    .line 758
    :cond_5a
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 759
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_58

    .line 761
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_71} :catch_73

    move-result-object v3

    goto :goto_58

    .line 767
    :catch_73
    move-exception v1

    .line 769
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 770
    goto :goto_15
.end method

.method public static changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "text"
    .parameter "context"

    .prologue
    .line 939
    const-string v3, "100000000.0000"

    .line 940
    .local v3, mUS_number:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->US_Format(Ljava/lang/String;)V

    .line 942
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 943
    .local v2, format:Ljava/text/NumberFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#,##0.00"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v4, 0x0

    .line 946
    .local v4, returnValue:Ljava/lang/String;
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1b

    .line 948
    :cond_19
    const/4 v5, 0x0

    .line 985
    :goto_1a
    return-object v5

    .line 952
    :cond_1b
    const/16 v5, 0x2e

    :try_start_1d
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_3d

    .line 954
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 955
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_3b

    .line 957
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3b
    move-object v5, v4

    .line 959
    goto :goto_1a

    .line 963
    :cond_3d
    const-string v5, "0"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 965
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 966
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_55

    .line 968
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_55
    :goto_55
    move-object v5, v4

    .line 979
    goto :goto_1a

    .line 973
    :cond_57
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 974
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_55

    .line 976
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_66} :catch_68

    move-result-object v4

    goto :goto_55

    .line 982
    :catch_68
    move-exception v1

    .line 984
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 985
    goto :goto_1a
.end method

.method public static changePercentFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "text"
    .parameter "context"

    .prologue
    .line 1181
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 1182
    .local v2, format:Ljava/text/NumberFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v3, 0x0

    .line 1185
    .local v3, returnValue:Ljava/lang/String;
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_16

    .line 1187
    :cond_14
    const/4 v4, 0x0

    .line 1224
    :goto_15
    return-object v4

    .line 1191
    :cond_16
    const/16 v4, 0x2e

    :try_start_18
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_40

    .line 1193
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 1194
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_3e

    .line 1196
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3e
    move-object v4, v3

    .line 1198
    goto :goto_15

    .line 1202
    :cond_40
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1204
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 1205
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_68

    .line 1207
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_68
    :goto_68
    move-object v4, v3

    .line 1218
    goto :goto_15

    .line 1212
    :cond_6a
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 1213
    sget-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v4, :cond_68

    .line 1215
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->NumberUtil(Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_89} :catch_8b

    move-result-object v3

    goto :goto_68

    .line 1221
    :catch_8b
    move-exception v1

    .line 1223
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1224
    goto/16 :goto_15
.end method

.method public static changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "text"
    .parameter "context"

    .prologue
    .line 886
    const-string v3, "100000000.0000"

    .line 887
    .local v3, mUS_number:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->US_Format(Ljava/lang/String;)V

    .line 889
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 890
    .local v2, format:Ljava/text/NumberFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v4, 0x0

    .line 893
    .local v4, returnValue:Ljava/lang/String;
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1b

    .line 895
    :cond_19
    const/4 v5, 0x0

    .line 932
    :goto_1a
    return-object v5

    .line 899
    :cond_1b
    const/16 v5, 0x2e

    :try_start_1d
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_3d

    .line 901
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 902
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_3b

    .line 904
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->VolumeUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3b
    move-object v5, v4

    .line 906
    goto :goto_1a

    .line 910
    :cond_3d
    const-string v5, "0"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 912
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 913
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_5d

    .line 915
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->VolumeUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5d
    :goto_5d
    move-object v5, v4

    .line 926
    goto :goto_1a

    .line 920
    :cond_5f
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 921
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    if-nez v5, :cond_5d

    .line 923
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->VolumeUtil(Ljava/lang/String;)Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_76} :catch_78

    move-result-object v4

    goto :goto_5d

    .line 929
    :catch_78
    move-exception v1

    .line 931
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 932
    goto :goto_1a
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 177
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 178
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 179
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 182
    .local v1, isMobileAvail:Z
    if-nez v2, :cond_1e

    if-eqz v1, :cond_1f

    :cond_1e
    move v4, v5

    :cond_1f
    return v4
.end method

.method public static getAutorefreshSetting(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 297
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 298
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "refresh_interval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoscrollSetting(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 369
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 370
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "scroll_interval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1329
    .line 1330
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1331
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    return-object v0
.end method

.method public static getDateStringShort2x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 481
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 483
    .local v9, timestamp:Ljava/lang/Long;
    if-eqz v9, :cond_6b

    .line 484
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 485
    .local v3, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 486
    .local v8, timeformat:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 487
    .local v6, now:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, date:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, current:Ljava/lang/String;
    const/4 v7, 0x0

    .line 491
    .local v7, result:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 493
    .local v5, index:I
    if-nez v5, :cond_4d

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 509
    :goto_42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 510
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 520
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #dateformat:Ljava/text/DateFormat;
    .end local v5           #index:I
    .end local v6           #now:Ljava/util/Date;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #timeformat:Ljava/text/DateFormat;
    .end local v9           #timestamp:Ljava/lang/Long;
    :cond_4c
    :goto_4c
    return-object v7

    .line 497
    .restart local v0       #Year:Ljava/lang/String;
    .restart local v1       #current:Ljava/lang/String;
    .restart local v2       #date:Ljava/lang/String;
    .restart local v3       #dateformat:Ljava/text/DateFormat;
    .restart local v5       #index:I
    .restart local v6       #now:Ljava/util/Date;
    .restart local v7       #result:Ljava/lang/String;
    .restart local v8       #timeformat:Ljava/text/DateFormat;
    .restart local v9       #timestamp:Ljava/lang/Long;
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    if-ne v5, v10, :cond_60

    .line 499
    const/4 v10, 0x0

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 501
    :cond_60
    const/4 v10, -0x1

    if-ne v5, v10, :cond_65

    .line 503
    move-object v7, v2

    goto :goto_42

    .line 507
    :cond_65
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 516
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #dateformat:Ljava/text/DateFormat;
    .end local v5           #index:I
    .end local v6           #now:Ljava/util/Date;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #timeformat:Ljava/text/DateFormat;
    :cond_6b
    const-string v7, ""
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_4c

    .line 519
    .end local v9           #timestamp:Ljava/lang/Long;
    :catch_6e
    move-exception v4

    .line 520
    .local v4, ex:Ljava/lang/Exception;
    const-string v7, ""

    goto :goto_4c
.end method

.method public static getDateStringShort4x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 526
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 536
    .local v8, timestamp:Ljava/lang/Long;
    if-eqz v8, :cond_70

    .line 537
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 538
    .local v2, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 539
    .local v7, timeformat:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 540
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v9

    add-int/lit16 v9, v9, 0x76c

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, date:Ljava/lang/String;
    const/4 v6, 0x0

    .line 543
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 545
    .local v4, index:I
    if-nez v4, :cond_52

    .line 547
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 561
    :goto_36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 569
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #dateformat:Ljava/text/DateFormat;
    .end local v4           #index:I
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #timeformat:Ljava/text/DateFormat;
    .end local v8           #timestamp:Ljava/lang/Long;
    :goto_51
    return-object v9

    .line 549
    .restart local v0       #Year:Ljava/lang/String;
    .restart local v1       #date:Ljava/lang/String;
    .restart local v2       #dateformat:Ljava/text/DateFormat;
    .restart local v4       #index:I
    .restart local v5       #now:Ljava/util/Date;
    .restart local v6       #result:Ljava/lang/String;
    .restart local v7       #timeformat:Ljava/text/DateFormat;
    .restart local v8       #timestamp:Ljava/lang/Long;
    :cond_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-ne v4, v9, :cond_65

    .line 551
    const/4 v9, 0x0

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 553
    :cond_65
    const/4 v9, -0x1

    if-ne v4, v9, :cond_6a

    .line 555
    move-object v6, v1

    goto :goto_36

    .line 559
    :cond_6a
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 565
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #dateformat:Ljava/text/DateFormat;
    .end local v4           #index:I
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #timeformat:Ljava/text/DateFormat;
    :cond_70
    const-string v9, ""
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_51

    .line 568
    .end local v8           #timestamp:Ljava/lang/Long;
    :catch_73
    move-exception v3

    .line 569
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, ""

    goto :goto_51
.end method

.method private static getInterval(I)J
    .registers 3
    .parameter "refreshsetting"

    .prologue
    .line 214
    packed-switch p0, :pswitch_data_12

    .line 223
    const-wide/16 v0, -0x1

    :goto_5
    return-wide v0

    .line 217
    :pswitch_6
    const-wide/32 v0, 0x1b7740

    goto :goto_5

    .line 219
    :pswitch_a
    const-wide/32 v0, 0x36ee80

    goto :goto_5

    .line 221
    :pswitch_e
    const-wide/32 v0, 0xa4cb80

    goto :goto_5

    .line 214
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method private static getIntervalScroll(I)J
    .registers 3
    .parameter "refreshsetting"

    .prologue
    .line 344
    packed-switch p0, :pswitch_data_c

    .line 351
    const-wide/16 v0, -0x1

    :goto_5
    return-wide v0

    .line 347
    :pswitch_6
    const-wide/16 v0, 0x1388

    goto :goto_5

    .line 349
    :pswitch_9
    const-wide/16 v0, 0x2710

    goto :goto_5

    .line 344
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static getLandscape(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_e

    .line 1268
    const/4 v0, 0x0

    .line 1272
    :cond_e
    return v0
.end method

.method public static getLastAutoRefreshUpdateTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 285
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 286
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_autorefresh_updatetime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 270
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 271
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastTimeScroll(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 357
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 358
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "scroll"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextTime(Landroid/content/Context;ZZ)J
    .registers 15
    .parameter "context"
    .parameter "forceSet"
    .parameter "need_refresh"

    .prologue
    const/4 v9, 0x1

    .line 228
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    sput-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 229
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v1

    .line 230
    .local v1, lasttime:J
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v0

    .line 231
    .local v0, interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 232
    .local v5, now:J
    const-wide/16 v3, 0x0

    .line 234
    .local v3, next:J
    if-eqz p1, :cond_5f

    .line 236
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 237
    .local v7, tmp:Landroid/text/format/Time;
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 238
    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 239
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getInterval(I)J

    move-result-wide v10

    add-long v3, v8, v10

    .line 240
    sget-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "refresh"

    invoke-interface {v8, v9, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SettingMenu - select time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v7           #tmp:Landroid/text/format/Time;
    :cond_5e
    :goto_5e
    return-wide v3

    .line 245
    :cond_5f
    if-ne p2, v9, :cond_68

    .line 247
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long v3, v5, v8

    goto :goto_5e

    .line 250
    :cond_68
    move-wide v3, v1

    .line 252
    :goto_69
    cmp-long v8, v3, v5

    if-gtz v8, :cond_5e

    .line 253
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_69
.end method

.method public static getNextTimeScroll(Landroid/content/Context;ZZ)J
    .registers 15
    .parameter "context"
    .parameter "forceSet"
    .parameter "need_refresh"

    .prologue
    const/4 v10, 0x1

    .line 306
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yy/MM/dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdfScroll:Ljava/text/SimpleDateFormat;

    .line 307
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    sput-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 308
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLastTimeScroll(Landroid/content/Context;)J

    move-result-wide v1

    .line 309
    .local v1, lasttime:J
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutoscrollSetting(Landroid/content/Context;)I

    move-result v0

    .line 310
    .local v0, interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 311
    .local v5, now:J
    const-wide/16 v3, 0x0

    .line 313
    .local v3, next:J
    if-eqz p1, :cond_6a

    .line 315
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 316
    .local v7, tmp:Landroid/text/format/Time;
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 317
    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 318
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getIntervalScroll(I)J

    move-result-wide v10

    add-long v3, v8, v10

    .line 334
    .end local v7           #tmp:Landroid/text/format/Time;
    :cond_35
    :goto_35
    sget-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "scroll"

    invoke-interface {v8, v9, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    if-eqz p1, :cond_7e

    .line 336
    const-string v8, "@@@"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "util getnext by config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdfScroll:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_69
    return-wide v3

    .line 322
    :cond_6a
    if-ne p2, v10, :cond_73

    .line 324
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getIntervalScroll(I)J

    move-result-wide v8

    add-long v3, v5, v8

    goto :goto_35

    .line 327
    :cond_73
    move-wide v3, v1

    .line 329
    :goto_74
    cmp-long v8, v3, v5

    if-gtz v8, :cond_35

    .line 330
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getIntervalScroll(I)J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_74

    .line 338
    :cond_7e
    const-string v8, "@@@"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "util getnext by widget "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdfScroll:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method public static getNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"

    .prologue
    const/16 v6, 0x2e

    const/16 v5, 0x2c

    .line 810
    if-nez p0, :cond_7

    .line 832
    .end local p0
    :goto_6
    return-object p0

    .line 812
    .restart local p0
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 813
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 814
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_39

    .line 816
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 817
    .local v0, curChar:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 818
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 814
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 819
    :cond_23
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2d

    .line 821
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 823
    :cond_2d
    if-eq v0, v5, :cond_31

    if-ne v0, v6, :cond_35

    .line 825
    :cond_31
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 829
    :cond_35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 832
    .end local v0           #curChar:C
    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 376
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemResolution(Landroid/content/Context;)I
    .registers 9
    .parameter

    .prologue
    const v2, 0xfa000

    const v4, 0xe1000

    const v1, 0x25800

    const v3, 0x12c00

    .line 1337
    const/4 v5, -0x1

    .line 1340
    :try_start_d
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1342
    if-eqz v0, :cond_5f

    .line 1344
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    if-ne v6, v1, :cond_28

    move v0, v1

    .line 1368
    :goto_27
    return v0

    .line 1348
    :cond_28
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/2addr v1, v6

    if-ne v1, v2, :cond_35

    move v0, v2

    .line 1350
    goto :goto_27

    .line 1352
    :cond_35
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ne v1, v3, :cond_42

    move v0, v3

    .line 1354
    goto :goto_27

    .line 1356
    :cond_42
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ne v1, v3, :cond_4f

    move v0, v3

    .line 1358
    goto :goto_27

    .line 1360
    :cond_4f
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_56} :catch_5c

    move-result v0

    mul-int/2addr v0, v1

    if-ne v0, v4, :cond_5f

    move v0, v4

    .line 1362
    goto :goto_27

    .line 1365
    :catch_5c
    move-exception v0

    move v0, v5

    goto :goto_27

    :cond_5f
    move v0, v5

    goto :goto_27
.end method

.method public static getTextSize(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "textLength"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, textSize:I
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v3, 0xfa000

    if-eq v2, v3, :cond_13

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v3, 0xe1000

    if-ne v2, v3, :cond_24

    .line 104
    :cond_13
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 106
    const/16 v2, 0xe

    if-lt p1, v2, :cond_21

    .line 107
    const/16 v0, 0x25

    :cond_1f
    :goto_1f
    move v1, v0

    .line 135
    .end local v0           #textSize:I
    .local v1, textSize:I
    :goto_20
    return v1

    .line 111
    .end local v1           #textSize:I
    .restart local v0       #textSize:I
    :cond_21
    const/16 v0, 0x2e

    goto :goto_1f

    .line 115
    :cond_24
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v3, 0x12c00

    if-ne v2, v3, :cond_2f

    move v1, v0

    .line 117
    .end local v0           #textSize:I
    .restart local v1       #textSize:I
    goto :goto_20

    .line 121
    .end local v1           #textSize:I
    .restart local v0       #textSize:I
    :cond_2f
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 123
    const/16 v2, 0x9

    if-gt p1, v2, :cond_3c

    .line 124
    const/16 v0, 0x24

    goto :goto_1f

    .line 128
    :cond_3c
    const/16 v0, 0x1c

    goto :goto_1f
.end method

.method public static getTimestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 388
    .local v1, timeValue:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, timeStamp:Ljava/lang/String;
    return-object v0
.end method

.method public static getUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1430
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1431
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_36

    .line 1434
    const/4 v0, 0x2

    :try_start_18
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    .line 1435
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_30

    move-result-object v0

    .line 1437
    const/4 v2, 0x0

    :try_start_2c
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1440
    :goto_2f
    return-object v0

    .line 1437
    :catchall_30
    move-exception v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_36

    .line 1439
    :catch_36
    move-exception v0

    .line 1440
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public static isFirstRunning(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 1310
    const-string v0, "STOCK_CLOCK_PREF_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "STOCK_FIRST_RUNNING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWifiConnecting(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    :try_start_2
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_d

    .line 170
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    :cond_c
    :goto_c
    return v5

    .line 152
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 153
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_c

    .line 155
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 156
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 158
    .local v4, st:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_c

    .line 162
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_2c

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_2c

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2e

    if-ne v4, v7, :cond_c

    :cond_2c
    move v5, v6

    goto :goto_c

    .line 165
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #st:Landroid/net/NetworkInfo$State;
    :catch_2e
    move-exception v2

    .line 167
    .local v2, e:Ljava/lang/Exception;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Util.isWifiConnecting() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .registers 6
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 1399
    if-nez p0, :cond_4

    .line 1423
    :goto_3
    return-void

    .line 1402
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    move-object v1, p0

    .line 1405
    check-cast v1, Landroid/view/ViewGroup;

    .line 1406
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1407
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v0, :cond_1f

    .line 1408
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 1407
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1411
    :cond_1f
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_26

    .line 1412
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1417
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_26
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_2f

    .line 1418
    check-cast p0, Landroid/widget/ImageView;

    .end local p0
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1421
    :cond_2f
    const/4 p0, 0x0

    .line 1423
    .restart local p0
    goto :goto_3
.end method

.method public static removeHTMLTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "text"

    .prologue
    .line 665
    const-string v5, "<name>"

    .line 666
    .local v5, startNameTag:Ljava/lang/String;
    const-string v2, "</name>"

    .line 667
    .local v2, endNameTag:Ljava/lang/String;
    const-string v4, "<name><![CDATA["

    .line 668
    .local v4, startNameNCdataTag:Ljava/lang/String;
    const-string v1, "]]></name>"

    .line 669
    .local v1, endNameNCdataTag:Ljava/lang/String;
    const-string v3, "<![CDATA["

    .line 671
    .local v3, startCdataTag:Ljava/lang/String;
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_14

    .line 673
    :cond_12
    const/4 p0, 0x0

    .line 689
    .end local p0
    :cond_13
    :goto_13
    return-object p0

    .line 675
    .restart local p0
    :cond_14
    invoke-virtual {v3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_13

    .line 679
    move-object v0, p0

    .line 681
    .local v0, dest:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, tmp_i:I
    :goto_1c
    sget-object v7, Lcom/sec/android/widgetapp/stockclock/common/Util;->mReservedCharacter:[[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_36

    .line 683
    sget-object v7, Lcom/sec/android/widgetapp/stockclock/common/Util;->mReservedCharacter:[[Ljava/lang/String;

    aget-object v7, v7, v6

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Lcom/sec/android/widgetapp/stockclock/common/Util;->mReservedCharacter:[[Ljava/lang/String;

    aget-object v8, v8, v6

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 686
    :cond_36
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 689
    goto :goto_13
.end method

.method public static replaceLatinHTMLTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "text"

    .prologue
    .line 696
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_a

    .line 698
    :cond_8
    const/4 v2, 0x0

    .line 718
    :goto_9
    return-object v2

    .line 701
    :cond_a
    move-object v2, p1

    .line 703
    .local v2, dest:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, array1:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, array2:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_22
    array-length v5, v0

    if-ge v3, v5, :cond_45

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 712
    :cond_45
    const/4 v4, 0x0

    .local v4, tmp_i:I
    :goto_46
    array-length v5, v0

    if-ge v4, v5, :cond_54

    .line 714
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 716
    :cond_54
    const-string v5, "&#192;"

    const-string v6, "?"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    goto :goto_9
.end method

.method public static setAutorefreshSetting(Landroid/content/Context;I)Z
    .registers 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 291
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 292
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setAutoscrollSetting(Landroid/content/Context;I)Z
    .registers 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 363
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 364
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scroll_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1325
    const-string v0, "STOCK_CLOCK_PREF_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STOCK_CLOCK_CURRENT_SYMBOL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1326
    return-void
.end method

.method public static setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4120

    .line 1372
    const v0, 0x25800

    invoke-static {p3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_24

    if-eqz p1, :cond_24

    .line 1374
    if-eqz p0, :cond_50

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_50

    .line 1376
    if-eqz p2, :cond_25

    .line 1377
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1395
    :cond_24
    :goto_24
    return-void

    .line 1379
    :cond_25
    invoke-static {p3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    const v0, 0x7f0b00fb

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_46

    const v0, 0x7f0b00fc

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_46

    const v0, 0x7f0b0118

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 1382
    :cond_46
    const/high16 v0, 0x4130

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_24

    .line 1386
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_24

    .line 1392
    :cond_50
    const/high16 v0, 0x4140

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_24
.end method

.method public static setLastTime(Landroid/content/Context;J)Z
    .registers 7
    .parameter "context"
    .parameter "nexttime"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 278
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n >> Set next auto refresh time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/common/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_autorefresh_updatetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static simEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 139
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 140
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static textWidthOverMaxWidth(Landroid/content/Context;Ljava/lang/String;FF)Z
    .registers 11
    .parameter "context"
    .parameter "text"
    .parameter "textSize"
    .parameter "maxWidth"

    .prologue
    const/4 v6, 0x0

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, result:Z
    if-nez p0, :cond_6

    move v2, v1

    .line 95
    .end local v1           #result:Z
    .local v2, result:I
    :goto_5
    return v2

    .line 65
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_6
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, dummyTextView:Landroid/widget/TextView;
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 87
    .local v3, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v4

    .line 90
    .local v4, textWidth:F
    cmpl-float v5, v4, p3

    if-lez v5, :cond_24

    .line 92
    const/4 v1, 0x1

    :cond_24
    move v2, v1

    .line 95
    .restart local v2       #result:I
    goto :goto_5
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "string"

    .prologue
    .line 397
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 398
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    .line 404
    :goto_b
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    return-void

    .line 401
    :cond_11
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 402
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "string"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 409
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_18

    .line 410
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    .line 416
    :goto_b
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    if-eqz p2, :cond_17

    .line 419
    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :cond_17
    return-void

    .line 413
    :cond_18
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 414
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public static updateFirstRunning(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1315
    const-string v0, "STOCK_CLOCK_PREF_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STOCK_FIRST_RUNNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    return-void
.end method
