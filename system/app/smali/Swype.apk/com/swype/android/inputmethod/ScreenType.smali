.class public final enum Lcom/swype/android/inputmethod/ScreenType;
.super Ljava/lang/Enum;
.source "ScreenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/inputmethod/ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum HD720:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum HD900:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum HVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum QVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum SVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum VGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WQVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WSVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WVGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WVGA854:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WXGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum WXGA53:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum XGA:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum nHD:Lcom/swype/android/inputmethod/ScreenType;

.field public static final enum qHD:Lcom/swype/android/inputmethod/ScreenType;


# instance fields
.field private fontFlags:I

.field private height:I

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 13
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "UNKNOWN"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

    .line 14
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "HVGA"

    const/4 v2, 0x1

    const/16 v3, 0x140

    const/16 v4, 0x1e0

    const-string v5, "HVGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->HVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 15
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "QVGA"

    const/4 v2, 0x2

    const/16 v3, 0xf0

    const/16 v4, 0x140

    const-string v5, "QVGA"

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->QVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 16
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WQVGA"

    const/4 v2, 0x3

    const/16 v3, 0xf0

    const/16 v4, 0x190

    const-string v5, "WQVGA"

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WQVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 17
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "VGA"

    const/4 v2, 0x4

    const/16 v3, 0x1e0

    const/16 v4, 0x280

    const-string v5, "VGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->VGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 18
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WVGA"

    const/4 v2, 0x5

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    const-string v5, "WVGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 19
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WVGA854"

    const/4 v2, 0x6

    const/16 v3, 0x1e0

    const/16 v4, 0x356

    const-string v5, "WVGA854"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WVGA854:Lcom/swype/android/inputmethod/ScreenType;

    .line 20
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WSVGA"

    const/4 v2, 0x7

    const/16 v3, 0x258

    const/16 v4, 0x400

    const-string v5, "WSVGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WSVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 21
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "SVGA"

    const/16 v2, 0x8

    const/16 v3, 0x258

    const/16 v4, 0x320

    const-string v5, "SVGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->SVGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 22
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "nHD"

    const/16 v2, 0x9

    const/16 v3, 0x168

    const/16 v4, 0x280

    const-string v5, "nHD"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->nHD:Lcom/swype/android/inputmethod/ScreenType;

    .line 23
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "qHD"

    const/16 v2, 0xa

    const/16 v3, 0x21c

    const/16 v4, 0x3c0

    const-string v5, "qHD"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->qHD:Lcom/swype/android/inputmethod/ScreenType;

    .line 24
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WXGA"

    const/16 v2, 0xb

    const/16 v3, 0x320

    const/16 v4, 0x500

    const-string v5, "WXGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WXGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 25
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "WXGA53"

    const/16 v2, 0xc

    const/16 v3, 0x300

    const/16 v4, 0x500

    const-string v5, "WXGA53"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->WXGA53:Lcom/swype/android/inputmethod/ScreenType;

    .line 26
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "XGA"

    const/16 v2, 0xd

    const/16 v3, 0x300

    const/16 v4, 0x400

    const-string v5, "XGA"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->XGA:Lcom/swype/android/inputmethod/ScreenType;

    .line 27
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "HD720"

    const/16 v2, 0xe

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    const-string v5, "HD720"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->HD720:Lcom/swype/android/inputmethod/ScreenType;

    .line 28
    new-instance v0, Lcom/swype/android/inputmethod/ScreenType;

    const-string v1, "HD900"

    const/16 v2, 0xf

    const/16 v3, 0x384

    const/16 v4, 0x640

    const-string v5, "HD900"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/inputmethod/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->HD900:Lcom/swype/android/inputmethod/ScreenType;

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/swype/android/inputmethod/ScreenType;

    const/4 v1, 0x0

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->HVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->QVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WQVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->VGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WVGA854:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WSVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->SVGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->nHD:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->qHD:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WXGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->WXGA53:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->XGA:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->HD720:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->HD900:Lcom/swype/android/inputmethod/ScreenType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/inputmethod/ScreenType;->$VALUES:[Lcom/swype/android/inputmethod/ScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "name"
    .parameter "fontFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/swype/android/inputmethod/ScreenType;->width:I

    .line 43
    iput p4, p0, Lcom/swype/android/inputmethod/ScreenType;->height:I

    .line 44
    iput-object p5, p0, Lcom/swype/android/inputmethod/ScreenType;->name:Ljava/lang/String;

    .line 45
    iput p6, p0, Lcom/swype/android/inputmethod/ScreenType;->fontFlags:I

    .line 46
    return-void
.end method

.method public static fromDimension(II)Lcom/swype/android/inputmethod/ScreenType;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/swype/android/inputmethod/ScreenType;->UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

    .line 67
    invoke-static {}, Lcom/swype/android/inputmethod/ScreenType;->values()[Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v7, v3

    move-object v3, v0

    move v0, v7

    :goto_b
    if-ge v0, v2, :cond_49

    aget-object v4, v1, v0

    .line 68
    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->width:I

    if-ne v5, p0, :cond_19

    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->height:I

    if-ne v5, p1, :cond_19

    move-object v0, v4

    .line 86
    :goto_18
    return-object v0

    .line 71
    :cond_19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_34

    sget-object v5, Lcom/swype/android/inputmethod/ScreenType;->UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

    if-ne v5, v3, :cond_34

    .line 77
    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->width:I

    if-le v5, p0, :cond_37

    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->width:I

    mul-int/lit8 v6, p0, 0x6e

    div-int/lit8 v6, v6, 0x64

    if-gt v5, v6, :cond_37

    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->height:I

    if-ne v5, p1, :cond_37

    move-object v3, v4

    .line 67
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 80
    :cond_37
    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->height:I

    if-le v5, p1, :cond_34

    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->height:I

    mul-int/lit8 v6, p1, 0x6e

    div-int/lit8 v6, v6, 0x64

    if-gt v5, v6, :cond_34

    iget v5, v4, Lcom/swype/android/inputmethod/ScreenType;->width:I

    if-ne v5, p0, :cond_34

    move-object v3, v4

    .line 82
    goto :goto_34

    :cond_49
    move-object v0, v3

    .line 86
    goto :goto_18
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/inputmethod/ScreenType;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/swype/android/inputmethod/ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/inputmethod/ScreenType;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/swype/android/inputmethod/ScreenType;->$VALUES:[Lcom/swype/android/inputmethod/ScreenType;

    invoke-virtual {v0}, [Lcom/swype/android/inputmethod/ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/inputmethod/ScreenType;

    return-object v0
.end method


# virtual methods
.method public final getFontFlags()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenType;->fontFlags:I

    return v0
.end method

.method public final getHeight()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenType;->height:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/swype/android/inputmethod/ScreenType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenType;->width:I

    return v0
.end method
