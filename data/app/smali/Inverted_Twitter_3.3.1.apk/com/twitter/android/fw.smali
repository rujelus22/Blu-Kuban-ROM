.class final Lcom/twitter/android/fw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    iget-wide v3, v3, Lcom/twitter/android/provider/m;->A:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->a(Ljava/lang/String;)V

    return-void
.end method
