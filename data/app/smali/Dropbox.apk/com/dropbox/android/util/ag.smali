.class final Lcom/dropbox/android/util/ag;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field a:J

.field b:I

.field c:I


# direct methods
.method constructor <init>(JII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/dropbox/android/util/ag;->a:J

    .line 93
    iput p3, p0, Lcom/dropbox/android/util/ag;->b:I

    .line 94
    iput p4, p0, Lcom/dropbox/android/util/ag;->c:I

    .line 95
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    iget-wide v0, p0, Lcom/dropbox/android/util/ag;->a:J

    div-long v0, p3, v0

    .line 103
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_28

    .line 104
    :cond_13
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    iget v0, p0, Lcom/dropbox/android/util/ag;->c:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p2, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_27
    return-object v0

    :cond_28
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/dropbox/android/util/ag;->b:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method final a(J)Z
    .registers 5
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/dropbox/android/util/ag;->a:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
