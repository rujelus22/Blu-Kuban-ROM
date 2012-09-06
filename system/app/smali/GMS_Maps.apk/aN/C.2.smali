.class public Lan/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lan/C;->c:Z

    .line 67
    iput-boolean v0, p0, Lan/C;->d:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lan/C;->b:J

    .line 77
    iput-object p1, p0, Lan/C;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 103
    const/16 v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lan/C;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 86
    if-nez p1, :cond_4

    .line 100
    :cond_3
    :goto_3
    return-void

    .line 89
    :cond_4
    iget-boolean v0, p0, Lan/C;->c:Z

    if-nez v0, :cond_22

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lan/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lan/C;->a(Ljava/lang/String;)V

    .line 91
    iput-boolean v4, p0, Lan/C;->c:Z

    .line 96
    :cond_22
    iget-boolean v0, p0, Lan/C;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lan/C;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lan/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lan/C;->a(Ljava/lang/String;)V

    .line 98
    iput-boolean v4, p0, Lan/C;->d:Z

    goto :goto_3
.end method
