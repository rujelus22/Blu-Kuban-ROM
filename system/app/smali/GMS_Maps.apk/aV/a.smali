.class public LaV/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaV/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lba/e;

.field private c:LaZ/a;

.field private d:LaW/d;

.field private e:LaX/b;

.field private f:LaY/a;

.field private g:F

.field private h:Z

.field private i:Z

.field private final j:I

.field private final k:I

.field private l:Lbb/a;

.field private m:Lcom/google/googlenav/wallpaper/i;

.field private final n:Landroid/os/Handler;

.field private o:LaV/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/i;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lbb/a;

    invoke-direct {v0}, Lbb/a;-><init>()V

    iput-object v0, p0, LaV/a;->l:Lbb/a;

    .line 70
    new-instance v0, LaV/b;

    invoke-direct {v0, p0}, LaV/b;-><init>(LaV/a;)V

    iput-object v0, p0, LaV/a;->n:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, LaV/a;->a:Landroid/content/Context;

    .line 84
    iput-object p4, p0, LaV/a;->m:Lcom/google/googlenav/wallpaper/i;

    .line 85
    iput p2, p0, LaV/a;->j:I

    .line 86
    iput p3, p0, LaV/a;->k:I

    .line 88
    new-instance v0, LaV/d;

    invoke-direct {v0, p0}, LaV/d;-><init>(LaV/f;)V

    iput-object v0, p0, LaV/a;->o:LaV/d;

    .line 89
    iget-object v0, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v0}, LaV/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 90
    invoke-direct {p0}, LaV/a;->b()V

    .line 92
    :cond_2b
    return-void
.end method

.method static synthetic a(LaV/a;)Lcom/google/googlenav/wallpaper/i;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, LaV/a;->m:Lcom/google/googlenav/wallpaper/i;

    return-object v0
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v0, Lba/e;

    iget-object v1, p0, LaV/a;->a:Landroid/content/Context;

    iget v2, p0, LaV/a;->j:I

    iget v3, p0, LaV/a;->k:I

    invoke-direct {p0}, LaV/a;->c()[Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lba/e;-><init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LaV/a;->b:Lba/e;

    .line 96
    new-instance v0, LaZ/a;

    iget v1, p0, LaV/a;->j:I

    iget v2, p0, LaV/a;->k:I

    invoke-direct {v0, v1, v2}, LaZ/a;-><init>(II)V

    iput-object v0, p0, LaV/a;->c:LaZ/a;

    .line 97
    new-instance v0, LaW/d;

    iget v1, p0, LaV/a;->j:I

    iget v2, p0, LaV/a;->k:I

    iget-object v3, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v3}, LaV/d;->c()[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v4}, LaV/d;->e()[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v5}, LaV/d;->d()[Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-direct/range {v0 .. v5}, LaW/d;-><init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LaV/a;->d:LaW/d;

    .line 100
    new-instance v0, LaX/b;

    iget v1, p0, LaV/a;->j:I

    iget v2, p0, LaV/a;->k:I

    iget-object v3, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v3}, LaV/d;->f()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-direct {v0, v1, v2, v3}, LaX/b;-><init>(IILandroid/graphics/Bitmap;)V

    iput-object v0, p0, LaV/a;->e:LaX/b;

    .line 104
    new-instance v0, LaY/a;

    iget-object v1, p0, LaV/a;->a:Landroid/content/Context;

    iget v2, p0, LaV/a;->j:I

    const/high16 v3, 0x41c8

    iget-object v4, p0, LaV/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v4}, LaV/d;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LaY/a;-><init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, LaV/a;->f:LaY/a;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, LaV/a;->i:Z

    .line 109
    iget-object v0, p0, LaV/a;->m:Lcom/google/googlenav/wallpaper/i;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/i;->a()V

    .line 110
    return-void
.end method

.method private c()[Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/16 v9, 0x60

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, LaV/a;->o:LaV/d;

    invoke-virtual {v0}, LaV/d;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v3, v0, v1

    .line 117
    const/16 v0, 0x9

    new-array v4, v0, [Landroid/graphics/Bitmap;

    move v2, v1

    .line 118
    :goto_11
    if-ge v2, v8, :cond_2a

    move v0, v1

    .line 119
    :goto_14
    if-ge v0, v8, :cond_26

    .line 120
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v0

    .line 121
    mul-int/lit8 v6, v0, 0x60

    .line 122
    mul-int/lit8 v7, v2, 0x60

    .line 123
    invoke-static {v3, v6, v7, v9, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 124
    aput-object v6, v4, v5

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 118
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 127
    :cond_2a
    return-object v4
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 349
    invoke-direct {p0}, LaV/a;->b()V

    .line 350
    return-void
.end method

.method public a(F)V
    .registers 4
    .parameter

    .prologue
    .line 131
    iput p1, p0, LaV/a;->g:F

    .line 133
    iget-boolean v0, p0, LaV/a;->i:Z

    if-eqz v0, :cond_22

    .line 134
    iget-object v0, p0, LaV/a;->b:Lba/e;

    iget v1, p0, LaV/a;->g:F

    invoke-virtual {v0, v1}, Lba/e;->b(F)V

    .line 135
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    iget v1, p0, LaV/a;->g:F

    invoke-virtual {v0, v1}, LaZ/a;->a(F)V

    .line 136
    iget-object v0, p0, LaV/a;->d:LaW/d;

    iget v1, p0, LaV/a;->g:F

    invoke-virtual {v0, v1}, LaW/d;->a(F)V

    .line 137
    iget-object v0, p0, LaV/a;->f:LaY/a;

    iget v1, p0, LaV/a;->g:F

    invoke-virtual {v0, v1}, LaY/a;->a(F)V

    .line 139
    :cond_22
    return-void
.end method

.method public a(LaU/b;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    iget-boolean v0, p0, LaV/a;->i:Z

    if-nez v0, :cond_7

    .line 307
    :goto_6
    return-void

    .line 152
    :cond_7
    sget-object v0, LaU/c;->a:LaU/c;

    .line 153
    if-eqz p1, :cond_24

    .line 154
    iget-object v1, p1, LaU/b;->a:LaU/c;

    if-eqz v1, :cond_24

    .line 155
    iget-object v0, p1, LaU/b;->a:LaU/c;

    .line 158
    iget-object v1, p0, LaV/a;->f:LaY/a;

    iget-object v2, p1, LaU/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, LaY/a;->a(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, LaV/a;->f:LaY/a;

    iget-object v2, p1, LaU/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, LaY/a;->b(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, LaV/a;->f:LaY/a;

    invoke-virtual {v1, v0}, LaY/a;->a(LaU/c;)V

    .line 165
    :cond_24
    sget-object v1, LaV/c;->a:[I

    invoke-virtual {v0}, LaU/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1d4

    .line 306
    :goto_2f
    iget-object v0, p0, LaV/a;->m:Lcom/google/googlenav/wallpaper/i;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/i;->a()V

    goto :goto_6

    .line 167
    :pswitch_35
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 168
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 169
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 170
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto :goto_2f

    .line 175
    :pswitch_4a
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 176
    iget-object v0, p0, LaV/a;->d:LaW/d;

    sget-object v1, LaW/f;->b:LaW/f;

    sget-object v2, LaW/c;->a:LaW/c;

    invoke-virtual {v0, v1, v2, v3}, LaW/d;->a(LaW/f;LaW/c;Z)V

    .line 177
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 178
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto :goto_2f

    .line 182
    :pswitch_63
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 183
    iget-object v0, p0, LaV/a;->d:LaW/d;

    sget-object v1, LaW/f;->a:LaW/f;

    sget-object v2, LaW/c;->a:LaW/c;

    invoke-virtual {v0, v1, v2, v3}, LaW/d;->a(LaW/f;LaW/c;Z)V

    .line 184
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 185
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto :goto_2f

    .line 190
    :pswitch_7c
    iget-object v0, p0, LaV/a;->e:LaX/b;

    sget-object v1, LaW/f;->a:LaW/f;

    invoke-virtual {v0, v1}, LaX/b;->a(LaW/f;)V

    .line 191
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 192
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 193
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto :goto_2f

    .line 197
    :pswitch_93
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 198
    iget-object v0, p0, LaV/a;->d:LaW/d;

    sget-object v1, LaW/f;->a:LaW/f;

    sget-object v2, LaW/c;->c:LaW/c;

    invoke-virtual {v0, v1, v2, v3}, LaW/d;->a(LaW/f;LaW/c;Z)V

    .line 199
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 200
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto :goto_2f

    .line 207
    :pswitch_ac
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 208
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 209
    iget-object v0, p0, LaV/a;->b:Lba/e;

    sget-object v1, Lba/f;->a:Lba/f;

    invoke-virtual {v0, v1}, Lba/e;->a(Lba/f;)V

    .line 210
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto/16 :goto_2f

    .line 215
    :pswitch_c4
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 216
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 217
    iget-object v0, p0, LaV/a;->b:Lba/e;

    sget-object v1, Lba/f;->b:Lba/f;

    invoke-virtual {v0, v1}, Lba/e;->a(Lba/f;)V

    .line 218
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto/16 :goto_2f

    .line 223
    :pswitch_dc
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 224
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 225
    iget-object v0, p0, LaV/a;->b:Lba/e;

    sget-object v1, Lba/f;->a:Lba/f;

    invoke-virtual {v0, v1}, Lba/e;->a(Lba/f;)V

    .line 226
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->a:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 233
    :pswitch_f6
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 234
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 235
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 236
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->a:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 241
    :pswitch_10e
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 242
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 243
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 244
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->b:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 248
    :pswitch_126
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 249
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 250
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 251
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->b:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 255
    :pswitch_13e
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 256
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 257
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 258
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->c:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 263
    :pswitch_156
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 264
    iget-object v0, p0, LaV/a;->d:LaW/d;

    sget-object v1, LaW/f;->b:LaW/f;

    sget-object v2, LaW/c;->b:LaW/c;

    sget-object v3, LaW/e;->c:LaW/e;

    invoke-virtual {v0, v1, v2, v3, v4}, LaW/d;->a(LaW/f;LaW/c;LaW/e;Z)V

    .line 266
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 267
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->a:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 271
    :pswitch_174
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 272
    iget-object v0, p0, LaV/a;->d:LaW/d;

    sget-object v1, LaW/f;->b:LaW/f;

    sget-object v2, LaW/c;->c:LaW/c;

    sget-object v3, LaW/e;->a:LaW/e;

    invoke-virtual {v0, v1, v2, v3, v4}, LaW/d;->a(LaW/f;LaW/c;LaW/e;Z)V

    .line 274
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 275
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    sget-object v1, LaZ/c;->c:LaZ/c;

    invoke-virtual {v0, v1}, LaZ/a;->a(LaZ/c;)V

    goto/16 :goto_2f

    .line 282
    :pswitch_192
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 283
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 284
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 285
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto/16 :goto_2f

    .line 291
    :pswitch_1a8
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 292
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 293
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 294
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto/16 :goto_2f

    .line 299
    :pswitch_1be
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0}, LaX/b;->a()V

    .line 300
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0}, LaW/d;->a()V

    .line 301
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0}, Lba/e;->a()V

    .line 302
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0}, LaZ/a;->a()V

    goto/16 :goto_2f

    .line 165
    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_4a
        :pswitch_63
        :pswitch_7c
        :pswitch_7c
        :pswitch_93
        :pswitch_ac
        :pswitch_ac
        :pswitch_c4
        :pswitch_c4
        :pswitch_dc
        :pswitch_f6
        :pswitch_10e
        :pswitch_10e
        :pswitch_126
        :pswitch_13e
        :pswitch_156
        :pswitch_174
        :pswitch_192
        :pswitch_192
        :pswitch_1a8
        :pswitch_1be
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-boolean v0, p0, LaV/a;->i:Z

    if-nez v0, :cond_6

    .line 345
    :cond_5
    :goto_5
    return-void

    .line 315
    :cond_6
    if-eqz p1, :cond_5

    .line 318
    sub-int v0, p2, p3

    .line 319
    if-gez v0, :cond_49

    int-to-float v0, v0

    iget v1, p0, LaV/a;->g:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 321
    :goto_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    iget-object v0, p0, LaV/a;->e:LaX/b;

    invoke-virtual {v0, p1, p4}, LaX/b;->a(Landroid/graphics/Canvas;Z)V

    .line 327
    iget-object v0, p0, LaV/a;->b:Lba/e;

    invoke-virtual {v0, p1, p4}, Lba/e;->a(Landroid/graphics/Canvas;Z)V

    .line 328
    iget-object v0, p0, LaV/a;->c:LaZ/a;

    invoke-virtual {v0, p1, p4}, LaZ/a;->a(Landroid/graphics/Canvas;Z)V

    .line 329
    iget-object v0, p0, LaV/a;->d:LaW/d;

    invoke-virtual {v0, p1, p4}, LaW/d;->a(Landroid/graphics/Canvas;Z)V

    .line 333
    iget-object v0, p0, LaV/a;->f:LaY/a;

    invoke-virtual {v0, p1}, LaY/a;->a(Landroid/graphics/Canvas;)V

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 340
    iget-boolean v0, p0, LaV/a;->h:Z

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, LaV/a;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, LaV/a;->n:Landroid/os/Handler;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 319
    :cond_49
    div-int/lit8 v0, v0, 0x2

    goto :goto_14
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-boolean p1, p0, LaV/a;->h:Z

    .line 143
    return-void
.end method
