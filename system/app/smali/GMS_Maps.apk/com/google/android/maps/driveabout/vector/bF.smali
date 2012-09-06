.class public Lcom/google/android/maps/driveabout/vector/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:[I

.field private h:Z


# direct methods
.method constructor <init>(IIIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->g:[I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->h:Z

    .line 163
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:I

    .line 164
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:I

    .line 165
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    .line 166
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    .line 167
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/bf;->e:I

    .line 168
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/bf;->f:I

    .line 169
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bf;)V
    .registers 9
    .parameter

    .prologue
    .line 176
    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bf;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bf;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    iget v5, p1, Lcom/google/android/maps/driveabout/vector/bf;->e:I

    iget v6, p1, Lcom/google/android/maps/driveabout/vector/bf;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bf;-><init>(IIIIII)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/bf;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    return v0
.end method


# virtual methods
.method a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bf;->h:Z

    .line 186
    return-void
.end method

.method a()[I
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->g:[I

    if-nez v0, :cond_5e

    .line 193
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->h:Z

    if-eqz v0, :cond_61

    .line 194
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->g:[I

    .line 216
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->g:[I

    return-object v0

    .line 205
    :cond_61
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bf;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bf;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bf;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bf;->g:[I

    goto :goto_5e
.end method
