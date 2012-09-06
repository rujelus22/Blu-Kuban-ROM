.class final Lcom/twitter/android/widget/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetView;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/TweetView;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/al;->a:Lcom/twitter/android/widget/TweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/al;->a:Lcom/twitter/android/widget/TweetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->b(Z)V

    return-void
.end method
