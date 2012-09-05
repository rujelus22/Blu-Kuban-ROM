.class public final enum Lcom/swype/android/widget/PaintCommandType;
.super Ljava/lang/Enum;
.source "PaintCommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/widget/PaintCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum BEGIN_DRAW:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWBITMAP:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWBITMAPTILEDX:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWHIGHLIGHT:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWICON:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWKEYBOARD:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWLINE:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWTEXT:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAWTRACEPATH:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum DRAW_BUF:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final enum SET_CLIP:Lcom/swype/android/widget/PaintCommandType; = null

.field public static final VAR_ARGS:I = -0x1


# instance fields
.field private name:Ljava/lang/String;

.field private numOfIntParams:I

.field private numOfStringParams:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/swype/android/widget/PaintCommandType;

    const-string v1, "BEGIN_DRAW"

    const-string v3, "beingDraw"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/swype/android/widget/PaintCommandType;->BEGIN_DRAW:Lcom/swype/android/widget/PaintCommandType;

    .line 5
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAW_BUF"

    const-string v6, "drawBuf"

    move v5, v9

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAW_BUF:Lcom/swype/android/widget/PaintCommandType;

    .line 6
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "SET_CLIP"

    const-string v6, "setClip"

    move v5, v12

    move v7, v2

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->SET_CLIP:Lcom/swype/android/widget/PaintCommandType;

    .line 7
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWKEYBOARD"

    const-string v6, "kb"

    move v5, v10

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWKEYBOARD:Lcom/swype/android/widget/PaintCommandType;

    .line 8
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWLINE"

    const-string v6, "ln"

    const/4 v8, 0x6

    move v5, v11

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWLINE:Lcom/swype/android/widget/PaintCommandType;

    .line 9
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWTRACEPATH"

    const/4 v5, 0x5

    const-string v6, "tr"

    const/4 v8, -0x1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWTRACEPATH:Lcom/swype/android/widget/PaintCommandType;

    .line 10
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWTEXT"

    const/4 v5, 0x6

    const-string v6, "tx"

    const/16 v8, 0x8

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    .line 11
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWBITMAP"

    const/4 v5, 0x7

    const-string v6, "bmp"

    const/4 v8, 0x7

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAP:Lcom/swype/android/widget/PaintCommandType;

    .line 12
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWHIGHLIGHT"

    const/16 v5, 0x8

    const-string v6, "hi"

    const/4 v8, 0x5

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWHIGHLIGHT:Lcom/swype/android/widget/PaintCommandType;

    .line 13
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWICON"

    const/16 v5, 0x9

    const-string v6, "icon"

    move v7, v9

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWICON:Lcom/swype/android/widget/PaintCommandType;

    .line 14
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWBITMAPTILEDX"

    const/16 v5, 0xa

    const-string v6, "tilex"

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAPTILEDX:Lcom/swype/android/widget/PaintCommandType;

    .line 15
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "DRAWPOLYGON"

    const/16 v5, 0xb

    const-string v6, "polygon"

    const/4 v8, -0x1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType;

    .line 16
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "FLUSH_DRAWING"

    const/16 v5, 0xc

    const-string v6, "flush"

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    .line 17
    new-instance v3, Lcom/swype/android/widget/PaintCommandType;

    const-string v4, "FLUSH_BUF"

    const/16 v5, 0xd

    const-string v6, "flushBuf"

    move v7, v2

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/swype/android/widget/PaintCommandType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/swype/android/widget/PaintCommandType;->FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/swype/android/widget/PaintCommandType;

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->BEGIN_DRAW:Lcom/swype/android/widget/PaintCommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->DRAW_BUF:Lcom/swype/android/widget/PaintCommandType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->SET_CLIP:Lcom/swype/android/widget/PaintCommandType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->DRAWKEYBOARD:Lcom/swype/android/widget/PaintCommandType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->DRAWLINE:Lcom/swype/android/widget/PaintCommandType;

    aput-object v1, v0, v11

    const/4 v1, 0x5

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWTRACEPATH:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAP:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWHIGHLIGHT:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWICON:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAPTILEDX:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/widget/PaintCommandType;->$VALUES:[Lcom/swype/android/widget/PaintCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter "name"
    .parameter "numOfStringParams"
    .parameter "numOfIntParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/swype/android/widget/PaintCommandType;->name:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/swype/android/widget/PaintCommandType;->numOfStringParams:I

    .line 40
    iput p5, p0, Lcom/swype/android/widget/PaintCommandType;->numOfIntParams:I

    .line 41
    return-void
.end method

.method public static parseFromName(Ljava/lang/String;)Lcom/swype/android/widget/PaintCommandType;
    .registers 6
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/swype/android/widget/PaintCommandType;->values()[Lcom/swype/android/widget/PaintCommandType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 66
    iget-object v4, v3, Lcom/swype/android/widget/PaintCommandType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v0, v3

    .line 70
    :goto_13
    return-object v0

    .line 65
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/widget/PaintCommandType;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/swype/android/widget/PaintCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/widget/PaintCommandType;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/widget/PaintCommandType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->$VALUES:[Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v0}, [Lcom/swype/android/widget/PaintCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/widget/PaintCommandType;

    return-object v0
.end method


# virtual methods
.method public final getNumOfIntParams()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/swype/android/widget/PaintCommandType;->numOfIntParams:I

    return v0
.end method

.method public final getNumOfStrParams()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/swype/android/widget/PaintCommandType;->numOfStringParams:I

    return v0
.end method

.method public final getTotalNumberOfArgs()I
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/swype/android/widget/PaintCommandType;->numOfStringParams:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/swype/android/widget/PaintCommandType;->numOfIntParams:I

    if-ltz v0, :cond_e

    .line 49
    iget v0, p0, Lcom/swype/android/widget/PaintCommandType;->numOfStringParams:I

    iget v1, p0, Lcom/swype/android/widget/PaintCommandType;->numOfIntParams:I

    add-int/2addr v0, v1

    .line 52
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommandType;->name:Ljava/lang/String;

    return-object v0
.end method
