.class final Lcom/twitter/android/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/api/TweetMedia;

.field final synthetic b:Lcom/twitter/android/widget/TweetDetailView;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetDetailView;Lcom/twitter/android/api/TweetMedia;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/widget/af;->b:Lcom/twitter/android/widget/TweetDetailView;

    iput-object p2, p0, Lcom/twitter/android/widget/af;->a:Lcom/twitter/android/api/TweetMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/af;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/android/widget/ad;

    iget-object v1, p0, Lcom/twitter/android/widget/af;->a:Lcom/twitter/android/api/TweetMedia;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/ad;->a(Lcom/twitter/android/api/TweetMedia;)V

    return-void
.end method
