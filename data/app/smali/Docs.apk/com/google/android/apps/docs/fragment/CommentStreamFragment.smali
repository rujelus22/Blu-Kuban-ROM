.class public Lcom/google/android/apps/docs/fragment/CommentStreamFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "CommentStreamFragment.java"

# interfaces
.implements Labh;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/os/Handler;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/ListView;

.field private a:Lcom/google/android/apps/docs/view/SocialCommentView;

.field private a:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
            "<",
            "LdY;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Runnable;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lmz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 158
    new-instance v0, LGH;

    invoke-direct {v0, p0}, LGH;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lld;)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p0, v1}, Lld;->a(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Lcom/google/android/apps/docs/view/SocialCommentView;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Lmz;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 208
    sget v0, LcU;->comments_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 210
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ListView;

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    new-instance v0, Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ListView;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/docs/view/SocialCommentView;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->setOnPostCommentListener(Labh;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    sget v2, LcY;->comment_document_hint:I

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/SocialCommentView;->setCommentHint(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    new-instance v2, LGI;

    invoke-direct {v2, p0}, LGI;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/SocialCommentView;->setCloseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_51
    return-object v1
.end method

.method public a()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 197
    new-instance v0, LGK;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGK;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ArrayAdapter;

    .line 198
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->e(Z)V

    .line 199
    new-instance v0, Lfd;

    const-class v1, LdY;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:LanD;

    invoke-direct {v0, v1, v2}, Lfd;-><init>(Ljava/lang/Class;LanD;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lfd;

    .line 201
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->d(Z)V

    .line 202
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 260
    sget v0, LcV;->menu_comments_activity:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 261
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lmz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmu;

    move-result-object v1

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0, v1}, LdY;->a(Lmu;)V

    .line 298
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_refresh:I

    if-ne v0, v1, :cond_23

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    invoke-interface {v0}, Lmz;->a()Lmu;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/os/Handler;

    new-instance v2, LGJ;

    invoke-direct {v2, p0, v0}, LGJ;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;Lmu;)V

    invoke-interface {v0, v1, v2}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 280
    const/4 v0, 0x1

    .line 282
    :goto_22
    return v0

    :cond_23
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_22
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lld;->a(Landroid/os/Bundle;)Lld;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Llu;

    iget-object v2, v0, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Llu;

    iget-object v0, v0, Lld;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 237
    if-nez v0, :cond_25

    .line 238
    const-string v0, "CommentStreamFragment"

    const-string v1, "Document is null"

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_24
    return-void

    .line 242
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmw;

    invoke-virtual {v0}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LkR;->a()LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lmw;->a(Ljava/lang/String;Ljava/lang/String;)Lmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    goto :goto_24
.end method

.method public f()V
    .registers 3

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->a(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->b(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna;

    invoke-interface {v0, v1}, LdY;->a(Lna;)V

    .line 291
    return-void
.end method
