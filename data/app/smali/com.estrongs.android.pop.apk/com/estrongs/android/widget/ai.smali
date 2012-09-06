.class public Lcom/estrongs/android/widget/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/aj;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/widget/ai;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V
    .registers 7

    invoke-static {p3, p4}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_12

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/widget/ai;->b:I

    :cond_12
    iget v0, p0, Lcom/estrongs/android/widget/ai;->b:I

    int-to-long v0, v0

    div-long v0, p3, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/ai;->a:I

    iget v0, p0, Lcom/estrongs/android/widget/ai;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V
    .registers 7

    iget v0, p0, Lcom/estrongs/android/widget/ai;->b:I

    int-to-long v0, v0

    div-long v0, p3, v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {p3, p4}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
