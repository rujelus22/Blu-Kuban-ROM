.class final Lcom/twitter/android/fx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fx;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/fx;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/fx;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    iget-wide v1, v1, Lcom/twitter/android/provider/m;->J:J

    iget-object v3, p0, Lcom/twitter/android/fx;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    iget-object v3, v3, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v3, v3, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->f(JLjava/lang/String;)V

    return-void
.end method
