.class public LEa;
.super LDK;
.source "TimeKeyListener.java"


# static fields
.field private static a:LEa;

.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, LEa;->a:[C

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
        0x61t 0x0t
        0x6dt 0x0t
        0x70t 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, LDK;-><init>()V

    return-void
.end method

.method public static a()LEa;
    .registers 1

    .prologue
    .line 40
    sget-object v0, LEa;->a:LEa;

    if-eqz v0, :cond_7

    .line 41
    sget-object v0, LEa;->a:LEa;

    .line 44
    :goto_6
    return-object v0

    .line 43
    :cond_7
    new-instance v0, LEa;

    invoke-direct {v0}, LEa;-><init>()V

    sput-object v0, LEa;->a:LEa;

    .line 44
    sget-object v0, LEa;->a:LEa;

    goto :goto_6
.end method


# virtual methods
.method protected a()[C
    .registers 2

    .prologue
    .line 36
    sget-object v0, LEa;->a:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 29
    const/16 v0, 0x24

    return v0
.end method
