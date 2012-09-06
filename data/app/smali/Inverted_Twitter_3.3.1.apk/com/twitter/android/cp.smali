.class final Lcom/twitter/android/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iput p2, p0, Lcom/twitter/android/cp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->setResult(I)V

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v0, v1}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;Z)V

    iget v0, p0, Lcom/twitter/android/cp;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->b(Lcom/twitter/android/PostActivity;)V

    goto :goto_15
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    const/4 v0, -0x3

    if-ne p2, v0, :cond_39

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;)Lcom/twitter/android/dc;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v1}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;)Lcom/twitter/android/dc;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/twitter/android/util/f;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-wide v0, v0, Lcom/twitter/android/PostActivity;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-object v1, v1, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-wide v2, v2, Lcom/twitter/android/PostActivity;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->c(Lcom/twitter/android/client/Session;J)V

    :cond_35
    invoke-direct {p0}, Lcom/twitter/android/cp;->a()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const/4 v0, -0x1

    if-ne p2, v0, :cond_38

    iget-object v0, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-object v1, v1, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v2}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-wide v3, v3, Lcom/twitter/android/PostActivity;->i:J

    iget-object v5, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    iget-wide v5, v5, Lcom/twitter/android/PostActivity;->j:J

    iget-object v7, p0, Lcom/twitter/android/cp;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v7}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JJLcom/twitter/android/api/TweetEntities;)V

    invoke-direct {p0}, Lcom/twitter/android/cp;->a()V

    goto :goto_38
.end method
