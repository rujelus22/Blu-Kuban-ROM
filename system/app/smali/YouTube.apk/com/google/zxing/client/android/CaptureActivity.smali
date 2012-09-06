.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/zxing/client/android/a/c;

.field private c:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private d:Lcom/google/zxing/client/android/ViewfinderView;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/google/zxing/client/android/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/j;Lcom/google/zxing/j;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-virtual {p2}, Lcom/google/zxing/j;->a()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/j;->b()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/j;->a()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/j;->b()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/a/c;->a(Landroid/view/SurfaceHolder;)V

    .line 261
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v0, :cond_14

    .line 262
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/lang/String;Lcom/google/zxing/client/android/a/c;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_1f

    .line 273
    :cond_14
    :goto_14
    return-void

    .line 264
    :catch_15
    move-exception v0

    .line 265
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->e()V

    goto :goto_14

    .line 267
    :catch_1f
    move-exception v0

    .line 270
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->e()V

    goto :goto_14
.end method

.method private e()V
    .registers 4

    .prologue
    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    const v1, 0x7f0b00a3

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    const v1, 0x104000a

    new-instance v2, Lcom/google/zxing/client/android/c;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    new-instance v1, Lcom/google/zxing/client/android/c;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/client/android/ViewfinderView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public final a(Lcom/google/zxing/h;Landroid/graphics/Bitmap;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/d;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/d;->a()V

    .line 203
    if-nez p2, :cond_19

    .line 204
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    const-string v2, "Barcode not recognized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    :goto_15
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 214
    return-void

    .line 207
    :cond_19
    invoke-virtual {p1}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v1

    if-eqz v1, :cond_75

    array-length v2, v1

    if-lez v2, :cond_75

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    array-length v4, v1

    if-ne v4, v7, :cond_a1

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v0, v1, v0

    aget-object v1, v1, v8

    invoke-static {v2, v3, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/j;Lcom/google/zxing/j;)V

    .line 208
    :cond_75
    :goto_75
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Barcode is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_15

    .line 207
    :cond_a1
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c5

    invoke-virtual {p1}, Lcom/google/zxing/h;->c()Lcom/google/zxing/a;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    if-eq v4, v5, :cond_b5

    invoke-virtual {p1}, Lcom/google/zxing/h;->c()Lcom/google/zxing/a;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-ne v4, v5, :cond_c5

    :cond_b5
    aget-object v0, v1, v0

    aget-object v4, v1, v8

    invoke-static {v2, v3, v0, v4}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/j;Lcom/google/zxing/j;)V

    aget-object v0, v1, v7

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v2, v3, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/j;Lcom/google/zxing/j;)V

    goto :goto_75

    :cond_c5
    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    array-length v4, v1

    :goto_cb
    if-ge v0, v4, :cond_75

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/google/zxing/j;->a()F

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/j;->b()F

    move-result v5

    invoke-virtual {v2, v6, v5, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb
.end method

.method public final b()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method final c()Lcom/google/zxing/client/android/a/c;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    return-object v0
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->a()V

    .line 292
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Landroid/widget/TextView;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    .line 88
    new-instance v0, Lcom/google/zxing/client/android/d;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/d;

    .line 89
    return-void
.end method

.method protected final onDestroy()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/d;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/d;->d()V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 164
    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 172
    :cond_b
    :goto_b
    return v0

    .line 168
    :cond_c
    const/16 v1, 0x50

    if-eq p1, v1, :cond_b

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_b

    .line 172
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected final onPause()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->a()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/d;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/d;->b()V

    .line 147
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/c;->a()V

    .line 148
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    if-nez v0, :cond_2a

    .line 149
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 150
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 151
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 153
    :cond_2a
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    return-void
.end method

.method protected final onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    new-instance v0, Lcom/google/zxing/client/android/a/c;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    .line 101
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/client/android/ViewfinderView;

    .line 102
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/a/c;)V

    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v3}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 106
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 107
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 108
    iget-boolean v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    if-eqz v1, :cond_92

    .line 112
    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 119
    :goto_47
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    if-nez v1, :cond_9a

    const/4 v0, 0x0

    .line 121
    :goto_4e
    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 122
    :cond_53
    if-eqz v1, :cond_9f

    if-eqz v0, :cond_9f

    .line 123
    const-string v2, "com.google.zxing.client.android.YOUTUBE_SCAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 124
    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "SCAN_HEIGHT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 125
    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    const-string v2, "SCAN_HEIGHT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    if-lez v0, :cond_84

    if-lez v2, :cond_84

    .line 128
    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/client/android/a/c;->a(II)V

    .line 132
    :cond_84
    const-string v0, "CHARACTER_SET"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Ljava/lang/String;

    .line 137
    :goto_8c
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/d;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/d;->c()V

    .line 138
    return-void

    .line 115
    :cond_92
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 116
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_47

    .line 120
    :cond_9a
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 134
    :cond_9f
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_8c
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 176
    if-nez p1, :cond_9

    .line 177
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->a:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_9
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    if-nez v0, :cond_13

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    .line 181
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 183
    :cond_13
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Z

    .line 187
    return-void
.end method
