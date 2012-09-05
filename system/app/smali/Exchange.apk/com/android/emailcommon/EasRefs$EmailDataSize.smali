.class public final enum Lcom/android/emailcommon/EasRefs$EmailDataSize;
.super Ljava/lang/Enum;
.source "EasRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/EasRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailDataSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/EasRefs$EmailDataSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum FIFTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum FIVE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum HALF_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum HEADERS_ONLY:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum HUNDRED_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum ONE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum TEN_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum TWENTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

.field public static final enum TWO_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "HEADERS_ONLY"

    const-string v2, "0"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HEADERS_ONLY:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "HALF_KB"

    const-string v2, "1"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HALF_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "ONE_KB"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ONE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "TWO_KB"

    const-string v2, "3"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWO_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "FIVE_KB"

    const-string v2, "4"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIVE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "TEN_KB"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TEN_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    .line 160
    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "TWENTY_KB"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWENTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "FIFTY_KB"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIFTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "HUNDRED_KB"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HUNDRED_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    new-instance v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    const-string v1, "ALL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/emailcommon/EasRefs$EmailDataSize;

    sget-object v1, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HEADERS_ONLY:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HALF_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ONE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWO_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIVE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TEN_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWENTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIFTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HUNDRED_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->$VALUES:[Lcom/android/emailcommon/EasRefs$EmailDataSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter "value"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->mValue:B

    .line 172
    iput-object p4, p0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->mText:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public static parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;
    .registers 2
    .parameter "value"

    .prologue
    .line 290
    packed-switch p0, :pswitch_data_22

    .line 325
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    :goto_5
    return-object v0

    .line 293
    :pswitch_6
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HEADERS_ONLY:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 296
    :pswitch_9
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HALF_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 299
    :pswitch_c
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ONE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 302
    :pswitch_f
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWO_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 305
    :pswitch_12
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIVE_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 308
    :pswitch_15
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TEN_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 311
    :pswitch_18
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->TWENTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 314
    :pswitch_1b
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->FIFTY_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 317
    :pswitch_1e
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->HUNDRED_KB:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    goto :goto_5

    .line 290
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public static parse(I)Lcom/android/emailcommon/EasRefs$EmailDataSize;
    .registers 2
    .parameter "value"

    .prologue
    .line 329
    int-to-byte v0, p0

    invoke-static {v0}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v0

    return-object v0
.end method

.method public static parseToByte(I)B
    .registers 2
    .parameter "valueInBytes"

    .prologue
    .line 344
    if-gtz p0, :cond_4

    .line 345
    const/4 v0, 0x0

    .line 363
    :goto_3
    return v0

    .line 346
    :cond_4
    const/16 v0, 0x200

    if-gt p0, v0, :cond_a

    .line 347
    const/4 v0, 0x1

    goto :goto_3

    .line 348
    :cond_a
    const/16 v0, 0x400

    if-gt p0, v0, :cond_10

    .line 349
    const/4 v0, 0x2

    goto :goto_3

    .line 350
    :cond_10
    const/16 v0, 0x800

    if-gt p0, v0, :cond_16

    .line 351
    const/4 v0, 0x3

    goto :goto_3

    .line 352
    :cond_16
    const/16 v0, 0x1400

    if-gt p0, v0, :cond_1c

    .line 353
    const/4 v0, 0x4

    goto :goto_3

    .line 354
    :cond_1c
    const/16 v0, 0x2800

    if-gt p0, v0, :cond_22

    .line 355
    const/4 v0, 0x5

    goto :goto_3

    .line 356
    :cond_22
    const/16 v0, 0x5000

    if-gt p0, v0, :cond_28

    .line 357
    const/4 v0, 0x6

    goto :goto_3

    .line 358
    :cond_28
    const v0, 0xc800

    if-gt p0, v0, :cond_2f

    .line 359
    const/4 v0, 0x7

    goto :goto_3

    .line 360
    :cond_2f
    const v0, 0x19000

    if-gt p0, v0, :cond_37

    .line 361
    const/16 v0, 0x8

    goto :goto_3

    .line 363
    :cond_37
    const/16 v0, 0x9

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/EasRefs$EmailDataSize;
    .registers 2
    .parameter

    .prologue
    .line 158
    const-class v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/EasRefs$EmailDataSize;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->$VALUES:[Lcom/android/emailcommon/EasRefs$EmailDataSize;

    invoke-virtual {v0}, [Lcom/android/emailcommon/EasRefs$EmailDataSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/EasRefs$EmailDataSize;

    return-object v0
.end method


# virtual methods
.method public toEas12Text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-byte v0, p0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->mValue:B

    packed-switch v0, :pswitch_data_24

    .line 286
    const-string v0, "2147483647"

    :goto_7
    return-object v0

    .line 247
    :pswitch_8
    const-string v0, "0"

    goto :goto_7

    .line 250
    :pswitch_b
    const-string v0, "512"

    goto :goto_7

    .line 253
    :pswitch_e
    const-string v0, "1024"

    goto :goto_7

    .line 256
    :pswitch_11
    const-string v0, "2048"

    goto :goto_7

    .line 259
    :pswitch_14
    const-string v0, "5120"

    goto :goto_7

    .line 262
    :pswitch_17
    const-string v0, "10240"

    goto :goto_7

    .line 265
    :pswitch_1a
    const-string v0, "20480"

    goto :goto_7

    .line 268
    :pswitch_1d
    const-string v0, "51200"

    goto :goto_7

    .line 271
    :pswitch_20
    const-string v0, "102400"

    goto :goto_7

    .line 244
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public toEas12Value()I
    .registers 2

    .prologue
    .line 198
    iget-byte v0, p0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->mValue:B

    packed-switch v0, :pswitch_data_26

    .line 240
    const v0, 0x7fffffff

    :goto_8
    return v0

    .line 201
    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 204
    :pswitch_b
    const/16 v0, 0x200

    goto :goto_8

    .line 207
    :pswitch_e
    const/16 v0, 0x400

    goto :goto_8

    .line 210
    :pswitch_11
    const/16 v0, 0x800

    goto :goto_8

    .line 213
    :pswitch_14
    const/16 v0, 0x1400

    goto :goto_8

    .line 216
    :pswitch_17
    const/16 v0, 0x2800

    goto :goto_8

    .line 219
    :pswitch_1a
    const/16 v0, 0x5000

    goto :goto_8

    .line 222
    :pswitch_1d
    const v0, 0xc800

    goto :goto_8

    .line 225
    :pswitch_21
    const v0, 0x19000

    goto :goto_8

    .line 198
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public toEas2_5Text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/emailcommon/EasRefs$EmailDataSize;->mText:Ljava/lang/String;

    return-object v0
.end method
