.class public LZ/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:J


# direct methods
.method public constructor <init>(IIIIZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, LZ/a;->a:I

    .line 97
    iput p2, p0, LZ/a;->b:I

    .line 98
    iput p4, p0, LZ/a;->c:I

    .line 99
    iput p3, p0, LZ/a;->d:I

    .line 100
    iput-boolean p5, p0, LZ/a;->e:Z

    .line 102
    invoke-static {}, LZ/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, LZ/a;->f:J

    .line 103
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LZ/a;-><init>(IIIIZ)V

    .line 80
    return-void
.end method

.method private static f()J
    .registers 2

    .prologue
    .line 106
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_f

    .line 108
    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 111
    :goto_e
    return-wide v0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, LZ/a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, LZ/a;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, LZ/a;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, LZ/a;->e:Z

    return v0
.end method

.method public e()C
    .registers 2

    .prologue
    .line 186
    iget v0, p0, LZ/a;->b:I

    int-to-char v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 255
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
