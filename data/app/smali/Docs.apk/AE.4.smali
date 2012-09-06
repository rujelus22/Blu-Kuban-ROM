.class public LAE;
.super Ljava/lang/Object;
.source "SelectionPopupPositioningStrategy.java"

# interfaces
.implements LAD;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, LAE;->b:I

    .line 52
    iput p2, p0, LAE;->a:I

    .line 53
    return-void
.end method

.method private a(II)LAA;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    if-ne p1, p2, :cond_5

    .line 89
    sget-object v0, LAA;->a:LAA;

    .line 91
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, LAA;->b:LAA;

    goto :goto_4
.end method

.method private a(IIII)LAI;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-ne p1, p2, :cond_a

    .line 98
    if-ne p1, p3, :cond_7

    .line 99
    sget-object v0, LAI;->b:LAI;

    .line 108
    :goto_6
    return-object v0

    .line 101
    :cond_7
    sget-object v0, LAI;->a:LAI;

    goto :goto_6

    .line 103
    :cond_a
    if-gt p1, p3, :cond_11

    if-lt p2, p4, :cond_11

    .line 104
    sget-object v0, LAI;->c:LAI;

    goto :goto_6

    .line 105
    :cond_11
    if-gt p1, p3, :cond_16

    .line 106
    sget-object v0, LAI;->b:LAI;

    goto :goto_6

    .line 108
    :cond_16
    sget-object v0, LAI;->a:LAI;

    goto :goto_6
.end method

.method private a(LAu;LFt;I)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3e80

    .line 118
    invoke-virtual {p2}, LFt;->a()I

    move-result v1

    invoke-interface {p1, v1}, LAu;->d(I)I

    move-result v1

    .line 119
    invoke-virtual {p2}, LFt;->b()I

    move-result v2

    invoke-interface {p1, v2}, LAu;->d(I)I

    move-result v2

    .line 120
    invoke-virtual {p2}, LFt;->a()I

    move-result v3

    invoke-interface {p1, v3}, LAu;->a(I)I

    move-result v3

    .line 121
    invoke-virtual {p2}, LFt;->b()I

    move-result v4

    invoke-interface {p1, v4}, LAu;->a(I)I

    move-result v4

    .line 123
    if-ne v1, v2, :cond_38

    .line 124
    iget v1, p0, LAE;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 125
    iget v2, p0, LAE;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 127
    sub-int v3, v4, v3

    int-to-float v3, v3

    int-to-float v4, p3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5d

    .line 142
    :cond_37
    :goto_37
    return v0

    .line 131
    :cond_38
    invoke-interface {p1}, LAu;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 132
    div-int/lit8 v2, p3, 0x2

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f40

    iget v5, p0, LAE;->b:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 134
    div-int/lit8 v3, p3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, LAE;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    .line 137
    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5d

    int-to-float v2, v4

    cmpg-float v1, v2, v1

    if-lez v1, :cond_37

    .line 142
    :cond_5d
    const/4 v0, 0x0

    goto :goto_37
.end method


# virtual methods
.method public a(LAu;LFt;II)Landroid/graphics/Point;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, LFt;->a()I

    move-result v0

    invoke-interface {p1, v0}, LAu;->d(I)I

    move-result v0

    .line 59
    invoke-virtual {p2}, LFt;->b()I

    move-result v1

    invoke-interface {p1, v1}, LAu;->d(I)I

    move-result v1

    .line 60
    invoke-interface {p1}, LAu;->c()I

    move-result v2

    .line 61
    invoke-interface {p1}, LAu;->d()I

    move-result v3

    .line 63
    if-gt v0, v3, :cond_1c

    if-ge v1, v2, :cond_1e

    .line 64
    :cond_1c
    const/4 v0, 0x0

    .line 83
    :goto_1d
    return-object v0

    .line 67
    :cond_1e
    invoke-direct {p0, v0, v1}, LAE;->a(II)LAA;

    move-result-object v4

    .line 69
    invoke-direct {p0, v0, v1, v2, v3}, LAE;->a(IIII)LAI;

    move-result-object v1

    .line 73
    invoke-virtual {v4, p1, p2, p3, p4}, LAA;->a(LAu;LFt;II)I

    move-result v2

    .line 75
    invoke-virtual {v1, p1, p2, p3, p4}, LAI;->a(LAu;LFt;II)I

    move-result v0

    .line 78
    sget-object v3, LAI;->b:LAI;

    if-ne v1, v3, :cond_3b

    invoke-direct {p0, p1, p2, p3}, LAE;->a(LAu;LFt;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 80
    iget v1, p0, LAE;->a:I

    add-int/2addr v0, v1

    .line 83
    :cond_3b
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    goto :goto_1d
.end method
