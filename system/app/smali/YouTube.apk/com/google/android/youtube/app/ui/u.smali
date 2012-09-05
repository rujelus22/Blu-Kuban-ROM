.class public final Lcom/google/android/youtube/app/ui/u;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Lcom/google/android/youtube/core/model/UserAuth;

.field private final e:Lcom/google/android/youtube/core/client/ad;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Lcom/google/android/youtube/app/ac;

.field private final h:Lcom/google/android/youtube/core/e;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/EditText;

.field private final l:Landroid/widget/TextView;

.field private m:Landroid/text/TextWatcher;

.field private final n:Landroid/os/Handler;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "[A-Za-z0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/ui/u;->a:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "[^A-Za-z0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/ui/u;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/app/ac;Lcom/google/android/youtube/core/e;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    .line 80
    const-string v0, "gdataClient cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->e:Lcom/google/android/youtube/core/client/ad;

    .line 81
    const-string v0, "analytics cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->f:Lcom/google/android/youtube/core/Analytics;

    .line 82
    const-string v0, "userAuth cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->d:Lcom/google/android/youtube/core/model/UserAuth;

    .line 83
    const-string v0, "callback cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ac;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->g:Lcom/google/android/youtube/app/ac;

    .line 84
    const-string v0, "errorHelper cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->h:Lcom/google/android/youtube/core/e;

    .line 85
    iget-object v0, p4, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    :goto_53
    sget-object v1, Lcom/google/android/youtube/app/ui/u;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->i:Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->n:Landroid/os/Handler;

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/u;->setView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/app/ui/u;->setIcon(I)V

    .line 95
    const v0, 0x7f090040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p4, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, p5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f090042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    .line 101
    const v0, 0x7f090043

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f090041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 108
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/ui/v;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/v;-><init>(Lcom/google/android/youtube/app/ui/u;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/youtube/app/ui/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/google/android/youtube/app/ui/w;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/w;-><init>(Lcom/google/android/youtube/app/ui/u;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->m:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/google/android/youtube/app/ui/x;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/x;-><init>(Lcom/google/android/youtube/app/ui/u;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/u;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/google/android/youtube/app/ui/y;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/y;-><init>(Lcom/google/android/youtube/app/ui/u;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/u;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/google/android/youtube/app/ui/z;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/z;-><init>(Lcom/google/android/youtube/app/ui/u;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/u;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 109
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/ui/u;->a(Z)V

    .line 110
    return-void

    .line 85
    :cond_117
    const-string v0, ""

    goto/16 :goto_53
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/u;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/youtube/app/ui/u;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/u;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/u;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/ac;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/u;->g:Lcom/google/android/youtube/app/ac;

    invoke-direct {v3, p0, v4, p1}, Lcom/google/android/youtube/app/ui/ac;-><init>(Lcom/google/android/youtube/app/ui/u;Lcom/google/android/youtube/app/ac;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/youtube/core/client/ad;->g(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/u;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/u;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/ui/u;->b(Z)V

    .line 261
    return-void
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->i:Ljava/lang/String;

    :cond_14
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/aa;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/app/ui/aa;-><init>(Lcom/google/android/youtube/app/ui/u;Z)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/ad;->f(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/u;->b()V

    .line 220
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/u;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/ui/u;->b(Z)V

    .line 249
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/u;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/u;->c()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/u;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/u;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 264
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/ui/u;->b(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    const v2, 0x7f0a0147

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/google/android/youtube/app/ui/u;->o:Z

    .line 288
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/u;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_c

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    :cond_c
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/u;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 274
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/ui/u;->b(Z)V

    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    const v2, 0x7f0a0148

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/u;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/u;)V
    .registers 6
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/u;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->n:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->n:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/ui/ab;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/ui/ab;-><init>(Lcom/google/android/youtube/app/ui/u;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    const v1, 0x7f0a0149

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/u;)Lcom/google/android/youtube/app/ac;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->g:Lcom/google/android/youtube/app/ac;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/u;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/u;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->h:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/u;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/u;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->f:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/ui/u;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->d:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p2, :cond_2d

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/u;->b(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/u;->m:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void

    .line 173
    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_53

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 175
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/u;->b(Ljava/lang/String;)V

    goto :goto_25

    .line 177
    :cond_53
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/u;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/u;->c()V

    goto :goto_25
.end method

.method protected final onStart()V
    .registers 3

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 298
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/u;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/u;->o:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    return-void
.end method
