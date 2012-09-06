.class public LDV;
.super LDR;
.source "SingleLineTransformationMethod.java"


# static fields
.field private static a:LDV;

.field private static a:[C

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 27
    new-array v0, v1, [C

    fill-array-data v0, :array_10

    sput-object v0, LDV;->a:[C

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_16

    sput-object v0, LDV;->b:[C

    return-void

    .line 27
    :array_10
    .array-data 0x2
        0xat 0x0t
        0xdt 0x0t
    .end array-data

    .line 28
    :array_16
    .array-data 0x2
        0x20t 0x0t
        0xfft 0xfet
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, LDR;-><init>()V

    return-void
.end method

.method public static a()LDV;
    .registers 1

    .prologue
    .line 48
    sget-object v0, LDV;->a:LDV;

    if-eqz v0, :cond_7

    .line 49
    sget-object v0, LDV;->a:LDV;

    .line 52
    :goto_6
    return-object v0

    .line 51
    :cond_7
    new-instance v0, LDV;

    invoke-direct {v0}, LDV;-><init>()V

    sput-object v0, LDV;->a:LDV;

    .line 52
    sget-object v0, LDV;->a:LDV;

    goto :goto_6
.end method


# virtual methods
.method protected a()[C
    .registers 2

    .prologue
    .line 35
    sget-object v0, LDV;->a:[C

    return-object v0
.end method

.method protected b()[C
    .registers 2

    .prologue
    .line 44
    sget-object v0, LDV;->b:[C

    return-object v0
.end method
