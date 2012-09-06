.class abstract Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/TextRenderer;


# static fields
.field static final defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme; = null

.field protected static final mCursorPaint:I = -0x7f7f80


# instance fields
.field protected mBackPaint:[I

.field protected mForePaint:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1269
    new-instance v0, Ljackpal/androidterm/emulatorview/ColorScheme;

    const/4 v1, 0x7

    const v2, -0x333334

    const/4 v3, 0x0

    const/high16 v4, -0x100

    invoke-direct {v0, v1, v2, v3, v4}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>(IIII)V

    sput-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    return-void
.end method

.method public constructor <init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 6
    .parameter "scheme"

    .prologue
    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mForePaint:[I

    .line 1258
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mBackPaint:[I

    .line 1273
    if-nez p1, :cond_19

    .line 1274
    sget-object p1, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 1276
    :cond_19
    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getForeColorIndex()I

    move-result v0

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getForeColor()I

    move-result v1

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getBackColorIndex()I

    move-result v2

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->setDefaultColors(IIII)V

    .line 1278
    return-void

    .line 1240
    nop

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0xcct 0xfft
        0x0t 0xcct 0x0t 0xfft
        0x0t 0xcct 0xcct 0xfft
        0xcct 0x0t 0x0t 0xfft
        0xcct 0x0t 0xcct 0xfft
        0xcct 0xcct 0x0t 0xfft
        0xcct 0xcct 0xcct 0xfft
        0x66t 0x66t 0x66t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 1258
    :array_52
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0xcct 0xfft
        0x0t 0xcct 0x0t 0xfft
        0x0t 0xcct 0xcct 0xfft
        0xcct 0x0t 0x0t 0xfft
        0xcct 0x0t 0xfft 0xfft
        0xcct 0xcct 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private setDefaultColors(IIII)V
    .registers 6
    .parameter "forePaintIndex"
    .parameter "forePaintColor"
    .parameter "backPaintIndex"
    .parameter "backPaintColor"

    .prologue
    .line 1282
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mForePaint:[I

    aput p2, v0, p1

    .line 1283
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mBackPaint:[I

    aput p4, v0, p3

    .line 1284
    return-void
.end method
