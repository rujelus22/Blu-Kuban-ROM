.class public Lag/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lag/h;

.field private static b:Lag/h;


# instance fields
.field private final c:Lag/e;

.field private d:Landroid/widget/TextView;

.field private e:Lag/a;

.field private f:Lag/b;

.field private final g:Lcom/google/googlenav/android/Y;


# direct methods
.method private constructor <init>(Lag/e;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lag/h;->c:Lag/e;

    .line 72
    iput-object p2, p0, Lag/h;->g:Lcom/google/googlenav/android/Y;

    .line 73
    return-void
.end method

.method static synthetic a(Lag/h;)Lag/b;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lag/h;->f:Lag/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lag/b;
    .registers 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lag/h;->f:Lag/b;

    if-nez v0, :cond_b

    .line 135
    new-instance v0, Lag/b;

    invoke-direct {v0, p1}, Lag/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lag/h;->f:Lag/b;

    .line 137
    :cond_b
    iget-object v0, p0, Lag/h;->f:Lag/b;

    return-object v0
.end method

.method public static a()Lag/h;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lag/h;->a:Lag/h;

    return-object v0
.end method

.method public static a(Lag/e;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lag/h;

    invoke-direct {v0, p0, p1}, Lag/h;-><init>(Lag/e;Lcom/google/googlenav/android/Y;)V

    sput-object v0, Lag/h;->a:Lag/h;

    .line 87
    return-void
.end method

.method public static b()Lag/h;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lag/h;->b:Lag/h;

    return-object v0
.end method

.method public static b(Lag/e;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Lag/h;

    invoke-direct {v0, p0, p1}, Lag/h;-><init>(Lag/e;Lcom/google/googlenav/android/Y;)V

    sput-object v0, Lag/h;->b:Lag/h;

    .line 97
    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActionBar;Lag/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public a(Landroid/app/ActionBar;Lag/g;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    const v1, 0x7f040074

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 162
    invoke-virtual/range {v0 .. v5}, Lag/h;->a(Landroid/app/ActionBar;Landroid/view/View;Landroid/app/ActionBar$LayoutParams;Lag/g;Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public a(Landroid/app/ActionBar;Landroid/view/View;Landroid/app/ActionBar$LayoutParams;Lag/g;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-nez v0, :cond_b

    .line 202
    :goto_a
    return-void

    .line 182
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 185
    if-nez p3, :cond_35

    .line 186
    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 191
    :goto_18
    const v0, 0x7f10001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lag/h;->d:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lag/h;->a(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lag/h;->d:Landroid/widget/TextView;

    new-instance v1, Lag/j;

    invoke-direct {v1, p0, p5, p2, p4}, Lag/j;-><init>(Lag/h;Landroid/content/Context;Landroid/view/View;Lag/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 188
    :cond_35
    invoke-virtual {p1, p2, p3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_18
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lag/g;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lag/h;->e:Lag/a;

    if-nez v0, :cond_15

    .line 260
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 261
    new-instance v0, Lag/l;

    invoke-direct {p0, p1}, Lag/h;->a(Landroid/content/Context;)Lag/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lag/l;-><init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V

    iput-object v0, p0, Lag/h;->e:Lag/a;

    .line 277
    :cond_15
    :goto_15
    iget-object v0, p0, Lag/h;->e:Lag/a;

    iget-object v1, p0, Lag/h;->c:Lag/e;

    iget-object v2, p0, Lag/h;->e:Lag/a;

    invoke-interface {v1, v2, p3}, Lag/e;->a(Lag/a;Lag/g;)Lag/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lag/a;->a(Lag/d;)V

    .line 279
    iget-object v0, p0, Lag/h;->e:Lag/a;

    invoke-interface {v0, p2}, Lag/a;->a(Landroid/view/View;)V

    .line 282
    const/16 v0, 0x6c

    const-string v1, "a"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 285
    iget-object v0, p0, Lag/h;->f:Lag/b;

    invoke-virtual {v0}, Lag/b;->a()V

    .line 286
    iget-object v0, p0, Lag/h;->e:Lag/a;

    invoke-interface {v0}, Lag/a;->a()V

    .line 287
    return-void

    .line 263
    :cond_39
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    if-eqz v0, :cond_49

    .line 270
    new-instance v0, Lag/n;

    invoke-direct {p0, p1}, Lag/h;->a(Landroid/content/Context;)Lag/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lag/n;-><init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V

    iput-object v0, p0, Lag/h;->e:Lag/a;

    goto :goto_15

    .line 273
    :cond_49
    new-instance v0, Lag/m;

    invoke-direct {p0, p1}, Lag/h;->a(Landroid/content/Context;)Lag/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lag/m;-><init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V

    iput-object v0, p0, Lag/h;->e:Lag/a;

    goto :goto_15
.end method

.method public a(Landroid/view/View;Lag/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-nez v0, :cond_10

    .line 237
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_f
    return-void

    .line 240
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    new-instance v1, Lag/k;

    invoke-direct {v1, p0, v0, p1, p2}, Lag/k;-><init>(Lag/h;Landroid/content/Context;Landroid/view/View;Lag/g;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lag/h;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lag/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_9
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lag/h;->e:Lag/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lag/h;->e:Lag/a;

    invoke-interface {v0}, Lag/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v1, p0, Lag/h;->g:Lcom/google/googlenav/android/Y;

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lag/h;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 121
    iget-object v1, p0, Lag/h;->g:Lcom/google/googlenav/android/Y;

    new-instance v2, Lag/i;

    invoke-direct {v2, p0}, Lag/i;-><init>(Lag/h;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 130
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public e()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lag/h;->e:Lag/a;

    if-eqz v0, :cond_c

    .line 296
    :try_start_4
    iget-object v0, p0, Lag/h;->e:Lag/a;

    invoke-interface {v0}, Lag/a;->c()V
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_9} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_d

    .line 302
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lag/h;->e:Lag/a;

    .line 304
    :cond_c
    return-void

    .line 299
    :catch_d
    move-exception v0

    goto :goto_9

    .line 297
    :catch_f
    move-exception v0

    goto :goto_9
.end method
