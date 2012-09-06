.class public final Lcom/anddoes/launcher/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Landroid/graphics/drawable/Drawable;

.field public static i:Landroid/graphics/drawable/Drawable;

.field public static j:I

.field public static k:I


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:Lcom/anddoes/launcher/FolderIcon;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field private l:Lcom/anddoes/launcher/CellLayout;

.field private m:Landroid/animation/ValueAnimator;

.field private n:Landroid/animation/ValueAnimator;

.field private o:Lcom/anddoes/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 191
    sput-object v1, Lcom/anddoes/launcher/cx;->h:Landroid/graphics/drawable/Drawable;

    .line 192
    sput-object v1, Lcom/anddoes/launcher/cx;->i:Landroid/graphics/drawable/Drawable;

    .line 193
    sput v0, Lcom/anddoes/launcher/cx;->j:I

    .line 194
    sput v0, Lcom/anddoes/launcher/cx;->k:I

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/FolderIcon;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020074

    const v3, 0x7f020072

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object v0, p0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    .line 189
    iput-object v0, p0, Lcom/anddoes/launcher/cx;->f:Landroid/graphics/drawable/Drawable;

    .line 190
    iput-object v0, p0, Lcom/anddoes/launcher/cx;->g:Landroid/graphics/drawable/Drawable;

    .line 201
    iput-object p1, p0, Lcom/anddoes/launcher/cx;->o:Lcom/anddoes/launcher/Launcher;

    .line 202
    iput-object p2, p0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    .line 203
    invoke-virtual {p1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 206
    const-string v2, "folder_icon_outer_holo"

    .line 204
    invoke-virtual {v1, v4, v2}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/cx;->f:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 209
    const-string v2, "folder_icon_inner_holo"

    .line 207
    invoke-virtual {v1, v3, v2}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/cx;->g:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-static {}, Lcom/anddoes/launcher/FolderIcon;->e()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 214
    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/anddoes/launcher/cx;->j:I

    .line 215
    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/anddoes/launcher/cx;->k:I

    .line 216
    iget-object v0, p1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 218
    const-string v1, "folder_icon_outer_holo"

    .line 216
    invoke-virtual {v0, v4, v1}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/cx;->h:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 221
    const-string v1, "folder_icon_inner_holo"

    .line 219
    invoke-virtual {v0, v3, v1}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/cx;->i:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v0, p1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 223
    const v1, 0x7f020075

    .line 224
    const-string v2, "folder_icon_rest"

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/FolderIcon;->c:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-static {}, Lcom/anddoes/launcher/FolderIcon;->f()V

    .line 227
    :cond_68
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/CellLayout;
    .registers 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->l:Lcom/anddoes/launcher/CellLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->o:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/cy;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/cy;-><init>(Lcom/anddoes/launcher/cx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/cz;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/cz;-><init>(Lcom/anddoes/launcher/cx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 256
    return-void

    .line 233
    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput p1, p0, Lcom/anddoes/launcher/cx;->a:I

    .line 310
    iput p2, p0, Lcom/anddoes/launcher/cx;->b:I

    .line 311
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/CellLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/anddoes/launcher/cx;->l:Lcom/anddoes/launcher/CellLayout;

    .line 315
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 262
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    .line 263
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/da;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/da;-><init>(Lcom/anddoes/launcher/cx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/db;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/db;-><init>(Lcom/anddoes/launcher/cx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    iget-object v0, p0, Lcom/anddoes/launcher/cx;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 299
    return-void

    .line 262
    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/anddoes/launcher/cx;->c:F

    return v0
.end method

.method public final d()F
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/anddoes/launcher/cx;->d:F

    return v0
.end method
