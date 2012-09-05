.class Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;
.super Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_sjis"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    .line 187
    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    .line 186
    return-void

    .line 191
    :array_a
    .array-data 0x4
        0x40t 0x81t 0x0t 0x0t
        0x41t 0x81t 0x0t 0x0t
        0x42t 0x81t 0x0t 0x0t
        0x45t 0x81t 0x0t 0x0t
        0x5bt 0x81t 0x0t 0x0t
        0x69t 0x81t 0x0t 0x0t
        0x6at 0x81t 0x0t 0x0t
        0x75t 0x81t 0x0t 0x0t
        0x76t 0x81t 0x0t 0x0t
        0xa0t 0x82t 0x0t 0x0t
        0xa2t 0x82t 0x0t 0x0t
        0xa4t 0x82t 0x0t 0x0t
        0xa9t 0x82t 0x0t 0x0t
        0xaat 0x82t 0x0t 0x0t
        0xabt 0x82t 0x0t 0x0t
        0xadt 0x82t 0x0t 0x0t
        0xaft 0x82t 0x0t 0x0t
        0xb1t 0x82t 0x0t 0x0t
        0xb3t 0x82t 0x0t 0x0t
        0xb5t 0x82t 0x0t 0x0t
        0xb7t 0x82t 0x0t 0x0t
        0xbdt 0x82t 0x0t 0x0t
        0xbet 0x82t 0x0t 0x0t
        0xc1t 0x82t 0x0t 0x0t
        0xc4t 0x82t 0x0t 0x0t
        0xc5t 0x82t 0x0t 0x0t
        0xc6t 0x82t 0x0t 0x0t
        0xc8t 0x82t 0x0t 0x0t
        0xc9t 0x82t 0x0t 0x0t
        0xcct 0x82t 0x0t 0x0t
        0xcdt 0x82t 0x0t 0x0t
        0xdct 0x82t 0x0t 0x0t
        0xe0t 0x82t 0x0t 0x0t
        0xe7t 0x82t 0x0t 0x0t
        0xe8t 0x82t 0x0t 0x0t
        0xe9t 0x82t 0x0t 0x0t
        0xeat 0x82t 0x0t 0x0t
        0xf0t 0x82t 0x0t 0x0t
        0xf1t 0x82t 0x0t 0x0t
        0x41t 0x83t 0x0t 0x0t
        0x43t 0x83t 0x0t 0x0t
        0x4et 0x83t 0x0t 0x0t
        0x4ft 0x83t 0x0t 0x0t
        0x58t 0x83t 0x0t 0x0t
        0x5et 0x83t 0x0t 0x0t
        0x62t 0x83t 0x0t 0x0t
        0x67t 0x83t 0x0t 0x0t
        0x75t 0x83t 0x0t 0x0t
        0x76t 0x83t 0x0t 0x0t
        0x89t 0x83t 0x0t 0x0t
        0x8at 0x83t 0x0t 0x0t
        0x8bt 0x83t 0x0t 0x0t
        0x8dt 0x83t 0x0t 0x0t
        0x93t 0x83t 0x0t 0x0t
        0x96t 0x8et 0x0t 0x0t
        0xfat 0x93t 0x0t 0x0t
        0xaat 0x95t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    const-string v0, "ja"

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    const-string v0, "Shift_JIS"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 3
    .parameter "det"

    .prologue
    .line 224
    sget-object v0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;->match(Lcom/infraware/common/util/text/CharsetDetector;[I)I

    move-result v0

    return v0
.end method

.method nextChar(Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;Lcom/infraware/common/util/text/CharsetDetector;)Z
    .registers 9
    .parameter "it"
    .parameter "det"

    .prologue
    const/16 v5, 0x7f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iget v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 200
    iput-boolean v2, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 202
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 203
    .local v0, firstByte:I
    if-gez v0, :cond_13

    .line 220
    :cond_12
    :goto_12
    return v2

    .line 207
    :cond_13
    if-le v0, v5, :cond_1d

    const/16 v4, 0xa0

    if-le v0, v4, :cond_1f

    const/16 v4, 0xdf

    if-gt v0, v4, :cond_1f

    :cond_1d
    move v2, v3

    .line 208
    goto :goto_12

    .line 211
    :cond_1f
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v1

    .line 212
    .local v1, secondByte:I
    if-ltz v1, :cond_12

    .line 215
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    iput v2, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 216
    const/16 v2, 0x40

    if-lt v1, v2, :cond_30

    if-le v1, v5, :cond_3a

    :cond_30
    const/16 v2, 0x80

    if-lt v1, v2, :cond_38

    const/16 v2, 0xff

    if-le v1, v2, :cond_3a

    .line 218
    :cond_38
    iput-boolean v3, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    :cond_3a
    move v2, v3

    .line 220
    goto :goto_12
.end method
