.class final Lcom/google/zxing/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/g;->a:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/g;->b:Ljava/util/Vector;

    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/c/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_53b

    move-result v0

    if-nez v0, :cond_b

    .line 168
    :goto_9
    monitor-exit p0

    return-void

    .line 62
    :cond_b
    const/4 v0, 0x2

    :try_start_c
    new-array v0, v0, [I

    fill-array-data v0, :array_53e

    const-string v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_546

    const-string v1, "US"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_54e

    const-string v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_556

    const-string v1, "FR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17c

    aput v2, v0, v1

    const-string v1, "BG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17f

    aput v2, v0, v1

    const-string v1, "SI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x181

    aput v2, v0, v1

    const-string v1, "HR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x183

    aput v2, v0, v1

    const-string v1, "BA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_55e

    const-string v1, "DE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_566

    const-string v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_56e

    const-string v1, "RU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d7

    aput v2, v0, v1

    const-string v1, "TW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1da

    aput v2, v0, v1

    const-string v1, "EE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1db

    aput v2, v0, v1

    const-string v1, "LV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dc

    aput v2, v0, v1

    const-string v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dd

    aput v2, v0, v1

    const-string v1, "LT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1de

    aput v2, v0, v1

    const-string v1, "UZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1df

    aput v2, v0, v1

    const-string v1, "LK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    aput v2, v0, v1

    const-string v1, "PH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e1

    aput v2, v0, v1

    const-string v1, "BY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e2

    aput v2, v0, v1

    const-string v1, "UA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e4

    aput v2, v0, v1

    const-string v1, "MD"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e5

    aput v2, v0, v1

    const-string v1, "AM"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e6

    aput v2, v0, v1

    const-string v1, "GE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e7

    aput v2, v0, v1

    const-string v1, "KZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e9

    aput v2, v0, v1

    const-string v1, "HK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_576

    const-string v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_57e

    const-string v1, "GB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x208

    aput v2, v0, v1

    const-string v1, "GR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x210

    aput v2, v0, v1

    const-string v1, "LB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x211

    aput v2, v0, v1

    const-string v1, "CY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x213

    aput v2, v0, v1

    const-string v1, "MK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x217

    aput v2, v0, v1

    const-string v1, "MT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x21b

    aput v2, v0, v1

    const-string v1, "IE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_586

    const-string v1, "BE/LU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x230

    aput v2, v0, v1

    const-string v1, "PT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x239

    aput v2, v0, v1

    const-string v1, "IS"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_58e

    const-string v1, "DK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24e

    aput v2, v0, v1

    const-string v1, "PL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x252

    aput v2, v0, v1

    const-string v1, "RO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x257

    aput v2, v0, v1

    const-string v1, "HU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_596

    const-string v1, "ZA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25b

    aput v2, v0, v1

    const-string v1, "GH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x260

    aput v2, v0, v1

    const-string v1, "BH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x261

    aput v2, v0, v1

    const-string v1, "MU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x263

    aput v2, v0, v1

    const-string v1, "MA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x265

    aput v2, v0, v1

    const-string v1, "DZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x268

    aput v2, v0, v1

    const-string v1, "KE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26a

    aput v2, v0, v1

    const-string v1, "CI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26b

    aput v2, v0, v1

    const-string v1, "TN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26d

    aput v2, v0, v1

    const-string v1, "SY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26e

    aput v2, v0, v1

    const-string v1, "EG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x270

    aput v2, v0, v1

    const-string v1, "LY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x271

    aput v2, v0, v1

    const-string v1, "JO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x272

    aput v2, v0, v1

    const-string v1, "IR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x273

    aput v2, v0, v1

    const-string v1, "KW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x274

    aput v2, v0, v1

    const-string v1, "SA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x275

    aput v2, v0, v1

    const-string v1, "AE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_59e

    const-string v1, "FI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a6

    const-string v1, "CN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ae

    const-string v1, "NO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2d9

    aput v2, v0, v1

    const-string v1, "IL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5b6

    const-string v1, "SE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e4

    aput v2, v0, v1

    const-string v1, "GT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e5

    aput v2, v0, v1

    const-string v1, "SV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e6

    aput v2, v0, v1

    const-string v1, "HN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e7

    aput v2, v0, v1

    const-string v1, "NI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e8

    aput v2, v0, v1

    const-string v1, "CR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e9

    aput v2, v0, v1

    const-string v1, "PA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ea

    aput v2, v0, v1

    const-string v1, "DO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ee

    aput v2, v0, v1

    const-string v1, "MX"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5be

    const-string v1, "CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2f7

    aput v2, v0, v1

    const-string v1, "VE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5c6

    const-string v1, "CH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x302

    aput v2, v0, v1

    const-string v1, "CO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x305

    aput v2, v0, v1

    const-string v1, "UY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x307

    aput v2, v0, v1

    const-string v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x309

    aput v2, v0, v1

    const-string v1, "BO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30b

    aput v2, v0, v1

    const-string v1, "AR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30c

    aput v2, v0, v1

    const-string v1, "CL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x310

    aput v2, v0, v1

    const-string v1, "PY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x311

    aput v2, v0, v1

    const-string v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x312

    aput v2, v0, v1

    const-string v1, "EC"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ce

    const-string v1, "BR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5d6

    const-string v1, "IT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5de

    const-string v1, "ES"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x352

    aput v2, v0, v1

    const-string v1, "CU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35a

    aput v2, v0, v1

    const-string v1, "SK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35b

    aput v2, v0, v1

    const-string v1, "CZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35c

    aput v2, v0, v1

    const-string v1, "YU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x361

    aput v2, v0, v1

    const-string v1, "MN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x363

    aput v2, v0, v1

    const-string v1, "KP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5e6

    const-string v1, "TR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5ee

    const-string v1, "NL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x370

    aput v2, v0, v1

    const-string v1, "KR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x375

    aput v2, v0, v1

    const-string v1, "TH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x378

    aput v2, v0, v1

    const-string v1, "SG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37a

    aput v2, v0, v1

    const-string v1, "IN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37d

    aput v2, v0, v1

    const-string v1, "VN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x380

    aput v2, v0, v1

    const-string v1, "PK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x383

    aput v2, v0, v1

    const-string v1, "ID"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5f6

    const-string v1, "AT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5fe

    const-string v1, "AU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_606

    const-string v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3bb

    aput v2, v0, v1

    const-string v1, "MY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3be

    aput v2, v0, v1

    const-string v1, "MO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/g;->a([ILjava/lang/String;)V
    :try_end_539
    .catchall {:try_start_c .. :try_end_539} :catchall_53b

    goto/16 :goto_9

    .line 59
    :catchall_53b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :array_53e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_546
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_54e
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_556
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x7bt 0x1t 0x0t 0x0t
    .end array-data

    .line 70
    :array_55e
    .array-data 0x4
        0x90t 0x1t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
    .end array-data

    .line 71
    :array_566
    .array-data 0x4
        0xc2t 0x1t 0x0t 0x0t
        0xcbt 0x1t 0x0t 0x0t
    .end array-data

    .line 72
    :array_56e
    .array-data 0x4
        0xcct 0x1t 0x0t 0x0t
        0xd5t 0x1t 0x0t 0x0t
    .end array-data

    .line 88
    :array_576
    .array-data 0x4
        0xeat 0x1t 0x0t 0x0t
        0xf3t 0x1t 0x0t 0x0t
    .end array-data

    .line 89
    :array_57e
    .array-data 0x4
        0xf4t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
    .end array-data

    .line 96
    :array_586
    .array-data 0x4
        0x1ct 0x2t 0x0t 0x0t
        0x25t 0x2t 0x0t 0x0t
    .end array-data

    .line 99
    :array_58e
    .array-data 0x4
        0x3at 0x2t 0x0t 0x0t
        0x43t 0x2t 0x0t 0x0t
    .end array-data

    .line 103
    :array_596
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0x59t 0x2t 0x0t 0x0t
    .end array-data

    .line 120
    :array_59e
    .array-data 0x4
        0x80t 0x2t 0x0t 0x0t
        0x89t 0x2t 0x0t 0x0t
    .end array-data

    .line 121
    :array_5a6
    .array-data 0x4
        0xb2t 0x2t 0x0t 0x0t
        0xb7t 0x2t 0x0t 0x0t
    .end array-data

    .line 122
    :array_5ae
    .array-data 0x4
        0xbct 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
    .end array-data

    .line 124
    :array_5b6
    .array-data 0x4
        0xdat 0x2t 0x0t 0x0t
        0xe3t 0x2t 0x0t 0x0t
    .end array-data

    .line 133
    :array_5be
    .array-data 0x4
        0xf2t 0x2t 0x0t 0x0t
        0xf3t 0x2t 0x0t 0x0t
    .end array-data

    .line 135
    :array_5c6
    .array-data 0x4
        0xf8t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
    .end array-data

    .line 145
    :array_5ce
    .array-data 0x4
        0x15t 0x3t 0x0t 0x0t
        0x16t 0x3t 0x0t 0x0t
    .end array-data

    .line 146
    :array_5d6
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
    .end array-data

    .line 147
    :array_5de
    .array-data 0x4
        0x48t 0x3t 0x0t 0x0t
        0x51t 0x3t 0x0t 0x0t
    .end array-data

    .line 154
    :array_5e6
    .array-data 0x4
        0x64t 0x3t 0x0t 0x0t
        0x65t 0x3t 0x0t 0x0t
    .end array-data

    .line 155
    :array_5ee
    .array-data 0x4
        0x66t 0x3t 0x0t 0x0t
        0x6ft 0x3t 0x0t 0x0t
    .end array-data

    .line 163
    :array_5f6
    .array-data 0x4
        0x84t 0x3t 0x0t 0x0t
        0x97t 0x3t 0x0t 0x0t
    .end array-data

    .line 164
    :array_5fe
    .array-data 0x4
        0xa2t 0x3t 0x0t 0x0t
        0xabt 0x3t 0x0t 0x0t
    .end array-data

    .line 165
    :array_606
    .array-data 0x4
        0xact 0x3t 0x0t 0x0t
        0xb5t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private a([ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/c/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/zxing/c/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/c/g;->a()V

    .line 37
    const/4 v0, 0x3

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 38
    iget-object v0, p0, Lcom/google/zxing/c/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v3, v4

    .line 39
    :goto_16
    if-ge v3, v6, :cond_3c

    .line 40
    iget-object v0, p0, Lcom/google/zxing/c/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 41
    aget v2, v0, v4

    .line 42
    if-ge v5, v2, :cond_26

    move-object v0, v1

    .line 50
    :goto_25
    return-object v0

    .line 45
    :cond_26
    array-length v7, v0

    if-ne v7, v8, :cond_35

    move v0, v2

    .line 46
    :goto_2a
    if-gt v5, v0, :cond_38

    .line 47
    iget-object v0, p0, Lcom/google/zxing/c/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_25

    .line 45
    :cond_35
    aget v0, v0, v8

    goto :goto_2a

    .line 39
    :cond_38
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    :cond_3c
    move-object v0, v1

    .line 50
    goto :goto_25
.end method
