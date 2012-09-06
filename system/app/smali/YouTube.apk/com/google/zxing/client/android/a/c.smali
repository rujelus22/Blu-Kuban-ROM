.class public final Lcom/google/zxing/client/android/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/zxing/client/android/a/b;

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Lcom/google/zxing/client/android/a/d;

.field private final m:Lcom/google/zxing/client/android/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/zxing/client/android/a/c;->b:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/google/zxing/client/android/a/b;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    .line 70
    new-instance v0, Lcom/google/zxing/client/android/a/d;

    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/a/d;-><init>(Lcom/google/zxing/client/android/a/b;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/a/c;->l:Lcom/google/zxing/client/android/a/d;

    .line 71
    new-instance v0, Lcom/google/zxing/client/android/a/a;

    invoke-direct {v0}, Lcom/google/zxing/client/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/a/c;->m:Lcom/google/zxing/client/android/a/a;

    .line 72
    return-void
.end method


# virtual methods
.method public final a([BII)Lcom/google/zxing/client/android/g;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/client/android/a/c;->e()Landroid/graphics/Rect;

    move-result-object v1

    .line 268
    if-nez v1, :cond_8

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/zxing/client/android/g;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Lcom/google/zxing/client/android/a/c;->i:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/android/g;-><init>([BIIIIIIZ)V

    goto :goto_7
.end method

.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    .line 111
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 112
    iput-object v1, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    .line 115
    iput-object v1, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    .line 116
    iput-object v1, p0, Lcom/google/zxing/client/android/a/c;->f:Landroid/graphics/Rect;

    .line 118
    :cond_10
    return-void
.end method

.method public final a(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/zxing/client/android/a/c;->g:Z

    if-eqz v0, :cond_45

    .line 239
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/b;->b()Landroid/graphics/Point;

    move-result-object v0

    .line 240
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_10

    .line 241
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 243
    :cond_10
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_16

    .line 244
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 246
    :cond_16
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 247
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    .line 249
    sget-object v0, Lcom/google/zxing/client/android/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated manual framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/a/c;->f:Landroid/graphics/Rect;

    .line 255
    :goto_44
    return-void

    .line 252
    :cond_45
    iput p1, p0, Lcom/google/zxing/client/android/a/c;->j:I

    .line 253
    iput p2, p0, Lcom/google/zxing/client/android/a/c;->k:I

    goto :goto_44
.end method

.method public final a(Landroid/os/Handler;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    .line 153
    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    if-eqz v1, :cond_15

    .line 154
    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->l:Lcom/google/zxing/client/android/a/d;

    const v2, 0x7f08000d

    invoke-virtual {v1, p1, v2}, Lcom/google/zxing/client/android/a/d;->a(Landroid/os/Handler;I)V

    .line 155
    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->l:Lcom/google/zxing/client/android/a/d;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 157
    :cond_15
    return-void
.end method

.method public final a(Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    .line 82
    if-nez v0, :cond_13

    .line 83
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 84
    if-nez v0, :cond_11

    .line 85
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 87
    :cond_11
    iput-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    .line 89
    :cond_13
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 91
    iget-boolean v1, p0, Lcom/google/zxing/client/android/a/c;->g:Z

    if-nez v1, :cond_35

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/client/android/a/c;->g:Z

    .line 93
    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/a/b;->a(Landroid/hardware/Camera;)V

    .line 94
    iget v1, p0, Lcom/google/zxing/client/android/a/c;->j:I

    if-lez v1, :cond_35

    iget v1, p0, Lcom/google/zxing/client/android/a/c;->k:I

    if-lez v1, :cond_35

    .line 95
    iget v1, p0, Lcom/google/zxing/client/android/a/c;->j:I

    iget v2, p0, Lcom/google/zxing/client/android/a/c;->k:I

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/client/android/a/c;->a(II)V

    .line 96
    iput v3, p0, Lcom/google/zxing/client/android/a/c;->j:I

    .line 97
    iput v3, p0, Lcom/google/zxing/client/android/a/c;->k:I

    .line 100
    :cond_35
    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/a/b;->b(Landroid/hardware/Camera;)V

    .line 102
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 103
    iput-boolean v3, p0, Lcom/google/zxing/client/android/a/c;->i:Z

    .line 104
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    .line 125
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    if-nez v1, :cond_e

    .line 126
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    .line 129
    :cond_e
    return-void
.end method

.method public final b(Landroid/os/Handler;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    if-eqz v0, :cond_17

    .line 167
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->m:Lcom/google/zxing/client/android/a/a;

    const v1, 0x7f08000c

    invoke-virtual {v0, p1, v1}, Lcom/google/zxing/client/android/a/a;->a(Landroid/os/Handler;I)V

    .line 168
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/zxing/client/android/a/c;->m:Lcom/google/zxing/client/android/a/a;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 170
    :cond_17
    return-void
.end method

.method public final c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    if-eqz v0, :cond_1b

    .line 136
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 137
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->l:Lcom/google/zxing/client/android/a/d;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/client/android/a/d;->a(Landroid/os/Handler;I)V

    .line 138
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->m:Lcom/google/zxing/client/android/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/client/android/a/a;->a(Landroid/os/Handler;I)V

    .line 139
    iput-boolean v1, p0, Lcom/google/zxing/client/android/a/c;->h:Z

    .line 141
    :cond_1b
    return-void
.end method

.method public final d()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/16 v0, 0x258

    const/16 v3, 0x190

    const/16 v1, 0xf0

    .line 180
    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    if-nez v2, :cond_50

    .line 181
    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->d:Landroid/hardware/Camera;

    if-nez v2, :cond_10

    .line 182
    const/4 v0, 0x0

    .line 202
    :goto_f
    return-object v0

    .line 184
    :cond_10
    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/a/b;->b()Landroid/graphics/Point;

    move-result-object v4

    .line 185
    iget v2, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 186
    if-ge v2, v1, :cond_53

    move v0, v1

    .line 191
    :cond_1f
    :goto_1f
    iget v2, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 192
    if-ge v2, v1, :cond_57

    .line 197
    :goto_27
    iget v2, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 198
    iget v3, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 199
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    .line 200
    sget-object v0, Lcom/google/zxing/client/android/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_50
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->e:Landroid/graphics/Rect;

    goto :goto_f

    .line 188
    :cond_53
    if-gt v2, v0, :cond_1f

    move v0, v2

    goto :goto_1f

    .line 194
    :cond_57
    if-le v2, v3, :cond_5b

    move v1, v3

    .line 195
    goto :goto_27

    :cond_5b
    move v1, v2

    goto :goto_27
.end method

.method public final e()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_4a

    .line 211
    invoke-virtual {p0}, Lcom/google/zxing/client/android/a/c;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 212
    if-nez v0, :cond_c

    .line 213
    const/4 v0, 0x0

    .line 227
    :cond_b
    :goto_b
    return-object v0

    .line 215
    :cond_c
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 216
    iget-object v2, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/a/b;->a()Landroid/graphics/Point;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_b

    .line 220
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->c:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/b;->b()Landroid/graphics/Point;

    move-result-object v0

    .line 221
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 222
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 223
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 224
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 225
    iput-object v1, p0, Lcom/google/zxing/client/android/a/c;->f:Landroid/graphics/Rect;

    .line 227
    :cond_4a
    iget-object v0, p0, Lcom/google/zxing/client/android/a/c;->f:Landroid/graphics/Rect;

    goto :goto_b
.end method
