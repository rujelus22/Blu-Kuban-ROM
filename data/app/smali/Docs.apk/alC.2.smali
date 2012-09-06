.class public final LalC;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "LalC;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:LalC;

.field public static final b:LalC;

.field public static final c:LalC;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, LalC;->a(I)LalC;

    move-result-object v0

    sput-object v0, LalC;->a:LalC;

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, LalC;->a(I)LalC;

    move-result-object v0

    sput-object v0, LalC;->b:LalC;

    .line 45
    const/4 v0, -0x1

    invoke-static {v0}, LalC;->a(I)LalC;

    move-result-object v0

    sput-object v0, LalC;->c:LalC;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 50
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, LalC;->a:I

    .line 51
    return-void
.end method

.method public static a(I)LalC;
    .registers 2
    .parameter

    .prologue
    .line 58
    new-instance v0, LalC;

    invoke-direct {v0, p0}, LalC;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)LalC;
    .registers 2
    .parameter

    .prologue
    .line 92
    const/16 v0, 0xa

    invoke-static {p0, v0}, LalC;->a(Ljava/lang/String;I)LalC;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)LalC;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p0, p1}, LalD;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, LalC;->a(I)LalC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(LalC;)I
    .registers 4
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget v0, p0, LalC;->a:I

    iget v1, p1, LalC;->a:I

    invoke-static {v0, v1}, LalD;->a(II)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 234
    iget v0, p0, LalC;->a:I

    invoke-static {v0, p1}, LalD;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, LalC;

    invoke-virtual {p0, p1}, LalC;->a(LalC;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, LalC;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    instance-of v1, p1, LalC;

    if-eqz v1, :cond_e

    .line 214
    check-cast p1, LalC;

    .line 215
    iget v1, p0, LalC;->a:I

    iget v2, p1, LalC;->a:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 217
    :cond_e
    return v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, LalC;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, LalC;->a:I

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, LalC;->a:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 167
    iget v0, p0, LalC;->a:I

    invoke-static {v0}, LalD;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LalC;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
