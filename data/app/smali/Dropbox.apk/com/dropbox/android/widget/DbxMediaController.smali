.class public Lcom/dropbox/android/widget/DbxMediaController;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# instance fields
.field private final A:Lcom/dropbox/android/widget/p;

.field private B:Landroid/view/View$OnLayoutChangeListener;

.field private C:Landroid/view/View$OnTouchListener;

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/dropbox/android/widget/q;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/WindowManager;

.field private h:Landroid/view/Window;

.field private i:Landroid/view/View;

.field private j:Landroid/view/WindowManager$LayoutParams;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageButton;

.field private z:Lcom/dropbox/android/widget/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/dropbox/android/widget/p;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v0, Lcom/dropbox/android/widget/h;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/h;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->B:Landroid/view/View$OnLayoutChangeListener;

    .line 221
    new-instance v0, Lcom/dropbox/android/widget/i;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/i;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->C:Landroid/view/View$OnTouchListener;

    .line 428
    new-instance v0, Lcom/dropbox/android/widget/k;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/k;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    .line 565
    new-instance v0, Lcom/dropbox/android/widget/l;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/l;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->E:Landroid/view/View$OnClickListener;

    .line 605
    new-instance v0, Lcom/dropbox/android/widget/m;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/m;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 673
    new-instance v0, Lcom/dropbox/android/widget/n;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/n;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->G:Landroid/view/View$OnClickListener;

    .line 685
    new-instance v0, Lcom/dropbox/android/widget/o;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/o;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->H:Landroid/view/View$OnClickListener;

    .line 130
    iput-object p3, p0, Lcom/dropbox/android/widget/DbxMediaController;->A:Lcom/dropbox/android/widget/p;

    .line 131
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->d:Landroid/content/Context;

    .line 132
    iput-boolean p2, p0, Lcom/dropbox/android/widget/DbxMediaController;->p:Z

    .line 133
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->f()V

    .line 134
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->e()V

    .line 135
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/Window;
    .registers 6
    .parameter

    .prologue
    .line 144
    :try_start_0
    const-string v0, "com.android.internal.policy.PolicyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    const-string v1, "makeNewWindow"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_21} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_21} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_21} :catch_37

    return-object v0

    .line 147
    :catch_22
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_29
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_30
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :catch_37
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxMediaController;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/DbxMediaController;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 278
    const v0, 0x7f0d008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    .line 279
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    .line 280
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 281
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_1e
    const v0, 0x7f0d0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    .line 285
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_42

    .line 286
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_42

    .line 288
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->p:Z

    if-eqz v0, :cond_ff

    move v0, v1

    :goto_3f
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    :cond_42
    const v0, 0x7f0d0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_65

    .line 294
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_65

    .line 296
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->p:Z

    if-eqz v3, :cond_102

    :goto_62
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    :cond_65
    const v0, 0x7f0d0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    .line 302
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->r:Z

    if-nez v0, :cond_81

    .line 303
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    :cond_81
    const v0, 0x7f0d008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    .line 306
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->r:Z

    if-nez v0, :cond_9d

    .line 307
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 310
    :cond_9d
    const v0, 0x7f0d0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    .line 311
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c2

    .line 312
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_bb

    .line 313
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 314
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 316
    :cond_bb
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 319
    :cond_c2
    const v0, 0x7f0d008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/widget/j;

    invoke-direct {v1, p0}, Lcom/dropbox/android/widget/j;-><init>(Lcom/dropbox/android/widget/DbxMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    const v0, 0x7f0d0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->l:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f0d0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->m:Landroid/widget/TextView;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->a:Ljava/lang/StringBuilder;

    .line 331
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->b:Ljava/util/Formatter;

    .line 333
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->l()V

    .line 334
    return-void

    :cond_ff
    move v0, v2

    .line 288
    goto/16 :goto_3f

    :cond_102
    move v1, v2

    .line 296
    goto/16 :goto_62
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->g()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/DbxMediaController;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->o:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 448
    div-int/lit16 v0, p1, 0x3e8

    .line 450
    rem-int/lit8 v1, v0, 0x3c

    .line 451
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 452
    div-int/lit16 v0, v0, 0xe10

    .line 454
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 455
    if-lez v0, :cond_36

    .line 456
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->b:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_35
    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->b:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method static synthetic b(Lcom/dropbox/android/widget/DbxMediaController;)Z
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->j:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/WindowManager;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->g:Landroid/view/WindowManager;

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->g:Landroid/view/WindowManager;

    .line 160
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    .line 161
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->g:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 163
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->i:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 170
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->h:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/DbxMediaController;->setFocusable(Z)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/DbxMediaController;->setFocusableInTouchMode(Z)V

    .line 174
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->setDescendantFocusability(I)V

    .line 175
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->requestFocus()Z

    .line 176
    return-void
.end method

.method static synthetic f(Lcom/dropbox/android/widget/DbxMediaController;)I
    .registers 2
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->i()I

    move-result v0

    return v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 182
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->j:Landroid/view/WindowManager$LayoutParams;

    .line 183
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->j:Landroid/view/WindowManager$LayoutParams;

    .line 184
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 186
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 187
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 188
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 189
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 193
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 194
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 200
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->j:Landroid/view/WindowManager$LayoutParams;

    .line 203
    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 205
    return-void
.end method

.method static synthetic g(Lcom/dropbox/android/widget/DbxMediaController;)Z
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->g()Z

    move-result v0

    if-nez v0, :cond_12

    .line 351
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 353
    :cond_12
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->h()Z

    move-result v0

    if-nez v0, :cond_24

    .line 354
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 356
    :cond_24
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->i()Z

    move-result v0

    if-nez v0, :cond_36

    .line 357
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    :cond_36
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->i()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->h()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 362
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_4c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 370
    :cond_4c
    :goto_4c
    return-void

    .line 364
    :catch_4d
    move-exception v0

    goto :goto_4c
.end method

.method private i()I
    .registers 7

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->o:Z

    if-eqz v0, :cond_a

    .line 464
    :cond_8
    const/4 v0, 0x0

    .line 483
    :cond_9
    :goto_9
    return v0

    .line 466
    :cond_a
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->d()I

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->c()I

    move-result v1

    .line 468
    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_35

    .line 469
    if-lez v1, :cond_28

    .line 471
    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 472
    iget-object v4, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 474
    :cond_28
    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v2}, Lcom/dropbox/android/widget/q;->f()I

    move-result v2

    .line 475
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 478
    :cond_35
    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_42

    .line 479
    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->l:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_42
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 481
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method static synthetic i(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->k()V

    return-void
.end method

.method static synthetic j(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 574
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-nez v0, :cond_9

    .line 582
    :cond_8
    :goto_8
    return-void

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 578
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8

    .line 580
    :cond_1a
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8
.end method

.method static synthetic k(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 586
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->b()V

    .line 591
    :goto_13
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    .line 592
    return-void

    .line 589
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->a()V

    goto :goto_13
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 699
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->s:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 703
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2b

    .line 704
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->t:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2e

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 707
    :cond_2b
    return-void

    :cond_2c
    move v0, v2

    .line 700
    goto :goto_14

    :cond_2e
    move v1, v2

    .line 705
    goto :goto_28
.end method

.method static synthetic l(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 270
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 379
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 380
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->i()I

    .line 381
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_15

    .line 382
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 384
    :cond_15
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->h()V

    .line 385
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->g()V

    .line 386
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/dropbox/android/widget/DbxMediaController;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iput-boolean v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    .line 389
    :cond_26
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    .line 394
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 397
    if-eqz p1, :cond_4a

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 398
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    :cond_4a
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 341
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 342
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    return v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    if-nez v0, :cond_5

    .line 426
    :cond_4
    :goto_4
    return-void

    .line 414
    :cond_5
    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    if-eqz v0, :cond_4

    .line 416
    :try_start_9
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->D:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->i:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_16} :catch_23

    .line 421
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->n:Z

    .line 422
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->z:Lcom/dropbox/android/widget/r;

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->z:Lcom/dropbox/android/widget/r;

    invoke-interface {v0}, Lcom/dropbox/android/widget/r;->a()V

    goto :goto_4

    .line 418
    :catch_23
    move-exception v0

    .line 419
    const-string v0, "MediaController"

    const-string v1, "already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0xbb8

    const/4 v0, 0x1

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 502
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_32

    move v1, v0

    .line 504
    :goto_14
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_20

    const/16 v3, 0x55

    if-eq v2, v3, :cond_20

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_34

    .line 507
    :cond_20
    if-eqz v1, :cond_31

    .line 508
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->k()V

    .line 509
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 510
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_31

    .line 511
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 562
    :cond_31
    :goto_31
    return v0

    .line 502
    :cond_32
    const/4 v1, 0x0

    goto :goto_14

    .line 515
    :cond_34
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_4e

    .line 516
    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v1

    if-nez v1, :cond_31

    .line 517
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->a()V

    .line 518
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    .line 519
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    goto :goto_31

    .line 522
    :cond_4e
    const/16 v3, 0x56

    if-eq v2, v3, :cond_56

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_6c

    .line 524
    :cond_56
    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 525
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->b()V

    .line 526
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    .line 527
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    goto :goto_31

    .line 530
    :cond_6c
    const/16 v3, 0x19

    if-eq v2, v3, :cond_78

    const/16 v3, 0x18

    if-eq v2, v3, :cond_78

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_7d

    .line 534
    :cond_78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_31

    .line 535
    :cond_7d
    const/16 v3, 0x52

    if-ne v2, v3, :cond_87

    .line 536
    if-eqz v1, :cond_31

    .line 537
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    goto :goto_31

    .line 542
    :cond_87
    const/4 v1, 0x4

    if-ne v2, v1, :cond_bc

    .line 543
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9a

    .line 544
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_31

    .line 546
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_31

    .line 549
    :cond_9a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_bc

    .line 550
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 551
    if-eqz v1, :cond_a9

    .line 552
    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 554
    :cond_a9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_bc

    .line 555
    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->A:Lcom/dropbox/android/widget/p;

    invoke-interface {v1}, Lcom/dropbox/android/widget/p;->onBackPressed()V

    goto/16 :goto_31

    .line 561
    :cond_bc
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 562
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_31
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(Landroid/view/View;)V

    .line 126
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 488
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 494
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 244
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->B:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 247
    :cond_c
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 249
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/dropbox/android/widget/DbxMediaController;->B:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 252
    :cond_19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->removeAllViews()V

    .line 258
    invoke-virtual {p0}, Lcom/dropbox/android/widget/DbxMediaController;->a()Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/widget/DbxMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 652
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 654
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 655
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 657
    :cond_14
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 658
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 660
    :cond_1d
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 661
    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4c

    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->s:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 663
    :cond_2d
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3c

    .line 664
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4e

    iget-object v3, p0, Lcom/dropbox/android/widget/DbxMediaController;->t:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_4e

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 666
    :cond_3c
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_45

    .line 667
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 669
    :cond_45
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->h()V

    .line 670
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 671
    return-void

    :cond_4c
    move v0, v2

    .line 661
    goto :goto_2a

    :cond_4e
    move v1, v2

    .line 664
    goto :goto_39
.end method

.method public setMediaPlayer(Lcom/dropbox/android/widget/q;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->c:Lcom/dropbox/android/widget/q;

    .line 235
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->j()V

    .line 236
    return-void
.end method

.method public setOnHideListener(Lcom/dropbox/android/widget/r;)V
    .registers 2
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->z:Lcom/dropbox/android/widget/r;

    .line 728
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 710
    iput-object p1, p0, Lcom/dropbox/android/widget/DbxMediaController;->s:Landroid/view/View$OnClickListener;

    .line 711
    iput-object p2, p0, Lcom/dropbox/android/widget/DbxMediaController;->t:Landroid/view/View$OnClickListener;

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->r:Z

    .line 714
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 715
    invoke-direct {p0}, Lcom/dropbox/android/widget/DbxMediaController;->l()V

    .line 717
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_1c

    .line 718
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 720
    :cond_1c
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->q:Z

    if-nez v0, :cond_29

    .line 721
    iget-object v0, p0, Lcom/dropbox/android/widget/DbxMediaController;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 724
    :cond_29
    return-void
.end method
