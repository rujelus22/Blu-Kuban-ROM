.class Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;
.super Ljava/lang/Object;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iteratedChar"
.end annotation


# instance fields
.field charValue:I

.field done:Z

.field error:Z

.field index:I

.field nextIndex:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 141
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 142
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 143
    iput-boolean v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 144
    iput-boolean v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 139
    return-void
.end method


# virtual methods
.method nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 6
    .parameter "det"

    .prologue
    .line 155
    iget v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iget v2, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    if-lt v1, v2, :cond_b

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 157
    const/4 v0, -0x1

    .line 160
    :goto_a
    return v0

    .line 159
    :cond_b
    iget-object v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    iget v2, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 160
    .local v0, byteValue:I
    goto :goto_a
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 149
    iput v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 150
    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 151
    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 152
    return-void
.end method
