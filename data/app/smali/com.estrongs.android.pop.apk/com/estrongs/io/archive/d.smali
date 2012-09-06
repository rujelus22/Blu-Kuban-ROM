.class public Lcom/estrongs/io/archive/d;
.super Landroid/os/Handler;


# instance fields
.field private a:J

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J

.field public g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/app/Activity;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/d;->c:J

    iput v2, p0, Lcom/estrongs/io/archive/d;->d:I

    iput-wide v3, p0, Lcom/estrongs/io/archive/d;->f:J

    iput v2, p0, Lcom/estrongs/io/archive/d;->g:I

    iput-wide v3, p0, Lcom/estrongs/io/archive/d;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/d;->h:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/io/archive/d;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/io/archive/d;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(JJ)D
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    const-wide/high16 v0, 0x3ff0

    :goto_8
    return-wide v0

    :cond_9
    long-to-float v0, p0

    long-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/widget/ProgressBar;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->n:Landroid/widget/TextView;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->l:Landroid/widget/TextView;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->s:Ljava/lang/String;

    return-void
.end method

.method public c(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->m:Landroid/widget/TextView;

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->p:Landroid/widget/TextView;

    return-void
.end method

.method public e(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->q:Landroid/widget/TextView;

    return-void
.end method

.method public f(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/d;->r:Landroid/widget/TextView;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4059

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v5, v0, :cond_62

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/io/archive/d;->k:Ljava/lang/String;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/estrongs/io/archive/d;->k:Ljava/lang/String;

    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    :try_start_2d
    const-string v1, "No space left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_49} :catch_1c3

    move-result-object v0

    :cond_4a
    :goto_4a
    const-string v1, "ArchiveHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_62
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_8b

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.android.intent.action.ARCHIVE_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output_path"

    iget-object v2, p0, Lcom/estrongs/io/archive/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_8b
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_b8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void

    :cond_9a
    iget-object v0, p0, Lcom/estrongs/io/archive/d;->k:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_b8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v8, v0, :cond_126

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/estrongs/io/archive/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/d;->c:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/io/archive/d;->a:J

    iget-wide v0, p0, Lcom/estrongs/io/archive/d;->a:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/d;->h:Ljava/lang/String;

    iget-wide v0, p0, Lcom/estrongs/io/archive/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_ec

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/d;->a:J

    :cond_ec
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/estrongs/io/archive/d;->c:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/estrongs/io/archive/d;->a:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v5, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/io/archive/d;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/estrongs/io/archive/d;->i:I

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_99

    :cond_126
    const/4 v0, 0x6

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1a1

    iget-wide v0, p0, Lcom/estrongs/io/archive/d;->f:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/io/archive/d;->q:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/estrongs/io/archive/d;->f:J

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/d;->f:J

    iget-wide v2, p0, Lcom/estrongs/io/archive/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/io/archive/d;->a(JJ)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/io/archive/d;->f:J

    iget-wide v4, p0, Lcom/estrongs/io/archive/d;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_163

    const-wide v0, 0x4058800000000000L

    :cond_163
    iget v2, p0, Lcom/estrongs/io/archive/d;->i:I

    int-to-double v2, v2

    div-double v4, v0, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/io/archive/d;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpg-double v0, v0, v6

    if-gez v0, :cond_198

    iget v0, p0, Lcom/estrongs/io/archive/d;->i:I

    if-lt v2, v0, :cond_1c6

    iget v0, p0, Lcom/estrongs/io/archive/d;->i:I

    iget v1, p0, Lcom/estrongs/io/archive/d;->i:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    :goto_191
    iget-object v1, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_99

    :cond_198
    iget-object v0, p0, Lcom/estrongs/io/archive/d;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_99

    :cond_1a1
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_99

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/d;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/estrongs/io/archive/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99

    :catch_1c3
    move-exception v1

    goto/16 :goto_4a

    :cond_1c6
    move v0, v2

    goto :goto_191
.end method
