.class public abstract Lcom/google/android/plus1/BasePlusOneButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/plus1/ac;

.field private final b:Lcom/google/android/plus1/ac;

.field private final c:Ljava/util/Set;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;

.field private f:Landroid/app/Activity;

.field private g:Landroid/net/Uri;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/plus1/w;

.field private j:Lcom/google/android/plus1/u;

.field private k:Z

.field private l:Lcom/google/android/plus1/ap;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/plus1/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Lcom/google/android/plus1/f;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/f;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->a:Lcom/google/android/plus1/ac;

    .line 85
    new-instance v0, Lcom/google/android/plus1/e;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/e;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->b:Lcom/google/android/plus1/ac;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->c:Ljava/util/Set;

    .line 87
    new-instance v0, Lcom/google/android/plus1/d;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/d;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->d:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/google/android/plus1/g;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/g;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->e:Landroid/view/View$OnClickListener;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/ap;)Lcom/google/android/plus1/ap;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->l:Lcom/google/android/plus1/ap;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/u;)Lcom/google/android/plus1/u;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/Exception;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/Exception;Z)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 390
    iput-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->q:Z

    .line 392
    instance-of v0, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_3d

    .line 393
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    if-eqz v0, :cond_2f

    const-string v0, "Click continue pending: needs user authorization to +1"

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->p:Z

    if-eqz v0, :cond_1c

    const-string v0, "Already asked user to authorize +1, skipping."

    invoke-static {v0}, Lcom/google/android/plus1/c;->b(Ljava/lang/String;)V

    .line 403
    :cond_1b
    :goto_1b
    return-void

    .line 393
    :cond_1c
    const-string v0, "Asking user to authorize +1..."

    invoke-static {v0}, Lcom/google/android/plus1/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->p:Z

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->f:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/plus1/b;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/b;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/ac;)V

    goto :goto_1b

    :cond_2f
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v0, "user has not authorized +1, using default controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->c(Ljava/lang/String;)V

    goto :goto_1b

    .line 394
    :cond_3d
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    if-nez v0, :cond_43

    if-eqz p2, :cond_1b

    .line 396
    :cond_43
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    if-eqz v0, :cond_4e

    .line 397
    const-string v0, "Can\'t continue click: a non-authorization error has occurred. Click voided."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 398
    iput-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    .line 400
    :cond_4e
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->n:Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->l()V

    goto :goto_1b
.end method

.method private a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    if-eqz v0, :cond_3b

    .line 298
    const-string v0, "Resetting Controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->b:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/ac;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->a:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/w;->c(Lcom/google/android/plus1/ac;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/ac;

    .line 302
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    invoke-virtual {v2, v0}, Lcom/google/android/plus1/w;->d(Lcom/google/android/plus1/ac;)V

    goto :goto_1f

    .line 304
    :cond_31
    iput-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->l:Lcom/google/android/plus1/ap;

    .line 305
    iput-boolean v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->m:Z

    .line 306
    iput-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->n:Ljava/lang/String;

    .line 307
    iput-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    .line 308
    iput-boolean v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->k:Z

    .line 310
    :cond_3b
    if-eqz p1, :cond_3f

    .line 311
    iput-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    .line 313
    :cond_3f
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->l()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 268
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Z)V

    .line 269
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->h:Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/String;)Lcom/google/android/plus1/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    .line 271
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    if-nez v0, :cond_2e

    .line 272
    if-nez p1, :cond_25

    .line 273
    const-string v0, "can\'t get an anonymous controller, this button is dead."

    invoke-static {v0, v1}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    :goto_24
    return-void

    .line 276
    :cond_25
    const-string v0, "can\'t get controller for user, revert to anonymous."

    invoke-static {v0, v1}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->b(Ljava/lang/String;)V

    goto :goto_24

    .line 280
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->k()V

    .line 281
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->l()V

    goto :goto_24

    .line 284
    :cond_35
    const-string v0, "Reusing current controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->m()V

    goto :goto_24
.end method

.method static synthetic c(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->q:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/ap;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->l:Lcom/google/android/plus1/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/ac;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->s:Lcom/google/android/plus1/ac;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->r:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/u;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->j()V

    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->g()V

    .line 242
    :cond_b
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Sets;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->b:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 292
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->a:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/w;->b(Lcom/google/android/plus1/ac;)V

    .line 294
    :cond_1e
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->n:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 324
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->b()V

    .line 325
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :goto_12
    return-void

    .line 327
    :cond_13
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    if-nez v0, :cond_21

    .line 329
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->a()V

    .line 330
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 334
    :cond_21
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    iget-object v0, v0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 335
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->d()V

    .line 339
    :goto_2e
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 337
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->c()V

    goto :goto_2e
.end method

.method private m()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 345
    iget-boolean v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    if-nez v2, :cond_7

    .line 365
    :cond_6
    :goto_6
    return-void

    .line 348
    :cond_7
    const-string v2, "Continuing click."

    invoke-static {v2}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 349
    iget-boolean v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->m:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->k:Z

    if-eqz v2, :cond_24

    .line 350
    :cond_14
    const-string v1, "Click continue pending: controller has failed getting +1 status objects; refetching"

    invoke-static {v1}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->k()V

    goto :goto_6

    .line 353
    :cond_24
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->l:Lcom/google/android/plus1/ap;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    if-nez v2, :cond_32

    .line 354
    :cond_2c
    const-string v0, "Click continue pending: +1 status objects are still on their way"

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 356
    :cond_32
    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    .line 357
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->l:Lcom/google/android/plus1/ap;

    iget-object v2, v2, Lcom/google/android/plus1/ap;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 358
    const-string v2, "Click completed: user signed up for +1, toggling +1 status"

    invoke-static {v2}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 359
    const/4 v2, 0x1

    :try_start_44
    iput-boolean v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->r:Z

    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->i:Lcom/google/android/plus1/w;

    invoke-virtual {v2}, Lcom/google/android/plus1/w;->a()Lcom/google/android/plus1/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    iget-object v4, v4, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_59

    move v0, v1

    :cond_59
    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    iget-object v4, v4, Lcom/google/android/plus1/u;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v4}, Lcom/google/android/plus1/ak;->a(Landroid/net/Uri;ZLjava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_60} :catch_61
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_44 .. :try_end_60} :catch_66

    goto :goto_6

    :catch_61
    move-exception v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/Exception;Z)V

    goto :goto_6

    :catch_66
    move-exception v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Ljava/lang/Exception;Z)V

    goto :goto_6

    .line 361
    :cond_6b
    const-string v0, "Click completed: asking user to sign up to +1"

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->i()V

    goto :goto_6
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/google/android/plus1/w;
.end method

.method protected abstract a(Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;
.end method

.method protected abstract a()V
.end method

.method public final a(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 204
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "uri cannot be null"

    invoke-static {p2, v0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->f:Landroid/app/Activity;

    .line 207
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneButton received a new URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 209
    iput-object p2, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    .line 210
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->j()V

    .line 212
    :cond_2f
    return-void
.end method

.method protected abstract a(Ljava/lang/CharSequence;)V
.end method

.method protected abstract b()V
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    const-string v1, "gotUsername should not be called without calling start."

    invoke-static {v0, v1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    if-nez p1, :cond_1f

    .line 254
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    if-eqz v0, :cond_19

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->o:Z

    .line 256
    const-string v0, "User NOT authenticated, click voided. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 263
    :goto_15
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->c(Ljava/lang/String;)V

    .line 264
    return-void

    .line 258
    :cond_19
    const-string v0, "User NOT authenticated. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    goto :goto_15

    .line 261
    :cond_1f
    const-string v0, "User authenticated. Setting up +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method protected i()V
    .registers 6

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->g:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->j:Lcom/google/android/plus1/u;

    iget-object v4, v4, Lcom/google/android/plus1/u;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 449
    return-void
.end method
