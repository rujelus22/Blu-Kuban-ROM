.class public final Lcom/google/android/youtube/app/ui/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/g;

.field private final c:Lcom/google/android/youtube/app/k;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/b/ae;

.field private final f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final g:Lcom/google/android/youtube/core/d;

.field private final h:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final i:Lcom/google/android/youtube/core/ui/j;

.field private final j:Z

.field private final k:Landroid/view/View;

.field private final l:Landroid/widget/EditText;

.field private final m:Landroid/widget/ImageButton;

.field private final n:Ljava/lang/CharSequence;

.field private final o:Lcom/google/android/youtube/app/adapter/z;

.field private p:Lcom/google/android/youtube/core/model/Video;

.field private q:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;Z)V
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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    .line 82
    const-string v0, "gdataClient cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->e:Lcom/google/android/youtube/core/b/ae;

    .line 83
    const-string v0, "youTubeAuthorizer cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->b:Lcom/google/android/youtube/app/g;

    .line 85
    const-string v0, "config cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/k;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->c:Lcom/google/android/youtube/app/k;

    .line 86
    const-string v0, "analytics cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->d:Lcom/google/android/youtube/core/Analytics;

    .line 87
    const-string v0, "errorHelper cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->g:Lcom/google/android/youtube/core/d;

    .line 88
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/el;->h:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 89
    invoke-interface {p3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 90
    iput-boolean p8, p0, Lcom/google/android/youtube/app/ui/el;->j:Z

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_99

    const v0, 0x7f04006f

    :goto_56
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->l:Landroid/widget/EditText;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    .line 99
    if-eqz p8, :cond_9d

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->m:Landroid/widget/ImageButton;

    .line 107
    :goto_7c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Landroid/view/View;)V

    .line 108
    new-instance v0, Lcom/google/android/youtube/app/adapter/z;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/adapter/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->o:Lcom/google/android/youtube/app/adapter/z;

    .line 109
    new-instance v0, Lcom/google/android/youtube/core/ui/j;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->o:Lcom/google/android/youtube/app/adapter/z;

    invoke-interface {p3}, Lcom/google/android/youtube/core/b/ae;->v()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->i:Lcom/google/android/youtube/core/ui/j;

    .line 111
    return-void

    .line 92
    :cond_99
    const v0, 0x7f040006

    goto :goto_56

    .line 103
    :cond_9d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/el;->m:Landroid/widget/ImageButton;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7c
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/el;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;)V
    .registers 7
    .parameter

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_45

    .line 200
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/el;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Comment"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/el;->e:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/el;->p:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->q:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    invoke-static {v4, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/android/youtube/core/b/ae;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 216
    :goto_44
    return-void

    .line 213
    :cond_45
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/el;->g:Lcom/google/android/youtube/core/d;

    const v2, 0x7f0b01d3

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/d;->a(I)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/el;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/el;->q:Lcom/google/android/youtube/core/model/UserAuth;

    .line 180
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/el;->j:Z

    if-eqz v0, :cond_13

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    .line 186
    :goto_12
    return-void

    .line 184
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Landroid/widget/EditText;)V

    goto :goto_12
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/el;->p:Lcom/google/android/youtube/core/model/Video;

    .line 119
    if-eqz p1, :cond_3c

    .line 120
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    if-eqz v0, :cond_28

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->i:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/el;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 132
    :goto_27
    return-void

    .line 125
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->h:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Ljava/lang/String;)V

    goto :goto_27

    .line 129
    :cond_3c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->i:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->e()V

    goto :goto_27
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->g:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 195
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    if-eqz p2, :cond_18

    const/16 v0, 0x193

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->g:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_12
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->g:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    goto :goto_12
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    check-cast p2, Lcom/google/android/youtube/core/model/Comment;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const v1, 0x7f0b01d2

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->o:Lcom/google/android/youtube/app/adapter/z;

    invoke-virtual {v0, v2, p2}, Lcom/google/android/youtube/app/adapter/z;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 115
    return-void
.end method

.method public final c()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v2, 0x5

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040005

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b01cf

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const v4, 0x7f0b01ce

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/ui/en;

    invoke-direct {v4, p0, v1}, Lcom/google/android/youtube/app/ui/en;-><init>(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/ui/em;

    invoke-direct {v4, p0, v1}, Lcom/google/android/youtube/app/ui/em;-><init>(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 154
    new-instance v2, Lcom/google/android/youtube/app/ui/eo;

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/app/ui/eo;-><init>(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 166
    return-object v0
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->n:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/el;->a(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/el;->b:Lcom/google/android/youtube/app/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/el;->a:Landroid/app/Activity;

    const v2, 0x7f0b0199

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/el;->c:Lcom/google/android/youtube/app/k;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/k;->d()Z

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    .line 176
    return-void
.end method
