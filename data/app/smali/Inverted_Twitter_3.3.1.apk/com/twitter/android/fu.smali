.class final Lcom/twitter/android/fu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twitter/android/provider/m;

.field final synthetic c:Lcom/twitter/android/client/b;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/twitter/android/ft;


# direct methods
.method constructor <init>(Lcom/twitter/android/ft;ZLcom/twitter/android/provider/m;Lcom/twitter/android/client/b;Ljava/lang/String;JLandroid/content/Context;)V
    .registers 9

    iput-object p1, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iput-boolean p2, p0, Lcom/twitter/android/fu;->a:Z

    iput-object p3, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iput-object p4, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iput-object p5, p0, Lcom/twitter/android/fu;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/twitter/android/fu;->e:J

    iput-object p8, p0, Lcom/twitter/android/fu;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_64

    iget-boolean v0, p0, Lcom/twitter/android/fu;->a:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iget-object v0, v0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-wide v3, v3, Lcom/twitter/android/provider/m;->E:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->a(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iget-object v0, v0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-wide v3, v3, Lcom/twitter/android/provider/m;->A:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->a(Ljava/lang/String;)V

    goto :goto_28

    :cond_41
    iget-object v0, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iget-object v0, v0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-wide v3, v3, Lcom/twitter/android/provider/m;->o:J

    iget-object v5, p0, Lcom/twitter/android/fu;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/fu;->e:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->O:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_28

    :cond_64
    const/4 v0, -0x3

    if-ne p2, v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/fu;->f:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iget-object v2, v2, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    const/high16 v3, 0x7f0b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-object v6, v6, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/twitter/android/fu;->b:Lcom/twitter/android/provider/m;

    iget-object v6, v6, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/twitter/android/TweetListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.quote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/fu;->g:Lcom/twitter/android/ft;

    iget-object v1, v1, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/fu;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/fu;->e:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->Q:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_28
.end method
