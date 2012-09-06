.class public final Lcom/google/android/youtube/app/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/af;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/remote/bc;

.field private final c:Lcom/google/android/youtube/app/remote/bd;

.field private final d:Lcom/google/android/youtube/core/async/c;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcom/google/android/youtube/core/d;

.field private final g:Lcom/google/android/youtube/core/Analytics;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/Button;

.field private final j:Landroid/widget/EditText;

.field private final k:Landroid/widget/ImageView;

.field private final l:Landroid/widget/ProgressBar;

.field private final m:Landroid/view/View;

.field private final n:Landroid/widget/EditText;

.field private final o:Landroid/widget/TextView;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/remote/ab;Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ce;Lcom/google/android/youtube/core/d;I)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "actvity can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->a:Landroid/app/Activity;

    .line 96
    const-string v0, "screensClient can not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bc;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/remote/bc;

    .line 98
    const-string v0, "screensMonitor cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bd;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->c:Lcom/google/android/youtube/app/remote/bd;

    .line 100
    const-string v0, "remoteControl can not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "listener can not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "analytics can not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->g:Lcom/google/android/youtube/core/Analytics;

    .line 103
    const-string v0, "errorHelper can not be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->f:Lcom/google/android/youtube/core/d;

    .line 105
    new-instance v0, Lcom/google/android/youtube/app/ui/bu;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/bu;-><init>(Lcom/google/android/youtube/app/ui/bt;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/remote/ab;Lcom/google/android/youtube/app/ui/ce;Lcom/google/android/youtube/core/d;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->d:Lcom/google/android/youtube/core/async/c;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->e:Landroid/content/res/Resources;

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, p9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->m:Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_8b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->k:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->l:Landroid/widget/ProgressBar;

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/bv;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bv;-><init>(Lcom/google/android/youtube/app/ui/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->o:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->i:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/cd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/cd;-><init>(Lcom/google/android/youtube/app/ui/bt;B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->e:Landroid/content/res/Resources;

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/bw;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bw;-><init>(Lcom/google/android/youtube/app/ui/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->i:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/app/ui/bx;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bx;-><init>(Lcom/google/android/youtube/app/ui/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/youtube/app/ui/by;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/by;-><init>(Lcom/google/android/youtube/app/ui/bt;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/youtube/app/ui/bz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/bz;-><init>(Lcom/google/android/youtube/app/ui/bt;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x3

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_20

    mul-int/lit8 v4, v0, 0x3

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, p1, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    rem-int/lit8 v0, v2, 0x3

    if-nez v0, :cond_36

    const/16 v3, 0x9

    if-lt v2, v3, :cond_36

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    sub-int v0, v2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_31
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/bt;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->m:Landroid/view/View;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 272
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    const-string v1, "pairingCode"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_9} :catch_e

    move-result-object v0

    .line 274
    if-eqz v0, :cond_d

    move-object p0, v0

    .line 279
    :cond_d
    :goto_d
    return-object p0

    .line 277
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/bt;)V
    .registers 7
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->f:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b0220

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bt;->g:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "RemoteAddScreenPressed"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/remote/bc;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bt;->a:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/app/ui/cc;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/google/android/youtube/app/ui/cc;-><init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/youtube/app/remote/bc;->b(Lcom/google/android/youtube/core/async/l;)V

    goto :goto_18
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->g:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/core/async/c;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->d:Lcom/google/android/youtube/core/async/c;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/app/remote/bd;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->c:Lcom/google/android/youtube/app/remote/bd;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/bt;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 233
    packed-switch p1, :pswitch_data_60

    .line 253
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 235
    :pswitch_1d
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bt;->a:Landroid/app/Activity;

    const v3, 0x7f0b0225

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 237
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/bt;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0206

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0226

    new-instance v4, Lcom/google/android/youtube/app/ui/cb;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/android/youtube/app/ui/cb;-><init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001b

    new-instance v2, Lcom/google/android/youtube/app/ui/ca;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/ca;-><init>(Lcom/google/android/youtube/app/ui/bt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1c

    .line 233
    nop

    :pswitch_data_60
    .packed-switch 0x403
        :pswitch_1d
    .end packed-switch
.end method

.method public final a()Landroid/view/View;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->h:Landroid/view/View;

    return-object v0
.end method

.method public final a(J)V
    .registers 3
    .parameter

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/google/android/youtube/app/ui/bt;->q:J

    .line 204
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bt;->p:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 212
    const/16 v1, 0x6b6

    if-ne p1, v1, :cond_28

    .line 213
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1b

    .line 214
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->r:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bt;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_1b
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->l:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_28
    return v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bt;->r:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final r()I
    .registers 3

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/google/android/youtube/app/ui/bt;->q:J

    long-to-int v0, v0

    return v0
.end method
