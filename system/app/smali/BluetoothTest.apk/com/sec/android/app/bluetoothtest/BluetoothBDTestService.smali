.class public Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;
.super Landroid/app/Service;
.source "BluetoothBDTestService.java"


# instance fields
.field private bd_address_path:Ljava/lang/String;

.field public mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    return-void
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 290
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_c

    .line 310
    :cond_b
    :goto_b
    return v2

    .line 293
    :cond_c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v4, :cond_31

    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    .local v0, c:C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_34

    .line 293
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 298
    :pswitch_1b
    const/16 v3, 0x30

    if-lt v0, v3, :cond_23

    const/16 v3, 0x39

    if-le v0, v3, :cond_18

    :cond_23
    const/16 v3, 0x41

    if-lt v0, v3, :cond_b

    const/16 v3, 0x46

    if-gt v0, v3, :cond_b

    goto :goto_18

    .line 304
    :pswitch_2c
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_b

    goto :goto_18

    .line 310
    .end local v0           #c:C
    :cond_31
    const/4 v2, 0x1

    goto :goto_b

    .line 295
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method addressFormatter(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "address"

    .prologue
    .line 248
    const/4 v0, 0x2

    .local v0, k:I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    .line 249
    const-string v1, ":"

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 251
    :cond_d
    return-object p1
.end method

.method createBDAddrFileUpdateAddr(Ljava/lang/String;Z)Z
    .registers 13
    .parameter "address"
    .parameter "mWriteSuccess"

    .prologue
    const/4 v7, 0x0

    .line 154
    invoke-static {p1}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 206
    :goto_7
    return v7

    .line 161
    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v7, "/efs/bluetooth"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_40

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 166
    .local v6, status:Z
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 167
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 168
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 169
    const-string v7, "BluetoothBDTestService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "directory creation status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v6           #status:Z
    :cond_40
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, f1:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6e

    .line 175
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    .line 177
    .restart local v6       #status:Z
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 178
    const-string v7, "BluetoothBDTestService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file creation status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v6           #status:Z
    :cond_6e
    new-instance v3, Ljava/io/File;

    const-string v7, "/efs/imei/bt.txt"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, f2:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->getPrevAddress()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, prevAddress:Ljava/lang/String;
    if-eqz v5, :cond_88

    invoke-static {v5}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 186
    move-object p1, v5

    .line 188
    :cond_88
    const-string v7, "BluetoothBDTestService"

    const-string v8, "*** get & remove previous address file ***"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v5           #prevAddress:Ljava/lang/String;
    :cond_8f
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    iget-object v8, p0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 192
    .local v4, output:Ljava/io/Writer;
    const/4 p2, 0x0

    .line 193
    if-eqz p1, :cond_aa

    .line 194
    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 196
    const-string v7, "persist.service.bt.bt_macaddr"

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_a9} :catch_ad
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a9} :catch_b2

    .line 198
    const/4 p2, 0x1

    .end local v1           #f:Ljava/io/File;
    .end local v2           #f1:Ljava/io/File;
    .end local v3           #f2:Ljava/io/File;
    .end local v4           #output:Ljava/io/Writer;
    :cond_aa
    :goto_aa
    move v7, p2

    .line 206
    goto/16 :goto_7

    .line 201
    :catch_ad
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_aa

    .line 203
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_b2
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa
.end method

.method generateRandomAdrress()Ljava/lang/String;
    .registers 10

    .prologue
    .line 211
    const-string v6, "BluetoothBDTestService"

    const-string v7, "generateRandomAdrress()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v6, 0xc

    new-array v1, v6, [B

    .line 213
    .local v1, b:[B
    const/4 v2, 0x0

    .line 215
    .local v2, i:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v5, rand_data:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 218
    .local v0, address:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 219
    .local v4, ran:Ljava/util/Random;
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 221
    const/4 v2, 0x0

    :goto_1b
    const/4 v6, 0x6

    if-ge v2, v6, :cond_90

    .line 224
    aget-byte v6, v1, v2

    if-ltz v6, :cond_2f

    aget-byte v6, v1, v2

    const/16 v7, 0xf

    if-gt v6, v7, :cond_2f

    .line 225
    aget-byte v6, v1, v2

    add-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 227
    :cond_2f
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 231
    .local v3, j:Ljava/lang/Integer;
    if-nez v2, :cond_5f

    .line 233
    const/16 v6, 0x22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 234
    const-string v6, "BluetoothBDTestService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The first byte must have a even value, first byte value: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_5f
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "next value :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 241
    .end local v3           #j:Ljava/lang/Integer;
    :cond_90
    invoke-virtual {p0, v5}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->addressFormatter(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 242
    const-string v6, "BluetoothBDTestService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Address is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method getPrevAddress()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 255
    const-string v8, "BluetoothBDTestService"

    const-string v9, "*** get previous address, for os upgrade **"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v6, 0x0

    .line 257
    .local v6, prevAddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, address:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 262
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_b
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/efs/imei/bt.txt"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 263
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 264
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_21} :catch_54
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_61

    .line 265
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_7e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_7b

    move-result-object v6

    .line 267
    if-nez v6, :cond_31

    .line 279
    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2c

    :goto_2a
    move-object v1, v2

    .line 285
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_2b
    return-object v7

    .line 280
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catch_2c
    move-exception v3

    .line 281
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 271
    .end local v3           #e:Ljava/lang/Exception;
    :cond_31
    :try_start_31
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0xb

    const/16 v10, 0x17

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->addressFormatter(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_49} :catch_7e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_49} :catch_7b

    move-result-object v7

    .line 279
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    :goto_4d
    move-object v1, v2

    .line 282
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_2b

    .line 280
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v3

    .line 281
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d

    .line 273
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_54
    move-exception v3

    .line 274
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_55
    :try_start_55
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6e

    .line 279
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_2b

    .line 280
    :catch_5c
    move-exception v3

    .line 281
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 275
    .end local v3           #e:Ljava/lang/Exception;
    :catch_61
    move-exception v3

    .line 276
    .local v3, e:Ljava/io/IOException;
    :goto_62
    :try_start_62
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6e

    .line 279
    :try_start_65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_2b

    .line 280
    :catch_69
    move-exception v3

    .line 281
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 278
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v7

    .line 279
    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    .line 282
    :goto_72
    throw v7

    .line 280
    :catch_73
    move-exception v3

    .line 281
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72

    .line 278
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catchall_78
    move-exception v7

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_6f

    .line 275
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_7b
    move-exception v3

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_62

    .line 273
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_7e
    move-exception v3

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_55
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    const-string v0, "BluetoothBDTestService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 20
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 52
    if-nez p1, :cond_d

    .line 54
    const-string v13, "BluetoothBDTestService"

    const-string v14, "onStart - intent is null."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->stopSelf()V

    .line 126
    :goto_c
    return-void

    .line 59
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, action:Ljava/lang/String;
    const-string v13, "BluetoothBDTestService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onStart(), action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v13, "ro.bt.bdaddr_path"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    .line 63
    const-string v13, "BluetoothBDTestService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bd_address_path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v13, "com.bluetoothtestapp.BtBDstartservice.BootComplete"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 66
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v7, f:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    if-eqz v13, :cond_a8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_a8

    .line 68
    const-string v13, "BluetoothBDTestService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "already exist!( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " )"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", file length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 72
    :cond_a8
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_bc

    .line 73
    const-string v13, "BluetoothBDTestService"

    const-string v14, "file length is 0, this file will be removed and make new random address!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 76
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->generateRandomAdrress()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->createBDAddrFileUpdateAddr(Ljava/lang/String;Z)Z

    goto/16 :goto_c

    .line 78
    .end local v7           #f:Ljava/io/File;
    :cond_c8
    const-string v13, "com.sec.android.app.bluetoothtest.BT_ID_WRITE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    .line 79
    const/4 v12, 0x0

    .line 80
    .local v12, mWriteSuccess:Z
    const-string v13, "MAC_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, extra:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v7       #f:Ljava/io/File;
    const-string v13, "BluetoothBDTestService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Get extra, Write address: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10e

    .line 86
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 87
    const-string v13, "BluetoothBDTestService"

    const-string v14, "The previous file is deleted, and BT address will update in new file."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_10e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->createBDAddrFileUpdateAddr(Ljava/lang/String;Z)Z

    move-result v12

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->sendIntentToFactoryApp(Z)V

    goto/16 :goto_c

    .line 91
    .end local v6           #extra:Ljava/lang/String;
    .end local v7           #f:Ljava/io/File;
    .end local v12           #mWriteSuccess:Z
    :cond_11b
    const-string v13, "com.sec.android.app.bluetoothtest.BT_ID_READ"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_193

    .line 92
    const/4 v11, 0x0

    .line 93
    .local v11, mReadSuccess:Z
    const/4 v2, 0x0

    .line 94
    .local v2, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 95
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 98
    .restart local v7       #f:Ljava/io/File;
    :try_start_127
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_127 .. :try_end_130} :catchall_189
    .catch Ljava/io/FileNotFoundException; {:try_start_127 .. :try_end_130} :catch_16f
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_130} :catch_17c

    .line 99
    .end local v7           #f:Ljava/io/File;
    .local v8, f:Ljava/io/File;
    :try_start_130
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_19c
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_133} :catch_1aa
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_1a3

    move-result v13

    if-nez v13, :cond_142

    .line 100
    const/4 v11, 0x0

    .line 116
    :goto_137
    :try_start_137
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_169

    move-object v7, v8

    .line 121
    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    :goto_13b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->sendIntentToRIL(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 102
    .end local v7           #f:Ljava/io/File;
    .restart local v8       #f:Ljava/io/File;
    :cond_142
    :try_start_142
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->bd_address_path:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 103
    .local v9, fstream:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    .local v10, in:Ljava/io/DataInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15a
    .catchall {:try_start_142 .. :try_end_15a} :catchall_19c
    .catch Ljava/io/FileNotFoundException; {:try_start_142 .. :try_end_15a} :catch_1aa
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_15a} :catch_1a3

    .line 105
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_15a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_1b1

    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_163
    .catchall {:try_start_15a .. :try_end_163} :catchall_19f
    .catch Ljava/io/FileNotFoundException; {:try_start_15a .. :try_end_163} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_163} :catch_1a6

    move-result v13

    if-eqz v13, :cond_1b1

    .line 108
    const/4 v11, 0x1

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_137

    .line 117
    .end local v9           #fstream:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    :catch_169
    move-exception v5

    .line 118
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 120
    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    goto :goto_13b

    .line 110
    .end local v5           #e:Ljava/lang/Exception;
    :catch_16f
    move-exception v5

    .line 111
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_170
    :try_start_170
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_189

    .line 116
    :try_start_173
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_13b

    .line 117
    :catch_177
    move-exception v5

    .line 118
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13b

    .line 112
    .end local v5           #e:Ljava/lang/Exception;
    :catch_17c
    move-exception v5

    .line 113
    .local v5, e:Ljava/io/IOException;
    :goto_17d
    :try_start_17d
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_180
    .catchall {:try_start_17d .. :try_end_180} :catchall_189

    .line 116
    :try_start_180
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_183} :catch_184

    goto :goto_13b

    .line 117
    :catch_184
    move-exception v5

    .line 118
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13b

    .line 115
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_189
    move-exception v13

    .line 116
    :goto_18a
    :try_start_18a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_18e

    .line 119
    :goto_18d
    throw v13

    .line 117
    :catch_18e
    move-exception v5

    .line 118
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18d

    .line 124
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #f:Ljava/io/File;
    .end local v11           #mReadSuccess:Z
    :cond_193
    const-string v13, "BluetoothBDTestService"

    const-string v14, " **** not expecting this intent *** "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 115
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #mReadSuccess:Z
    :catchall_19c
    move-exception v13

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    goto :goto_18a

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #f:Ljava/io/File;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #fstream:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catchall_19f
    move-exception v13

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_18a

    .line 112
    .end local v7           #f:Ljava/io/File;
    .end local v9           #fstream:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/File;
    :catch_1a3
    move-exception v5

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    goto :goto_17d

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #f:Ljava/io/File;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #fstream:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_1a6
    move-exception v5

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_17d

    .line 110
    .end local v7           #f:Ljava/io/File;
    .end local v9           #fstream:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/File;
    :catch_1aa
    move-exception v5

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    goto :goto_170

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #f:Ljava/io/File;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #fstream:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_1ad
    move-exception v5

    move-object v7, v8

    .end local v8           #f:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_170

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #f:Ljava/io/File;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    :cond_1b1
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_137
.end method

.method sendIntentToFactoryApp(Z)V
    .registers 6
    .parameter "status"

    .prologue
    .line 130
    const-string v1, "BluetoothBDTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToFactoryApp(), status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.bluetoothtest.BT_ID_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, mFactIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2d

    .line 134
    const-string v1, "S_DATA"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :goto_29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void

    .line 136
    :cond_2d
    const-string v1, "S_DATA"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29
.end method

.method sendIntentToRIL(Ljava/lang/String;Z)V
    .registers 7
    .parameter "address"
    .parameter "status"

    .prologue
    .line 142
    const-string v1, "BluetoothBDTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToRIL(), status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.bluetoothtest.BT_ID_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, mRILIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2b

    .line 146
    const-string v1, "S_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :goto_27
    invoke-virtual {p0, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothBDTestService;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void

    .line 148
    :cond_2b
    const-string v1, "S_DATA"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_27
.end method
