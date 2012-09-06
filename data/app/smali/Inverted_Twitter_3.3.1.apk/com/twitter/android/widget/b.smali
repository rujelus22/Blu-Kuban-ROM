.class final Lcom/twitter/android/widget/b;
.super Landroid/text/style/URLSpan;


# instance fields
.field private a:I

.field private final b:Lcom/twitter/android/widget/ad;

.field private final c:Lcom/twitter/android/api/TweetEntities$Url;


# direct methods
.method public constructor <init>(ILcom/twitter/android/widget/ad;Lcom/twitter/android/api/TweetEntities$Url;)V
    .registers 5

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/twitter/android/widget/b;->a:I

    iput-object p2, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/ad;

    iput-object p3, p0, Lcom/twitter/android/widget/b;->c:Lcom/twitter/android/api/TweetEntities$Url;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/ad;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/ad;

    iget-object v1, p0, Lcom/twitter/android/widget/b;->c:Lcom/twitter/android/api/TweetEntities$Url;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/ad;->a(Lcom/twitter/android/api/TweetEntities$Url;)V

    :cond_b
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/ad;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/twitter/android/widget/b;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_9
.end method
