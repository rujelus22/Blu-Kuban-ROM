.class public final Lcom/google/android/youtube/app/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/u;

.field private final c:Lcom/google/android/youtube/core/async/a;

.field private final d:Landroid/content/res/Resources;

.field private final e:Lcom/google/android/youtube/core/e;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/Button;

.field private final i:Landroid/widget/EditText;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/EditText;

.field private final l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bl;Lcom/google/android/youtube/core/e;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "actvity can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->a:Landroid/app/Activity;

    .line 75
    const-string v0, "screensClient can not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/u;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->b:Lcom/google/android/youtube/app/u;

    .line 77
    const-string v0, "remoteControl can not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "listener can not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "analytics can not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->f:Lcom/google/android/youtube/core/Analytics;

    .line 80
    const-string v0, "errorHelper can not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->e:Lcom/google/android/youtube/core/e;

    .line 82
    new-instance v0, Lcom/google/android/youtube/app/ui/bd;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/bd;-><init>(Lcom/google/android/youtube/app/ui/bc;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ui/bl;Lcom/google/android/youtube/core/e;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->c:Lcom/google/android/youtube/core/async/a;

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->d:Landroid/content/res/Resources;

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->j:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/be;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/be;-><init>(Lcom/google/android/youtube/app/ui/bc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->k:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->l:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->h:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/bk;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bk;-><init>(Lcom/google/android/youtube/app/ui/bc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bc;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a01b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/youtube/app/ui/bf;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bf;-><init>(Lcom/google/android/youtube/app/ui/bc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->h:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/app/ui/bg;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bg;-><init>(Lcom/google/android/youtube/app/ui/bc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/youtube/app/ui/bh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/bh;-><init>(Lcom/google/android/youtube/app/ui/bc;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/youtube/app/ui/bi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/bi;-><init>(Lcom/google/android/youtube/app/ui/bc;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bc;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 46
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

    const-string v5, "-"

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

.method static synthetic b(Lcom/google/android/youtube/app/ui/bc;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/bc;)V
    .registers 6
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->e:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a01c1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bc;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->e:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    goto :goto_18

    :cond_36
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bc;->f:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "RemoteAddScreenPressed"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bc;->b:Lcom/google/android/youtube/app/u;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bc;->a:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/app/ui/bj;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/android/youtube/app/ui/bj;-><init>(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/youtube/app/u;->b(Lcom/google/android/youtube/core/async/g;)V

    goto :goto_18
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->e:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/core/async/a;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->c:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/app/u;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->b:Lcom/google/android/youtube/app/u;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bc;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bc;->m:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    const/16 v0, 0x6b6

    if-ne p1, v0, :cond_1b

    .line 175
    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 176
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->n:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bc;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_19
    const/4 v0, 0x1

    .line 183
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final b()Landroid/view/View;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bc;->g:Landroid/view/View;

    return-object v0
.end method
