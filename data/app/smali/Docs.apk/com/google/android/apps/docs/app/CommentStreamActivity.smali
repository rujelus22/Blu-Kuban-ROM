.class public Lcom/google/android/apps/docs/app/CommentStreamActivity;
.super Lcom/google/android/apps/docs/app/BaseDialogActivity;
.source "CommentStreamActivity.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LdY;

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Ljava/lang/Runnable;

.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private a:LkR;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lmz;

.field private a:LpB;

.field private a:Lps;

.field public b:Landroid/os/Handler;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:LpB;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>()V

    .line 108
    new-instance v0, LdZ;

    invoke-direct {v0, p0}, LdZ;-><init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LdY;

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    new-instance v0, Lec;

    invoke-direct {v0, p0}, Lec;-><init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Ljava/lang/Runnable;

    .line 253
    iput-boolean v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->i:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lld;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 293
    const-string v1, "documentTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)LkR;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)Lmz;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmz;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)LpB;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LpB;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CommentStreamActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->i:Z

    if-nez v0, :cond_20

    move v0, v1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lps;

    invoke-virtual {v2, p2}, Lps;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 260
    iget-object v2, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b:LpB;

    invoke-interface {v2, v0}, LpB;->a(Landroid/os/Bundle;)V

    .line 261
    iput-boolean v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->i:Z

    .line 262
    return-void

    .line 256
    :cond_20
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->f()V

    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->i:Z

    if-eqz v0, :cond_c

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b:LpB;

    invoke-interface {v0}, LpB;->b()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->i:Z

    .line 269
    :cond_c
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->e()V

    .line 277
    sget v0, LcY;->comment_post_error:I

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a()Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->a()LH;

    move-result-object v1

    sget v2, LcS;->comments_activity_holder:I

    invoke-virtual {v1, v2, v0}, LH;->b(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 281
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 159
    const-class v0, LdY;

    if-ne p1, v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LdY;

    .line 162
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->c()V

    .line 218
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LeZ;

    sget-object v1, LeV;->b:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 170
    sget v0, LcU;->comments_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->setContentView(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LdE;

    const-string v1, "/comments"

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 176
    sget v0, LcN;->quick_action_slide:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 177
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    new-instance v1, Lpu;

    new-instance v2, Led;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Led;-><init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;LdZ;)V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lpu;-><init>(Lpx;Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LpB;

    .line 183
    new-instance v0, Lps;

    invoke-direct {v0}, Lps;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lps;

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lps;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b:LpB;

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Llu;

    iget-object v2, v0, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Llu;

    iget-object v3, v0, Lld;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    if-nez v1, :cond_92

    .line 191
    const-string v1, "CommentStreamActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Document is null, failing out, for resourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lld;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->finish()V

    .line 212
    :goto_91
    return-void

    .line 197
    :cond_92
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    invoke-virtual {v0}, LkR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    invoke-virtual {v1}, LkR;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, LcY;->menu_comments:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget v0, LcY;->comment_loading_document:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Leb;

    invoke-direct {v1, p0}, Leb;-><init>(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmw;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    invoke-virtual {v1}, LkR;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LkR;

    invoke-virtual {v2}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmw;->a(Ljava/lang/String;Ljava/lang/String;)Lmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmz;

    goto :goto_91
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->b(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onResume()V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->a(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method
