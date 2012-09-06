.class LFK;
.super Ljava/lang/Object;
.source "ImageFetcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "LFK;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final a:J

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, LFK;->a:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, LFK;->b:I

    .line 62
    iput p2, p0, LFK;->c:I

    .line 63
    int-to-long v0, p3

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget v2, LFK;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, LFK;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, LFK;->a:J

    .line 64
    return-void
.end method

.method static synthetic b(LFK;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, LFK;->b:I

    return v0
.end method

.method static synthetic c(LFK;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, LFK;->c:I

    return v0
.end method


# virtual methods
.method public a(LFK;)I
    .registers 6
    .parameter

    .prologue
    .line 68
    iget-wide v0, p1, LFK;->a:J

    iget-wide v2, p0, LFK;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, LFK;->a:J

    iget-wide v2, p0, LFK;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 54
    check-cast p1, LFK;

    invoke-virtual {p0, p1}, LFK;->a(LFK;)I

    move-result v0

    return v0
.end method
