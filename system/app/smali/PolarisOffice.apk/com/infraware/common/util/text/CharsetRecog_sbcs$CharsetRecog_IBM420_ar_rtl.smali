.class Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;
.super Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_IBM420_ar_rtl"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1236
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->ngrams:[I

    .line 1234
    return-void

    .line 1236
    :array_a
    .array-data 0x4
        0xb1t 0x56t 0x40t 0x0t
        0xbdt 0x56t 0x40t 0x0t
        0x56t 0x58t 0x40t 0x0t
        0xb1t 0x9at 0x40t 0x0t
        0xdct 0xabt 0x40t 0x0t
        0xb1t 0xb1t 0x40t 0x0t
        0xbdt 0xbbt 0x40t 0x0t
        0x56t 0xcft 0x40t 0x0t
        0x56t 0x40t 0x56t 0x0t
        0x40t 0x46t 0x56t 0x0t
        0x40t 0x63t 0x56t 0x0t
        0x40t 0x75t 0x56t 0x0t
        0x40t 0xb1t 0x56t 0x0t
        0x49t 0xb1t 0x56t 0x0t
        0x56t 0xb1t 0x56t 0x0t
        0x58t 0xb1t 0x56t 0x0t
        0x63t 0xb1t 0x56t 0x0t
        0x67t 0xb1t 0x56t 0x0t
        0x69t 0xb1t 0x56t 0x0t
        0x73t 0xb1t 0x56t 0x0t
        0x78t 0xb1t 0x56t 0x0t
        0x9at 0xb1t 0x56t 0x0t
        0xadt 0xb1t 0x56t 0x0t
        0xbbt 0xb1t 0x56t 0x0t
        0xcft 0xb1t 0x56t 0x0t
        0xdct 0xb1t 0x56t 0x0t
        0x40t 0xbbt 0x56t 0x0t
        0x40t 0xbdt 0x56t 0x0t
        0x63t 0xbdt 0x56t 0x0t
        0x56t 0x40t 0x58t 0x0t
        0x56t 0x40t 0x62t 0x0t
        0xabt 0x40t 0x62t 0x0t
        0xb1t 0x40t 0x62t 0x0t
        0xbbt 0x40t 0x62t 0x0t
        0xcft 0x40t 0x62t 0x0t
        0x56t 0x40t 0x63t 0x0t
        0x56t 0x40t 0x73t 0x0t
        0x40t 0x62t 0x73t 0x0t
        0x56t 0x40t 0x75t 0x0t
        0x40t 0x62t 0x75t 0x0t
        0x56t 0x40t 0x78t 0x0t
        0x56t 0x40t 0x9at 0x0t
        0xdat 0xb1t 0x9at 0x0t
        0x40t 0xdct 0xabt 0x0t
        0x56t 0x40t 0xb1t 0x0t
        0x40t 0x62t 0xb1t 0x0t
        0x40t 0xdat 0xb1t 0x0t
        0x40t 0xdct 0xb1t 0x0t
        0x56t 0x40t 0xbbt 0x0t
        0x40t 0x56t 0xbbt 0x0t
        0x40t 0x62t 0xbbt 0x0t
        0x40t 0xbdt 0xbbt 0x0t
        0x56t 0x40t 0xbdt 0x0t
        0x56t 0x40t 0xbft 0x0t
        0x40t 0x56t 0xbft 0x0t
        0xb1t 0x56t 0xcft 0x0t
        0x40t 0xbdt 0xcft 0x0t
        0x56t 0x40t 0xdat 0x0t
        0x56t 0x40t 0xdct 0x0t
        0xbbt 0x40t 0xdct 0x0t
        0xcft 0x40t 0xdct 0x0t
        0x40t 0x62t 0xdct 0x0t
        0x40t 0x75t 0xdct 0x0t
        0x40t 0xbdt 0xdct 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1245
    const-string v0, "IBM420_rtl"

    return-object v0
.end method

.method public match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 6
    .parameter "det"

    .prologue
    .line 1249
    invoke-virtual {p0, p1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->matchInit(Lcom/infraware/common/util/text/CharsetDetector;)V

    .line 1250
    sget-object v1, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->ngrams:[I

    sget-object v2, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->byteMap:[B

    const/16 v3, 0x40

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->match(Lcom/infraware/common/util/text/CharsetDetector;[I[BB)I

    move-result v0

    .line 1251
    .local v0, result:I
    invoke-virtual {p0, p1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->matchFinish(Lcom/infraware/common/util/text/CharsetDetector;)V

    .line 1252
    return v0
.end method