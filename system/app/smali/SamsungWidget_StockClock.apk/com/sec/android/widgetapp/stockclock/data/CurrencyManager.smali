.class public Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;
.super Ljava/lang/Object;
.source "CurrencyManager.java"


# static fields
.field private static m_Instence:Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;


# instance fields
.field private mCountryName:[Ljava/lang/String;

.field private mOrderCountryName:[Ljava/lang/String;

.field private mSaveCountry:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KRW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->m_Instence:Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->m_Instence:Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    .line 34
    :cond_b
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->m_Instence:Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    return-object v0
.end method


# virtual methods
.method public getSelectedCountry(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->loadSelectCountry(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;

    return-object v0
.end method

.method public loadArrayByFile(Landroid/content/Context;)[Ljava/lang/String;
    .registers 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v7, 0x0

    .line 121
    .local v7, fileDir:Ljava/io/File;
    const/4 v2, 0x0

    .line 122
    .local v2, currencyData:Ljava/io/File;
    const/4 v5, 0x0

    .line 123
    .local v5, fi:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 126
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 127
    new-instance v3, Ljava/io/File;

    const-string v11, "currency.dat"

    invoke-direct {v3, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_70
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_7a

    .line 128
    .end local v2           #currencyData:Ljava/io/File;
    .local v3, currencyData:Ljava/io/File;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_18

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_18
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_ba

    .line 133
    .end local v5           #fi:Ljava/io/FileInputStream;
    .local v6, fi:Ljava/io/FileInputStream;
    :try_start_1d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_bd

    .line 135
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 136
    .local v10, strLine:Ljava/lang/String;
    const/4 v8, 0x0

    .line 137
    .local v8, i:I
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 138
    :goto_2d
    if-eqz v10, :cond_3a

    .line 140
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    aput-object v10, v11, v8

    .line 141
    add-int/lit8 v8, v8, 0x1

    .line 142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_2d

    .line 144
    :cond_3a
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_50

    .line 146
    const/4 v9, 0x0

    .local v9, j:I
    :goto_40
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    array-length v11, v11

    if-ge v9, v11, :cond_50

    .line 148
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    aget-object v12, v12, v9

    aput-object v12, v11, v9

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 151
    .end local v9           #j:I
    :cond_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catchall {:try_start_29 .. :try_end_56} :catchall_b5
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_56} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_56} :catch_c1

    .line 170
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 171
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_63

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    :goto_5e
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 184
    .end local v6           #fi:Ljava/io/FileInputStream;
    .end local v8           #i:I
    .end local v10           #strLine:Ljava/lang/String;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    :goto_60
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    return-object v11

    .line 173
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #i:I
    .restart local v10       #strLine:Ljava/lang/String;
    :catch_63
    move-exception v4

    .line 175
    .local v4, e:Ljava/io/IOException;
    :try_start_64
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6a

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5e

    .line 179
    .end local v2           #currencyData:Ljava/io/File;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_6a
    move-exception v11

    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    throw v11

    .line 154
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .end local v8           #i:I
    .end local v10           #strLine:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    :catch_6e
    move-exception v4

    .line 156
    .restart local v4       #e:Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    throw v4
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 168
    .end local v4           #e:Ljava/io/IOException;
    :catchall_70
    move-exception v11

    .line 170
    :goto_71
    :try_start_71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_a3

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    :goto_79
    throw v11

    .line 158
    :catch_7a
    move-exception v4

    .line 160
    .local v4, e:Ljava/lang/Exception;
    :goto_7b
    :try_start_7b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_7f
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    array-length v11, v11

    if-ge v9, v11, :cond_8f

    .line 163
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mOrderCountryName:[Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    aget-object v12, v12, v9

    aput-object v12, v11, v9
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_70

    .line 161
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 170
    :cond_8f
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_95} :catch_98

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    goto :goto_60

    .line 173
    :catch_98
    move-exception v4

    .line 175
    .local v4, e:Ljava/io/IOException;
    :try_start_99
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9f

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    goto :goto_60

    .line 179
    .end local v4           #e:Ljava/io/IOException;
    :catchall_9f
    move-exception v11

    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    throw v11

    .line 173
    .end local v9           #j:I
    :catch_a3
    move-exception v4

    .line 175
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_aa

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    goto :goto_79

    .line 179
    .end local v4           #e:Ljava/io/IOException;
    :catchall_aa
    move-exception v11

    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x0

    throw v11

    .line 168
    .end local v2           #currencyData:Ljava/io/File;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_ae
    move-exception v11

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_71

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catchall_b1
    move-exception v11

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_71

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #i:I
    .restart local v10       #strLine:Ljava/lang/String;
    :catchall_b5
    move-exception v11

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_71

    .line 158
    .end local v2           #currencyData:Ljava/io/File;
    .end local v8           #i:I
    .end local v10           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_ba
    move-exception v4

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_7b

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catch_bd
    move-exception v4

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_7b

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #i:I
    .restart local v10       #strLine:Ljava/lang/String;
    :catch_c1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_7b

    .line 154
    .end local v2           #currencyData:Ljava/io/File;
    .end local v8           #i:I
    .end local v10           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_c6
    move-exception v4

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_6f

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catch_c9
    move-exception v4

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_6f

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #i:I
    .restart local v10       #strLine:Ljava/lang/String;
    :catch_cd
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_6f
.end method

.method public loadArrayListByFile(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 16
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-direct {v4, p1}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;-><init>(Landroid/content/Context;)V

    .line 45
    .local v4, dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v11, stockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    const/4 v8, 0x0

    .line 47
    .local v8, fileDir:Ljava/io/File;
    const/4 v2, 0x0

    .line 48
    .local v2, currencyData:Ljava/io/File;
    const/4 v6, 0x0

    .line 49
    .local v6, fi:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 52
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    .line 53
    new-instance v3, Ljava/io/File;

    const-string v13, "currency.dat"

    invoke-direct {v3, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_96

    .line 54
    .end local v2           #currencyData:Ljava/io/File;
    .local v3, currencyData:Ljava/io/File;
    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v13

    if-nez v13, :cond_22

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 58
    :cond_22
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_de

    .line 59
    .end local v6           #fi:Ljava/io/FileInputStream;
    .local v7, fi:Ljava/io/FileInputStream;
    :try_start_27
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_d5
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_e1

    .line 61
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 62
    .local v12, strLine:Ljava/lang/String;
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 63
    :goto_36
    if-eqz v12, :cond_55

    .line 65
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 66
    .local v10, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    invoke-virtual {v4, v12}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->selectCountry(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    move-result-object v10

    .line 67
    invoke-virtual {v10}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getFirstItem()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_50

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_50

    .line 69
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 72
    goto :goto_36

    .line 73
    .end local v10           #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :cond_55
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_74

    .line 75
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5c
    iget-object v13, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    array-length v13, v13

    if-ge v9, v13, :cond_74

    .line 77
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 78
    .restart local v10       #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    iget-object v13, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v4, v13}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->selectCountry(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    move-result-object v10

    .line 79
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catchall {:try_start_32 .. :try_end_71} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_71} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_71} :catch_e5

    .line 75
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 101
    .end local v9           #i:I
    .end local v10           #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :cond_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 102
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_86
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7f

    .line 110
    const/4 v2, 0x0

    .line 111
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v8, 0x0

    :goto_7c
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 115
    .end local v7           #fi:Ljava/io/FileInputStream;
    .end local v12           #strLine:Ljava/lang/String;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :goto_7e
    return-object v11

    .line 104
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    .restart local v12       #strLine:Ljava/lang/String;
    :catch_7f
    move-exception v5

    .line 106
    .local v5, e:Ljava/io/IOException;
    :try_start_80
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_86

    .line 110
    const/4 v2, 0x0

    .line 111
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v8, 0x0

    .line 112
    goto :goto_7c

    .line 110
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_86
    move-exception v13

    const/4 v2, 0x0

    .line 111
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v8, 0x0

    throw v13

    .line 83
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v7           #fi:Ljava/io/FileInputStream;
    .end local v12           #strLine:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catch_8a
    move-exception v5

    .line 85
    .restart local v5       #e:Ljava/io/IOException;
    :goto_8b
    :try_start_8b
    throw v5
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 99
    .end local v5           #e:Ljava/io/IOException;
    :catchall_8c
    move-exception v13

    .line 101
    :goto_8d
    :try_start_8d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 102
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_c7

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    :goto_95
    throw v13

    .line 87
    :catch_96
    move-exception v5

    .line 89
    .local v5, e:Ljava/lang/Exception;
    :goto_97
    :try_start_97
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_9b
    iget-object v13, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    array-length v13, v13

    if-ge v9, v13, :cond_b3

    .line 92
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 93
    .restart local v10       #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    iget-object v13, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v4, v13}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->selectCountry(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    move-result-object v10

    .line 94
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_8c

    .line 90
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    .line 101
    .end local v10           #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :cond_b3
    :try_start_b3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 102
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_c3
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b9} :catch_bc

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    goto :goto_7e

    .line 104
    :catch_bc
    move-exception v5

    .line 106
    .local v5, e:Ljava/io/IOException;
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c3

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    goto :goto_7e

    .line 110
    .end local v5           #e:Ljava/io/IOException;
    :catchall_c3
    move-exception v13

    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    throw v13

    .line 104
    .end local v9           #i:I
    :catch_c7
    move-exception v5

    .line 106
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_c8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_ce

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    goto :goto_95

    .line 110
    .end local v5           #e:Ljava/io/IOException;
    :catchall_ce
    move-exception v13

    const/4 v2, 0x0

    .line 111
    const/4 v8, 0x0

    throw v13

    .line 99
    .end local v2           #currencyData:Ljava/io/File;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_d2
    move-exception v13

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8d

    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    :catchall_d5
    move-exception v13

    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8d

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    .restart local v12       #strLine:Ljava/lang/String;
    :catchall_d9
    move-exception v13

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8d

    .line 87
    .end local v2           #currencyData:Ljava/io/File;
    .end local v12           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_de
    move-exception v5

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_97

    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    :catch_e1
    move-exception v5

    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_97

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    .restart local v12       #strLine:Ljava/lang/String;
    :catch_e5
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_97

    .line 83
    .end local v2           #currencyData:Ljava/io/File;
    .end local v12           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_ea
    move-exception v5

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8b

    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    :catch_ed
    move-exception v5

    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8b

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v7       #fi:Ljava/io/FileInputStream;
    .restart local v12       #strLine:Ljava/lang/String;
    :catch_f1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fi:Ljava/io/FileInputStream;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_8b
.end method

.method public loadSelectCountry(Landroid/content/Context;)V
    .registers 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v7, 0x0

    .line 270
    .local v7, fileDir:Ljava/io/File;
    const/4 v2, 0x0

    .line 271
    .local v2, currencyData:Ljava/io/File;
    const/4 v5, 0x0

    .line 272
    .local v5, fi:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 276
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 277
    new-instance v3, Ljava/io/File;

    const-string v9, "selcountry.dat"

    invoke-direct {v3, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_66

    .line 278
    .end local v2           #currencyData:Ljava/io/File;
    .local v3, currencyData:Ljava/io/File;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_18

    .line 280
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 282
    :cond_18
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_90
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_9c

    .line 283
    .end local v5           #fi:Ljava/io/FileInputStream;
    .local v6, fi:Ljava/io/FileInputStream;
    :try_start_1d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_93
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_9f

    .line 285
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 286
    .local v8, strLine:Ljava/lang/String;
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 287
    if-eqz v8, :cond_30

    .line 289
    iput-object v8, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;

    .line 291
    :cond_30
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;

    if-eqz v9, :cond_3d

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_44

    .line 293
    :cond_3d
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_97
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_44} :catch_af
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_44} :catch_a3

    .line 310
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 311
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_56
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_4f

    .line 319
    const/4 v2, 0x0

    .line 320
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v7, 0x0

    :goto_4c
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 323
    .end local v6           #fi:Ljava/io/FileInputStream;
    .end local v8           #strLine:Ljava/lang/String;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    :goto_4e
    return-void

    .line 313
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    :catch_4f
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    :try_start_50
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_56

    .line 319
    const/4 v2, 0x0

    .line 320
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v7, 0x0

    .line 321
    goto :goto_4c

    .line 319
    .end local v2           #currencyData:Ljava/io/File;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_56
    move-exception v9

    const/4 v2, 0x0

    .line 320
    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    const/4 v7, 0x0

    throw v9

    .line 297
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fi:Ljava/io/FileInputStream;
    .end local v8           #strLine:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    :catch_5a
    move-exception v4

    .line 299
    .restart local v4       #e:Ljava/io/IOException;
    :goto_5b
    :try_start_5b
    throw v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 308
    .end local v4           #e:Ljava/io/IOException;
    :catchall_5c
    move-exception v9

    .line 310
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 311
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_85

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    :goto_65
    throw v9

    .line 301
    :catch_66
    move-exception v4

    .line 303
    .local v4, e:Ljava/lang/Exception;
    :goto_67
    :try_start_67
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mCountryName:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->mSaveCountry:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_5c

    .line 310
    :try_start_71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 311
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_7a

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    .line 321
    goto :goto_4e

    .line 313
    :catch_7a
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_81

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    .line 321
    goto :goto_4e

    .line 319
    .end local v4           #e:Ljava/io/IOException;
    :catchall_81
    move-exception v9

    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    throw v9

    .line 313
    :catch_85
    move-exception v4

    .line 315
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_86
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8c

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    .line 321
    goto :goto_65

    .line 319
    .end local v4           #e:Ljava/io/IOException;
    :catchall_8c
    move-exception v9

    const/4 v2, 0x0

    .line 320
    const/4 v7, 0x0

    throw v9

    .line 308
    .end local v2           #currencyData:Ljava/io/File;
    .restart local v3       #currencyData:Ljava/io/File;
    :catchall_90
    move-exception v9

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5d

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catchall_93
    move-exception v9

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5d

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    :catchall_97
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5d

    .line 301
    .end local v2           #currencyData:Ljava/io/File;
    .end local v8           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_9c
    move-exception v4

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_67

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catch_9f
    move-exception v4

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_67

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    :catch_a3
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_67

    .line 297
    .end local v2           #currencyData:Ljava/io/File;
    .end local v8           #strLine:Ljava/lang/String;
    .restart local v3       #currencyData:Ljava/io/File;
    :catch_a8
    move-exception v4

    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5b

    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    :catch_ab
    move-exception v4

    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5b

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #currencyData:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #currencyData:Ljava/io/File;
    .restart local v6       #fi:Ljava/io/FileInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    :catch_af
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fi:Ljava/io/FileInputStream;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #currencyData:Ljava/io/File;
    .restart local v2       #currencyData:Ljava/io/File;
    goto :goto_5b
.end method

.method public saveFile(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, countryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    const/4 v3, 0x0

    .line 190
    .local v3, fileDir:Ljava/io/File;
    const/4 v0, 0x0

    .line 191
    .local v0, currencyData:Ljava/io/File;
    const/4 v4, 0x0

    .line 195
    .local v4, fo:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 196
    new-instance v1, Ljava/io/File;

    const-string v7, "currency.dat"

    invoke-direct {v1, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_54

    .line 197
    .end local v0           #currencyData:Ljava/io/File;
    .local v1, currencyData:Ljava/io/File;
    :try_start_e
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_82

    .line 198
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local v5, fo:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_15
    :try_start_15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_42

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_85

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 212
    :cond_42
    :try_start_42
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_49

    .line 220
    const/4 v0, 0x0

    .line 221
    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    const/4 v3, 0x0

    :goto_47
    move-object v4, v5

    .line 224
    .end local v5           #fo:Ljava/io/FileOutputStream;
    .end local v6           #i:I
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    :goto_48
    return-void

    .line 214
    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    :catch_49
    move-exception v2

    .line 216
    .local v2, e:Ljava/io/IOException;
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_50

    .line 220
    const/4 v0, 0x0

    .line 221
    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    const/4 v3, 0x0

    .line 222
    goto :goto_47

    .line 220
    .end local v0           #currencyData:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #currencyData:Ljava/io/File;
    :catchall_50
    move-exception v7

    const/4 v0, 0x0

    .line 221
    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    const/4 v3, 0x0

    throw v7

    .line 204
    .end local v5           #fo:Ljava/io/FileOutputStream;
    .end local v6           #i:I
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    :catch_54
    move-exception v2

    .line 206
    .local v2, e:Ljava/lang/Exception;
    :goto_55
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_69

    .line 212
    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5e

    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    goto :goto_48

    .line 214
    :catch_5e
    move-exception v2

    .line 216
    .local v2, e:Ljava/io/IOException;
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_65

    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    goto :goto_48

    .line 220
    .end local v2           #e:Ljava/io/IOException;
    :catchall_65
    move-exception v7

    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    throw v7

    .line 210
    :catchall_69
    move-exception v7

    .line 212
    :goto_6a
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_77
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_70

    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    :goto_6f
    throw v7

    .line 214
    :catch_70
    move-exception v2

    .line 216
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_71
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_77

    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    goto :goto_6f

    .line 220
    .end local v2           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v7

    const/4 v0, 0x0

    .line 221
    const/4 v3, 0x0

    throw v7

    .line 210
    .end local v0           #currencyData:Ljava/io/File;
    .restart local v1       #currencyData:Ljava/io/File;
    :catchall_7b
    move-exception v7

    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_6a

    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    :catchall_7e
    move-exception v7

    move-object v4, v5

    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_6a

    .line 204
    .end local v0           #currencyData:Ljava/io/File;
    .end local v6           #i:I
    .restart local v1       #currencyData:Ljava/io/File;
    :catch_82
    move-exception v2

    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_55

    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    :catch_85
    move-exception v2

    move-object v4, v5

    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_55
.end method

.method public saveSelectCountry(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "country"

    .prologue
    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, fileDir:Ljava/io/File;
    const/4 v0, 0x0

    .line 236
    .local v0, currencyData:Ljava/io/File;
    const/4 v4, 0x0

    .line 240
    .local v4, fo:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 241
    new-instance v1, Ljava/io/File;

    const-string v6, "selcountry.dat"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_2d

    .line 242
    .end local v0           #currencyData:Ljava/io/File;
    .local v1, currencyData:Ljava/io/File;
    :try_start_e
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_5b

    .line 243
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local v5, fo:Ljava/io/FileOutputStream;
    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_5e

    .line 253
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_22

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    :goto_20
    move-object v4, v5

    .line 265
    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    :goto_21
    return-void

    .line 255
    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    :catch_22
    move-exception v2

    .line 257
    .local v2, e:Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_29

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .line 263
    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_20

    .line 261
    .end local v0           #currencyData:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #currencyData:Ljava/io/File;
    :catchall_29
    move-exception v6

    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    throw v6

    .line 245
    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v2

    .line 247
    .local v2, e:Ljava/lang/Exception;
    :goto_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_42

    .line 253
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .line 263
    goto :goto_21

    .line 255
    :catch_37
    move-exception v2

    .line 257
    .local v2, e:Ljava/io/IOException;
    :try_start_38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3e

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .line 263
    goto :goto_21

    .line 261
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3e
    move-exception v6

    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    throw v6

    .line 251
    :catchall_42
    move-exception v6

    .line 253
    :goto_43
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_50
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    :goto_48
    throw v6

    .line 255
    :catch_49
    move-exception v2

    .line 257
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_50

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .line 263
    goto :goto_48

    .line 261
    .end local v2           #e:Ljava/io/IOException;
    :catchall_50
    move-exception v6

    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    throw v6

    .line 251
    .end local v0           #currencyData:Ljava/io/File;
    .restart local v1       #currencyData:Ljava/io/File;
    :catchall_54
    move-exception v6

    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_43

    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    :catchall_57
    move-exception v6

    move-object v4, v5

    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_43

    .line 245
    .end local v0           #currencyData:Ljava/io/File;
    .restart local v1       #currencyData:Ljava/io/File;
    :catch_5b
    move-exception v2

    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_2e

    .end local v0           #currencyData:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #currencyData:Ljava/io/File;
    .restart local v5       #fo:Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v2

    move-object v4, v5

    .end local v5           #fo:Ljava/io/FileOutputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #currencyData:Ljava/io/File;
    .restart local v0       #currencyData:Ljava/io/File;
    goto :goto_2e
.end method
