.class public Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;
.super Landroid/app/Service;
.source "MiscRilActionService.java"


# static fields
.field private static wdataStatus:I


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private mAttr:I

.field private mCmd:I

.field private mCommand:Ljava/lang/String;

.field private mData:S

.field private touchMoveStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->MAX_BUFFER_SIZE:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->touchMoveStatus:I

    return-void
.end method

.method private charToNum(C)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 274
    const/16 v0, 0x30

    if-gt v0, p1, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    .line 275
    add-int/lit8 v0, p1, -0x30

    .line 283
    :goto_a
    return v0

    .line 277
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p1, :cond_18

    const/16 v0, 0x66

    if-gt p1, v0, :cond_18

    .line 278
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 280
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p1, :cond_25

    const/16 v0, 0x46

    if-gt p1, v0, :cond_25

    .line 281
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 283
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v10, 0x0

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v7, [B

    .line 151
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 152
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 154
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v7, :cond_10

    .line 155
    aput-byte v10, v0, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 159
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2c

    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    move-object v3, v4

    .line 166
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 168
    if-eqz v5, :cond_28

    .line 169
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    invoke-direct {v6, v0, v10, v7}, Ljava/lang/String;-><init>([BII)V

    .line 172
    .restart local v6       #value:Ljava/lang/String;
    :cond_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 173
    return-object v6

    .line 160
    :catch_2c
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 162
    const-string v7, "pdabatcalRead"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendResultCommand(I)V

    goto :goto_1b
.end method

.method private hextodec(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cordinate"

    .prologue
    .line 265
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->charToNum(C)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4580

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->charToNum(C)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4380

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->charToNum(C)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4180

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->charToNum(C)I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 266
    .local v0, mLength:F
    float-to-int v1, v0

    .line 269
    .local v1, result:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parsing()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    .line 76
    iget-object v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCommand:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, mTemp:Ljava/lang/String;
    const-string v2, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 78
    iget-object v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCommand:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 82
    :try_start_20
    invoke-direct {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->pdabatcalRead()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2f

    .line 89
    :cond_23
    :goto_23
    const-string v2, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 91
    :try_start_2b
    invoke-direct {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->pdabatcalWrite()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3a

    .line 99
    :cond_2e
    :goto_2e
    return-void

    .line 84
    :catch_2f
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 93
    .end local v0           #e:Ljava/io/IOException;
    :catch_3a
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private pdabatcalRead()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, PdaBatlevel:Ljava/lang/String;
    const-string v3, "/sys/class/power_supply/battery/batt_vol_adc"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, tempBatlevel_dec:Ljava/lang/String;
    const-string v3, "pdabatcalRead "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempBatlevel_dec : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    .line 126
    .local v1, tempBat:S
    const-string v3, "pdabatcalRead "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempBat<dec> : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v3, "pdabatcalRead "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempBat<hex> : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    iput-short v3, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mData:S

    .line 129
    const-string v3, "PdabatcalRead "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%x"

    new-array v6, v9, [Ljava/lang/Object;

    iget-short v7, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mData:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sput v8, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    .line 131
    invoke-direct {p0, v9}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendResultCommand(I)V

    .line 132
    return-void
.end method

.method private pdabatcalWrite()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCommand:Ljava/lang/String;

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, mTemp:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->swapCordinate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, batCal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 181
    .local v0, PdaBatlevel:Ljava/lang/String;
    const/4 v3, 0x0

    .line 183
    .local v3, temp_cal:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BatCal"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BatCalMode"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BatCal"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, "pdabatcalRead"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BatCal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v4, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-direct {p0, v4, v1}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->setValuetoFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "pdabatcalRead "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDABAT_CAL 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Ljava/lang/String;

    .end local v0           #PdaBatlevel:Ljava/lang/String;
    const-string v4, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-direct {p0, v4}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0       #PdaBatlevel:Ljava/lang/String;
    const-string v4, "pdabatcalRead "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDABAT_CAL 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private sendResultCommand(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x2

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.RilMiscCommandSend"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "COMMAND"

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "TEST_COMMAND"

    iget v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCmd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    if-nez p1, :cond_35

    .line 310
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "WRITEFLAG"

    sget v2, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "DATA"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 332
    :cond_31
    :goto_31
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    return-void

    .line 315
    :cond_35
    const/4 v1, 0x1

    if-ne p1, v1, :cond_54

    .line 316
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v1, "DATA"

    iget-short v2, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mData:S

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 319
    const-string v1, "LENGTH"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v1, "WRITEFLAG"

    sget v2, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 323
    :cond_54
    if-ne p1, v3, :cond_63

    .line 324
    const-string v1, "ATTR"

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 327
    :cond_63
    const/4 v1, 0x3

    if-ne p1, v1, :cond_31

    .line 328
    const-string v1, "ATTR"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31
.end method

.method private setValuetoFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "fileName"
    .parameter "batCal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-direct {p0, p2}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->hextodec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, writeValue:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 204
    .local v0, buffer:[B
    const-string v6, "pdabatcalRead "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_cd

    .line 208
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    const/4 v6, 0x1

    sput v6, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    .line 218
    const-string v6, "pdabatcalWrite to RIL "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "batCal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    .line 221
    .local v4, tempBat:S
    const-string v6, "pdabatcalWrite to RIL "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempBat<dec> : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v6, "pdabatcalRead "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempBat<hex> : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v6

    iput-short v6, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mData:S

    .line 224
    const-string v6, "PdabatcalRead "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-short v11, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mData:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendResultCommand(I)V

    .line 240
    const/4 v6, 0x0

    sput v6, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->wdataStatus:I

    .line 243
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendResultCommand(I)V
    :try_end_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_c8} :catch_ee

    move-object v2, v3

    .line 249
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #tempBat:S
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_c9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 250
    return-void

    .line 244
    :catch_cd
    move-exception v1

    .line 245
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_ce
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 246
    const-string v6, "pdabatcalRead"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->sendResultCommand(I)V

    goto :goto_c9

    .line 244
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_ee
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_ce
.end method

.method private swapCordinate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cordinate"

    .prologue
    const/4 v4, 0x2

    .line 255
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, temp1:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, temp2:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, swapcord:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, -0x1

    .line 62
    const-string v0, "COMMAND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCommand:Ljava/lang/String;

    .line 63
    const-string v0, "CMD"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mCmd:I

    .line 64
    const-string v0, "ATTR"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->mAttr:I

    .line 66
    const-string v0, "RilACtion Service"

    const-string v1, "get Command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/samsungtest/miscrilsupport/misccommandaction/MiscRilActionService;->parsing()V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
