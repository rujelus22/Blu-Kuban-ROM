.class public LFV;
.super Ljava/lang/Object;
.source "TouchImageViewHelperImpl.java"

# interfaces
.implements LFJ;
.implements LFT;


# instance fields
.field private final a:I

.field private final a:LFG;

.field private final a:LFW;

.field private b:I

.field private final b:LFG;

.field private c:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/accounts/Account;LFW;Ljava/lang/String;LIL;LXP;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, LFV;->b:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, LFV;->c:I

    .line 47
    iput-object p4, p0, LFV;->a:LFW;

    .line 48
    iput p1, p0, LFV;->a:I

    .line 49
    new-instance v0, LFG;

    const/4 v4, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, LFG;-><init>(Landroid/content/Context;Landroid/accounts/Account;LFJ;ILjava/lang/String;LIL;LXP;)V

    iput-object v0, p0, LFV;->a:LFG;

    .line 50
    new-instance v0, LFG;

    const/4 v4, 0x4

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, LFG;-><init>(Landroid/content/Context;Landroid/accounts/Account;LFJ;ILjava/lang/String;LIL;LXP;)V

    iput-object v0, p0, LFV;->b:LFG;

    .line 54
    const/4 v0, 0x0

    :goto_2a
    const/16 v1, 0x14

    if-ge v0, v1, :cond_36

    .line 55
    rsub-int/lit8 v1, v0, 0x14

    invoke-direct {p0, v0, v1}, LFV;->a(II)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 57
    :cond_36
    return-void
.end method

.method private a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 140
    if-ltz p1, :cond_f

    invoke-virtual {p0}, LFV;->a()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 141
    iget-object v0, p0, LFV;->b:LFG;

    const/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, p2}, LFG;->a(III)Z

    .line 143
    :cond_f
    return-void
.end method

.method private a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    if-ltz p1, :cond_d

    invoke-virtual {p0}, LFV;->a()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 135
    iget-object v0, p0, LFV;->a:LFG;

    invoke-virtual {v0, p1, p2, p3}, LFG;->a(III)Z

    .line 137
    :cond_d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, LFV;->a:I

    return v0
.end method

.method public declared-synchronized a(ILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v9, 0x4000

    const v8, 0x7fffffff

    .line 67
    monitor-enter p0

    .line 68
    const-wide/high16 v2, 0x4000

    float-to-double v4, p3

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 70
    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v2, v9

    const-wide/high16 v6, 0x3fc0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 75
    const-wide/high16 v4, 0x4099

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    .line 78
    iget v0, p0, LFV;->b:I

    if-ne v0, p1, :cond_3d

    iget v0, p0, LFV;->c:I
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_b6

    if-lt v0, v3, :cond_3d

    .line 130
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-object p2

    .line 82
    :cond_3d
    :try_start_3d
    iget v0, p0, LFV;->b:I

    if-eq p1, v0, :cond_49

    .line 84
    iget-object v0, p0, LFV;->a:LFG;

    invoke-virtual {v0}, LFG;->b()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, LFV;->c:I

    .line 88
    :cond_49
    iget-object v0, p0, LFV;->a:LFG;

    iget v2, p0, LFV;->c:I

    invoke-virtual {v0, p1, v2}, LFG;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    if-nez v0, :cond_8d

    .line 90
    const/16 v0, 0xc8

    if-eq v3, v0, :cond_5d

    .line 91
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v3, v0}, LFV;->a(III)V

    .line 95
    :cond_5d
    if-eqz p2, :cond_63

    iget v0, p0, LFV;->b:I

    if-eq v0, p1, :cond_3b

    .line 99
    :cond_63
    iget-object v0, p0, LFV;->b:LFG;

    invoke-virtual {v0, p1}, LFG;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    if-nez v0, :cond_71

    .line 101
    const v1, 0x7fffffff

    invoke-direct {p0, p1, v1}, LFV;->a(II)V

    .line 118
    :cond_71
    if-eqz v0, :cond_89

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa0

    div-int/lit16 v1, v1, 0x640

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 122
    if-eqz p2, :cond_83

    .line 123
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, LFV;->c:I

    .line 128
    :cond_89
    iput p1, p0, LFV;->b:I

    move-object p2, v0

    .line 130
    goto :goto_3b

    :cond_8d
    move v2, v1

    .line 106
    :goto_8e
    if-gt v2, v1, :cond_a1

    .line 107
    sub-int v4, p1, v2

    sub-int v5, v8, v2

    invoke-direct {p0, v4, v3, v5}, LFV;->a(III)V

    .line 108
    add-int v4, p1, v2

    sub-int v5, v8, v2

    invoke-direct {p0, v4, v3, v5}, LFV;->a(III)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 112
    :cond_a1
    :goto_a1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_71

    .line 113
    sub-int v2, p1, v1

    sub-int v3, v8, v1

    invoke-direct {p0, v2, v3}, LFV;->a(II)V

    .line 114
    add-int v2, p1, v1

    sub-int v3, v8, v1

    invoke-direct {p0, v2, v3}, LFV;->a(II)V
    :try_end_b3
    .catchall {:try_start_3d .. :try_end_b3} :catchall_b6

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 67
    :catchall_b6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, LFV;->a:LFG;

    invoke-virtual {v0}, LFG;->b()V

    .line 162
    iget-object v0, p0, LFV;->b:LFG;

    invoke-virtual {v0}, LFG;->b()V

    .line 163
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, LFV;->a:LFW;

    invoke-virtual {p0}, LFV;->a()I

    move-result v1

    invoke-interface {v0, p1, v1}, LFW;->a(II)V

    .line 63
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    iget v0, p0, LFV;->b:I

    if-ne p1, v0, :cond_9

    .line 153
    iget-object v0, p0, LFV;->a:LFW;

    invoke-interface {v0}, LFW;->e()V

    .line 155
    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, LFV;->a:LFG;

    invoke-virtual {v0}, LFG;->a()V

    .line 170
    iget-object v0, p0, LFV;->b:LFG;

    invoke-virtual {v0}, LFG;->a()V

    .line 171
    return-void
.end method
