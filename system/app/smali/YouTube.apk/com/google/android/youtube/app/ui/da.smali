.class public final Lcom/google/android/youtube/app/ui/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/aa;

.field private final c:Lcom/google/android/youtube/app/ae;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/client/ad;

.field private final f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final g:Lcom/google/android/youtube/core/e;

.field private final h:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final i:Lcom/google/android/youtube/core/ui/k;

.field private final j:Landroid/widget/EditText;

.field private final k:Ljava/lang/CharSequence;

.field private final l:Lcom/google/android/youtube/app/a/d;

.field private m:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    .line 76
    const-string v0, "gdataClient cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->e:Lcom/google/android/youtube/core/client/ad;

    .line 77
    const-string v0, "youTubeAuthorizer cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/aa;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->b:Lcom/google/android/youtube/app/aa;

    .line 79
    const-string v0, "config cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->c:Lcom/google/android/youtube/app/ae;

    .line 80
    const-string v0, "analytics cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->d:Lcom/google/android/youtube/core/Analytics;

    .line 81
    const-string v0, "errorHelper cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->g:Lcom/google/android/youtube/core/e;

    .line 82
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/da;->h:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 83
    invoke-interface {p3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x7f090015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->k:Ljava/lang/CharSequence;

    .line 88
    if-eqz p8, :cond_88

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_6d
    invoke-virtual {p2, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->b(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/google/android/youtube/app/a/d;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->l:Lcom/google/android/youtube/app/a/d;

    .line 96
    new-instance v0, Lcom/google/android/youtube/core/ui/k;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->l:Lcom/google/android/youtube/app/a/d;

    invoke-interface {p3}, Lcom/google/android/youtube/core/client/ad;->t()Lcom/google/android/youtube/core/async/ad;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/da;->i:Lcom/google/android/youtube/core/ui/k;

    .line 98
    return-void

    .line 91
    :cond_88
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/youtube/app/ui/dg;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/dg;-><init>(Lcom/google/android/youtube/app/ui/da;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_6d
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;)V
    .registers 6
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_24

    .line 177
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->b:Lcom/google/android/youtube/app/aa;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/df;

    invoke-direct {v3, p0, v0}, Lcom/google/android/youtube/app/ui/df;-><init>(Lcom/google/android/youtube/app/ui/da;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_23
    return-void

    .line 180
    :cond_24
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->g:Lcom/google/android/youtube/core/e;

    const v2, 0x7f0a0176

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/e;->a(I)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/da;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->g:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/ae;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->c:Lcom/google/android/youtube/app/ae;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/aa;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->b:Lcom/google/android/youtube/app/aa;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/da;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->d:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->m:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->e:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/a/d;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->l:Lcom/google/android/youtube/app/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/da;->m:Lcom/google/android/youtube/core/model/Video;

    .line 106
    if-eqz p1, :cond_37

    .line 107
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    if-eqz v0, :cond_23

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->i:Lcom/google/android/youtube/core/ui/k;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/da;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 118
    :goto_22
    return-void

    .line 111
    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->h:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Ljava/lang/String;)V

    goto :goto_22

    .line 115
    :cond_37
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->i:Lcom/google/android/youtube/core/ui/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/k;->e()V

    goto :goto_22
.end method

.method public final b()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v2, 0x5

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0172

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/ui/dc;

    invoke-direct {v4, p0, v1}, Lcom/google/android/youtube/app/ui/dc;-><init>(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/ui/db;

    invoke-direct {v4, p0, v1}, Lcom/google/android/youtube/app/ui/db;-><init>(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 140
    new-instance v2, Lcom/google/android/youtube/app/ui/dd;

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/app/ui/dd;-><init>(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 152
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->b:Lcom/google/android/youtube/app/aa;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/da;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/de;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/da;->g:Lcom/google/android/youtube/core/e;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/de;-><init>(Lcom/google/android/youtube/app/ui/da;Lcom/google/android/youtube/core/e;)V

    const v3, 0x7f0a014b

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;I)V

    .line 163
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    if-eqz p3, :cond_e

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/da;->a(Landroid/widget/EditText;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/da;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
