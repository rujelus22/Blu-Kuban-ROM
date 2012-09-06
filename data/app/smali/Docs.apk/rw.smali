.class Lrw;
.super LTu;
.source "ProgressSyncMonitor.java"


# instance fields
.field private final a:LZN;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;LZN;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, LTu;-><init>()V

    .line 27
    sget v0, LcY;->download_bytes_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrw;->a:Ljava/lang/String;

    .line 28
    sget v0, LcY;->download_bytes_format_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrw;->b:Ljava/lang/String;

    .line 29
    sget v0, LcY;->download_megabytes_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrw;->c:Ljava/lang/String;

    .line 30
    sget v0, LcY;->download_megabytes_format_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrw;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lrw;->a:LZN;

    .line 32
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    long-to-double v0, p1

    const-wide/high16 v2, 0x4130

    cmpg-double v0, v0, v2

    if-gez v0, :cond_18

    .line 59
    iget-object v0, p0, Lrw;->b:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lrw;->d:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lrw;->b(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private a(JJ)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    const-wide/high16 v0, 0x4059

    long-to-double v2, p1

    mul-double/2addr v0, v2

    long-to-double v2, p3

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 49
    long-to-double v1, p3

    const-wide/high16 v3, 0x4130

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2d

    .line 50
    iget-object v1, p0, Lrw;->a:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v1, p0, Lrw;->c:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lrw;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, p3, p4}, Lrw;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method private b(J)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    .line 66
    .line 67
    long-to-double v0, p1

    const-wide/high16 v2, 0x4164

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b

    .line 68
    const/4 v0, 0x2

    .line 75
    :goto_8
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 77
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 78
    long-to-double v2, p1

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1b
    long-to-double v0, p1

    const-wide/high16 v2, 0x4199

    cmpg-double v0, v0, v2

    if-gez v0, :cond_24

    .line 70
    const/4 v0, 0x1

    goto :goto_8

    .line 72
    :cond_24
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a(JJ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lrw;->a:LZN;

    if-nez v0, :cond_5

    .line 45
    :goto_4
    return-void

    .line 40
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_17

    invoke-direct {p0, p1, p2, p3, p4}, Lrw;->a(JJ)Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_f
    iget-object v0, p0, Lrw;->a:LZN;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, LZN;->a(JJLjava/lang/String;)V

    goto :goto_4

    .line 40
    :cond_17
    invoke-direct {p0, p1, p2}, Lrw;->a(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_f
.end method
