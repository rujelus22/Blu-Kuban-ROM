.class public LDC;
.super LDK;
.source "DialerKeyListener.java"


# static fields
.field private static a:LDC;

.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, LDC;->a:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, LDK;-><init>()V

    return-void
.end method

.method public static a()LDC;
    .registers 1

    .prologue
    .line 36
    sget-object v0, LDC;->a:LDC;

    if-eqz v0, :cond_7

    .line 37
    sget-object v0, LDC;->a:LDC;

    .line 40
    :goto_6
    return-object v0

    .line 39
    :cond_7
    new-instance v0, LDC;

    invoke-direct {v0}, LDC;-><init>()V

    sput-object v0, LDC;->a:LDC;

    .line 40
    sget-object v0, LDC;->a:LDC;

    goto :goto_6
.end method


# virtual methods
.method protected a(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {p2}, LDC;->a(Ljava/lang/CharSequence;)I

    move-result v1

    or-int v2, v0, v1

    .line 55
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v1

    .line 61
    and-int/lit8 v0, v2, 0x3

    if-nez v0, :cond_16

    .line 62
    if-eqz v1, :cond_16

    move v0, v1

    .line 98
    :cond_15
    :goto_15
    return v0

    .line 67
    :cond_16
    invoke-super {p0, p1, p2}, LDK;->a(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v0

    .line 69
    if-nez v0, :cond_15

    .line 79
    if-eqz v2, :cond_45

    .line 80
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 81
    invoke-virtual {p0}, LDC;->a()[C

    move-result-object v3

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 84
    const/4 v0, 0x1

    :goto_2e
    iget-object v4, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v4, v4

    if-ge v0, v4, :cond_45

    .line 85
    iget-object v4, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v4, v4, v0

    invoke-static {v3, v4}, LDC;->a([CC)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 86
    iget-object v1, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v0, v1, v0

    goto :goto_15

    .line 84
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_45
    move v0, v1

    .line 98
    goto :goto_15
.end method

.method protected a()[C
    .registers 2

    .prologue
    .line 32
    sget-object v0, LDC;->a:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x3

    return v0
.end method
