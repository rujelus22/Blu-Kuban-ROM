.class public Lcom/google/commerce/wireless/topiary/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/commerce/wireless/topiary/S;

.field private b:Lcom/google/commerce/wireless/topiary/W;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/commerce/wireless/topiary/S;)V
    .registers 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, Lcom/google/commerce/wireless/topiary/V;->c:J

    .line 37
    iput-wide v0, p0, Lcom/google/commerce/wireless/topiary/V;->d:J

    .line 40
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/V;->a:Lcom/google/commerce/wireless/topiary/S;

    .line 41
    sget-object v0, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/V;->b:Lcom/google/commerce/wireless/topiary/W;

    .line 42
    return-void
.end method

.method public static a(J)Z
    .registers 4
    .parameter

    .prologue
    .line 78
    const-wide/16 v0, 0x12c

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a()Lcom/google/commerce/wireless/topiary/W;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/V;->b:Lcom/google/commerce/wireless/topiary/W;

    return-object v0
.end method

.method public a(Lcom/google/commerce/wireless/topiary/W;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/V;->b:Lcom/google/commerce/wireless/topiary/W;

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    if-eq v0, v1, :cond_10

    sget-object v0, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    if-ne p1, v0, :cond_10

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/commerce/wireless/topiary/V;->c:J

    .line 54
    :cond_10
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/V;->b:Lcom/google/commerce/wireless/topiary/W;

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    if-eq v0, v1, :cond_20

    sget-object v0, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    if-ne p1, v0, :cond_20

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/commerce/wireless/topiary/V;->d:J

    .line 58
    :cond_20
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/V;->b:Lcom/google/commerce/wireless/topiary/W;

    .line 59
    return-void
.end method

.method public b()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    iget-wide v2, p0, Lcom/google/commerce/wireless/topiary/V;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 66
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/commerce/wireless/topiary/V;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_8
.end method

.method public c()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 71
    iget-wide v2, p0, Lcom/google/commerce/wireless/topiary/V;->d:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 74
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/commerce/wireless/topiary/V;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_8
.end method
