.class final Lcom/twitter/android/fl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/fl;->b:Lcom/twitter/android/TweetFragment;

    iput-object p2, p0, Lcom/twitter/android/fl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/fl;->b:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/fl;->b:Lcom/twitter/android/TweetFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/fl;->b:Lcom/twitter/android/TweetFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v2, v2, Lcom/twitter/android/provider/m;->A:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/fl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
