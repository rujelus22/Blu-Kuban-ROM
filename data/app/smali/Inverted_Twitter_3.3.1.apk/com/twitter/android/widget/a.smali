.class final Lcom/twitter/android/widget/a;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/twitter/android/widget/ad;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/twitter/android/widget/ad;)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/twitter/android/widget/a;->c:I

    iput-object p2, p0, Lcom/twitter/android/widget/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/ad;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/ad;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/ad;

    iget-object v1, p0, Lcom/twitter/android/widget/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/ad;->d(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/ad;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/twitter/android/widget/a;->c:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_9
.end method
