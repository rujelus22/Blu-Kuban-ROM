.class public LZT;
.super Ljava/lang/Object;
.source "RelativeDateFormatter.java"


# instance fields
.field private final a:J

.field private final a:Landroid/content/Context;

.field private final a:Landroid/text/format/Time;

.field private final b:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/text/format/Time;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, LZT;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, LZT;->a:Landroid/text/format/Time;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, LZT;->a:J

    .line 36
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, LZT;->b:Landroid/text/format/Time;

    .line 37
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const v0, 0x10a01

    .line 50
    iget-object v1, p0, LZT;->b:Landroid/text/format/Time;

    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 55
    invoke-virtual {p0, p1, p2}, LZT;->a(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 69
    :cond_e
    :goto_e
    iget-object v1, p0, LZT;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_15
    iget-object v1, p0, LZT;->b:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    iget-object v2, p0, LZT;->a:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-eq v1, v2, :cond_23

    .line 60
    const v0, 0x10a14

    goto :goto_e

    .line 61
    :cond_23
    iget-object v1, p0, LZT;->b:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    iget-object v2, p0, LZT;->a:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v1, v2, :cond_e

    .line 63
    const v0, 0x10a18

    goto :goto_e
.end method

.method a(J)Z
    .registers 7
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, LZT;->a:J

    const-wide/32 v2, 0x1499700

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
