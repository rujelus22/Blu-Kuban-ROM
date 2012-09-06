.class public Lcom/google/googlenav/ui/view/dialog/a;
.super Lcom/google/googlenav/ui/view/dialog/cO;
.source "SourceFile"


# static fields
.field private static p:Lcom/google/googlenav/ui/android/aC;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/ImageView;

.field m:Landroid/widget/ScrollView;

.field private q:Lcom/google/googlenav/ai;

.field private r:LaM/m;

.field private s:Landroid/widget/ProgressBar;

.field private t:J

.field private final u:Lcom/google/googlenav/common/a;

.field private v:Z

.field private w:Z

.field private x:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/a;->p:Lcom/google/googlenav/ui/android/aC;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ai;LaM/m;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/a;-><init>(Lcom/google/googlenav/ai;LaM/m;ZZLcom/google/googlenav/common/a;)V

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/ai;LaM/m;ZZLcom/google/googlenav/common/a;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p2, v0, v0}, Lcom/google/googlenav/ui/view/dialog/cO;-><init>(Lcom/google/googlenav/ui/g;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->t:J

    .line 115
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/b;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->x:Landroid/view/View$OnFocusChangeListener;

    .line 166
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    .line 167
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    .line 168
    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/a;->u:Lcom/google/googlenav/common/a;

    .line 169
    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/dialog/a;->v:Z

    .line 170
    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/dialog/a;->w:Z

    .line 174
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/webkit/WebViewClient;)V

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/a;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/j;->a:Lcom/google/googlenav/ui/view/dialog/j;

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/j;)V

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/j;->a:Lcom/google/googlenav/ui/view/dialog/j;

    invoke-static {p2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/j;)V

    .line 240
    :goto_2e
    return-void

    .line 237
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/j;->a:Lcom/google/googlenav/ui/view/dialog/j;

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/j;)V

    .line 238
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/j;->a:Lcom/google/googlenav/ui/view/dialog/j;

    invoke-static {p2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/j;)V

    goto :goto_2e
.end method

.method static a(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/j;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/j;->a:Lcom/google/googlenav/ui/view/dialog/j;

    if-ne p2, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_13
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/j;->c:Lcom/google/googlenav/ui/view/dialog/j;

    if-ne p2, v0, :cond_2e

    .line 533
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_2a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    return-void

    .line 535
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/a;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/a;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/a;)LaM/m;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    return-object v0
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 218
    if-eqz p1, :cond_9

    .line 219
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->s:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    :goto_8
    return-void

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->s:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/a;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->s:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/a;->w()V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/a;->x()V

    return-void
.end method

.method private w()V
    .registers 5

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, LO/a;->a(Ljava/lang/String;I)Z

    .line 408
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    const/16 v1, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 410
    return-void
.end method

.method private x()V
    .registers 5

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, LO/a;->a(Ljava/lang/String;I)Z

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    const/16 v1, 0x25b

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 415
    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 2

    .prologue
    .line 438
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/a;->requestWindowFeature(I)Z

    .line 441
    :cond_e
    return-void
.end method

.method a(Landroid/webkit/WebView;IIIFF)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    if-le p2, p3, :cond_1c

    .line 147
    sub-int v0, p2, p3

    int-to-float v0, v0

    div-float v1, p6, p5

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p3

    .line 149
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p6

    float-to-int v1, v1

    .line 150
    add-int v2, v0, p4

    if-le v2, v1, :cond_18

    .line 151
    add-int v0, p3, v1

    sub-int/2addr v0, p4

    .line 153
    :cond_18
    if-gez v0, :cond_1b

    .line 154
    const/4 v0, 0x0

    .line 158
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    move v0, p2

    goto :goto_1b
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cO;->a(Landroid/app/ActionBar;)V

    .line 259
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 261
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cO;->a(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, LO/a;->a(Ljava/lang/String;I)Z

    .line 277
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 288
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 291
    const v0, 0x7f10000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->d:Landroid/view/View;

    .line 292
    const v0, 0x7f10000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f100010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f100012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->e:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f100011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f100013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->s:Landroid/widget/ProgressBar;

    .line 297
    const v0, 0x7f10000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bo()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 299
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    :goto_c3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/e;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/f;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->x:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->s:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 322
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/g;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->m()V

    .line 344
    return-void

    .line 302
    :cond_12a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c3
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 433
    :goto_7
    return v0

    .line 423
    :cond_8
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    goto :goto_7

    .line 428
    :pswitch_10
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/a;->x()V

    .line 433
    :goto_13
    const/4 v0, 0x1

    goto :goto_7

    .line 425
    :pswitch_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/a;->w()V

    goto :goto_13

    .line 423
    nop

    :pswitch_data_1a
    .packed-switch 0x7f1004af
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method public c()Landroid/view/View;
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 348
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/cO;->c()Landroid/view/View;

    move-result-object v2

    .line 350
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 352
    const v0, 0x7f100017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    const v1, 0x7f100018

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 356
    const v0, 0x7f10000c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 357
    const v1, 0x7f10000b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->v:Z

    if-eqz v3, :cond_4f

    .line 359
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    new-instance v3, Lcom/google/googlenav/ui/view/dialog/h;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/h;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :goto_3f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->w:Z

    if-eqz v0, :cond_53

    .line 369
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 370
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/i;-><init>(Lcom/google/googlenav/ui/view/dialog/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_4e
    :goto_4e
    return-object v2

    .line 366
    :cond_4f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f

    .line 376
    :cond_53
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4e
.end method

.method protected i()Landroid/view/View;
    .registers 4

    .prologue
    .line 247
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 250
    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    const v2, 0x7f100018

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 252
    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 253
    return-object v0
.end method

.method protected l()I
    .registers 2

    .prologue
    .line 267
    const v0, 0x7f040001

    return v0
.end method

.method m()V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->u:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->t:J

    .line 457
    return-void
.end method

.method n()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 466
    .line 467
    iget-wide v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->t:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_11

    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->u:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->t:J

    sub-long/2addr v0, v2

    .line 470
    :cond_11
    return-wide v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 477
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 481
    :goto_11
    return-void

    .line 479
    :cond_12
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/cO;->onBackPressed()V

    goto :goto_11
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f1004b0

    const v4, 0x7f1004af

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 388
    sget-object v2, Lcom/google/googlenav/ui/view/dialog/a;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v2}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 389
    const/high16 v3, 0x7f11

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 390
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v2, v3}, LaM/m;->k(Lcom/google/googlenav/ai;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 391
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    :goto_2a
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->r:LaM/m;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v2, v3}, LaM/m;->j(Lcom/google/googlenav/ai;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 396
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    :goto_3b
    return v0

    .line 393
    :cond_3c
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2a

    .line 398
    :cond_44
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3b

    :cond_4c
    move v0, v1

    .line 402
    goto :goto_3b
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->q:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->n()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LO/a;->a(Ljava/lang/String;IJ)Z

    .line 449
    return-void
.end method
