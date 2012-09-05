.class final Lcom/sdgtl/mediahub/spr/screen/cb;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    if-eqz p2, :cond_4f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v4, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_743

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v4

    const/4 v7, -0x1

    const-string v5, "response_msg"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->k(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_4a
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->l(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_314

    :try_start_61
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-wide v8, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v8, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ep;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/common/ep;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    if-eqz v0, :cond_304

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    if-nez v0, :cond_2c0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->n(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v5, 0x7f0a00d8

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->q(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/common/ep;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->e:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_101

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v0

    if-nez v0, :cond_236

    :cond_101
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setResult(I)V
    :try_end_112
    .catch Ljava/lang/ClassCastException; {:try_start_61 .. :try_end_112} :catch_158

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_115
    :try_start_115
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Landroid/view/View;Landroid/view/View;)V
    :try_end_126
    .catch Ljava/lang/ClassCastException; {:try_start_115 .. :try_end_126} :catch_83a

    move-object v6, v1

    move v1, v2

    goto/16 :goto_4a

    :cond_12a
    :try_start_12a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v3, 0x7f0a00d7

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->n(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_156
    .catch Ljava/lang/ClassCastException; {:try_start_12a .. :try_end_156} :catch_158

    goto/16 :goto_9a

    :catch_158
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_15c
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x16

    invoke-static {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    move-object v6, v1

    move v1, v2

    goto/16 :goto_4a

    :cond_170
    :try_start_170
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v5, 0x7f0a00d8

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V
    :try_end_1a1
    .catch Ljava/lang/ClassCastException; {:try_start_170 .. :try_end_1a1} :catch_158

    :try_start_1a1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    :cond_204
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Date;->setDate(I)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_da

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I

    move-result v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/ep;->c:I
    :try_end_22c
    .catch Ljava/text/ParseException; {:try_start_1a1 .. :try_end_22c} :catch_230
    .catch Ljava/lang/ClassCastException; {:try_start_1a1 .. :try_end_22c} :catch_158

    if-le v4, v5, :cond_204

    goto/16 :goto_da

    :catch_230
    move-exception v0

    :try_start_231
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_da

    :cond_236
    move v3, v2

    :goto_237
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_257

    :goto_245
    if-eqz v2, :cond_2b1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto/16 :goto_115

    :cond_257
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_271

    move v2, v1

    goto :goto_245

    :cond_271
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    if-eqz v0, :cond_2ab

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ab

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v4

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2ad

    :cond_2ab
    move v2, v1

    goto :goto_245

    :cond_2ad
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_237

    :cond_2b1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto/16 :goto_115

    :cond_2c0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_2d6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->e:I

    if-nez v0, :cond_2e9

    :cond_2d6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/CharSequence;)V
    :try_end_2e4
    .catch Ljava/lang/ClassCastException; {:try_start_231 .. :try_end_2e4} :catch_158

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto/16 :goto_115

    :cond_2e9
    :try_start_2e9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2fc
    .catch Ljava/lang/ClassCastException; {:try_start_2e9 .. :try_end_2fc} :catch_82f

    move-result-object v1

    :try_start_2fd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;
    :try_end_301
    .catch Ljava/lang/ClassCastException; {:try_start_2fd .. :try_end_301} :catch_835

    move v2, v3

    goto/16 :goto_115

    :cond_304
    :try_start_304
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;
    :try_end_30c
    .catch Ljava/lang/ClassCastException; {:try_start_304 .. :try_end_30c} :catch_82f

    move-result-object v1

    :try_start_30d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;
    :try_end_311
    .catch Ljava/lang/ClassCastException; {:try_start_30d .. :try_end_311} :catch_835

    move v2, v3

    goto/16 :goto_115

    :cond_314
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->u(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_475

    :try_start_325
    iget-wide v0, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_451

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-nez v1, :cond_403

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ab

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    :try_end_368
    .catch Ljava/lang/ClassCastException; {:try_start_325 .. :try_end_368} :catch_817

    move-object v0, v6

    move v1, v7

    :goto_36a
    :try_start_36a
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Landroid/view/View;Landroid/view/View;)V
    :try_end_37b
    .catch Ljava/lang/ClassCastException; {:try_start_36a .. :try_end_37b} :catch_37d

    goto/16 :goto_4a

    :catch_37d
    move-exception v2

    :goto_37e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "domain_method"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "domain_userid"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x19

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    goto/16 :goto_4a

    :cond_3ab
    :try_start_3ab
    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] Leave Domain L3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/da;->c:Lcom/sdgtl/mediahub/spr/screen/da;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/da;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cp;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "leaveDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_845

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3f3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3f3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const-string v1, "delete fail"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v6

    move v1, v7

    goto/16 :goto_36a

    :cond_403
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0x41c

    if-ne v1, v2, :cond_42e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    move-object v0, v6

    move v1, v7

    goto/16 :goto_36a

    :cond_42e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_43f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_43f
    .catch Ljava/lang/ClassCastException; {:try_start_3ab .. :try_end_43f} :catch_817

    :cond_43f
    :try_start_43f
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_446
    .catch Ljava/lang/ClassCastException; {:try_start_43f .. :try_end_446} :catch_81c

    move-result-object v0

    :try_start_447
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;
    :try_end_44b
    .catch Ljava/lang/ClassCastException; {:try_start_447 .. :try_end_44b} :catch_821

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_36a

    :cond_451
    :try_start_451
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_462

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_462
    .catch Ljava/lang/ClassCastException; {:try_start_451 .. :try_end_462} :catch_817

    :cond_462
    :try_start_462
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;
    :try_end_46a
    .catch Ljava/lang/ClassCastException; {:try_start_462 .. :try_end_46a} :catch_81c

    move-result-object v0

    :try_start_46b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;
    :try_end_46f
    .catch Ljava/lang/ClassCastException; {:try_start_46b .. :try_end_46f} :catch_828

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_36a

    :cond_475
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->v(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_57a

    :try_start_486
    iget-wide v0, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_556

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-eqz v1, :cond_4a6

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0xfa2

    if-eq v1, v2, :cond_4a6

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0x41b

    if-eq v1, v2, :cond_4a6

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0xfa5

    if-ne v1, v2, :cond_534

    :cond_4a6
    const-string v1, "MediaHubDRM"

    const-string v2, "###### index J1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/da;->b:Lcom/sdgtl/mediahub/spr/screen/da;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/da;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "joinDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_841

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4e5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4e5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const-string v1, "delete fail"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4f1
    .catch Ljava/lang/ClassCastException; {:try_start_486 .. :try_end_4f1} :catch_7ff

    move-object v0, v6

    move v1, v7

    :goto_4f3
    :try_start_4f3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Landroid/view/View;Landroid/view/View;)V
    :try_end_504
    .catch Ljava/lang/ClassCastException; {:try_start_4f3 .. :try_end_504} :catch_506

    goto/16 :goto_4a

    :catch_506
    move-exception v2

    :goto_507
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "domain_method"

    const-string v4, "01"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "domain_userid"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x19

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    goto/16 :goto_4a

    :cond_534
    :try_start_534
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_545

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_545
    .catch Ljava/lang/ClassCastException; {:try_start_534 .. :try_end_545} :catch_7ff

    :cond_545
    :try_start_545
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_54c
    .catch Ljava/lang/ClassCastException; {:try_start_545 .. :try_end_54c} :catch_804

    move-result-object v0

    :try_start_54d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;
    :try_end_551
    .catch Ljava/lang/ClassCastException; {:try_start_54d .. :try_end_551} :catch_809

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto :goto_4f3

    :cond_556
    :try_start_556
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_567

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_567
    .catch Ljava/lang/ClassCastException; {:try_start_556 .. :try_end_567} :catch_7ff

    :cond_567
    :try_start_567
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;
    :try_end_56f
    .catch Ljava/lang/ClassCastException; {:try_start_567 .. :try_end_56f} :catch_804

    move-result-object v0

    :try_start_570
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;
    :try_end_574
    .catch Ljava/lang/ClassCastException; {:try_start_570 .. :try_end_574} :catch_810

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_4f3

    :cond_57a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_66e

    :try_start_58b
    iget-wide v0, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ef;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5a4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5a4
    if-eqz v0, :cond_638

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    if-nez v1, :cond_62a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a01a2

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/eq;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_604

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V
    :try_end_5ec
    .catch Ljava/lang/ClassCastException; {:try_start_58b .. :try_end_5ec} :catch_647

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_5ef
    :try_start_5ef
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Landroid/view/View;Landroid/view/View;)V
    :try_end_600
    .catch Ljava/lang/ClassCastException; {:try_start_5ef .. :try_end_600} :catch_7fc

    move-object v6, v1

    move v1, v2

    goto/16 :goto_4a

    :cond_604
    :try_start_604
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    :try_end_626
    .catch Ljava/lang/ClassCastException; {:try_start_604 .. :try_end_626} :catch_647

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto :goto_5ef

    :cond_62a
    :try_start_62a
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ef;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_631
    .catch Ljava/lang/ClassCastException; {:try_start_62a .. :try_end_631} :catch_7f1

    move-result-object v1

    :try_start_632
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;
    :try_end_636
    .catch Ljava/lang/ClassCastException; {:try_start_632 .. :try_end_636} :catch_7f7

    move v2, v3

    goto :goto_5ef

    :cond_638
    :try_start_638
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;
    :try_end_640
    .catch Ljava/lang/ClassCastException; {:try_start_638 .. :try_end_640} :catch_7f1

    move-result-object v1

    :try_start_641
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;
    :try_end_645
    .catch Ljava/lang/ClassCastException; {:try_start_641 .. :try_end_645} :catch_7f7

    move v2, v3

    goto :goto_5ef

    :catch_647
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_64b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delete_device_uid"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "old_user_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x1a

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    move-object v6, v1

    move v1, v2

    goto/16 :goto_4a

    :cond_66e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->y(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_83d

    :try_start_67f
    iget-wide v0, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_731

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_720

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/screen/cw;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/common/ep;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a01a3

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/CharSequence;)V
    :try_end_6ca
    .catch Ljava/lang/ClassCastException; {:try_start_67f .. :try_end_6ca} :catch_7d9

    move-object v0, v6

    move v1, v7

    :goto_6cc
    :try_start_6cc
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Landroid/view/View;Landroid/view/View;)V
    :try_end_6dd
    .catch Ljava/lang/ClassCastException; {:try_start_6cc .. :try_end_6dd} :catch_6df

    goto/16 :goto_4a

    :catch_6df
    move-exception v2

    :goto_6e0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_uid"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->A(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->B(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device_nickname"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x18

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    goto/16 :goto_4a

    :cond_720
    :try_start_720
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_727
    .catch Ljava/lang/ClassCastException; {:try_start_720 .. :try_end_727} :catch_7de

    move-result-object v0

    :try_start_728
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;
    :try_end_72c
    .catch Ljava/lang/ClassCastException; {:try_start_728 .. :try_end_72c} :catch_7e3

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto :goto_6cc

    :cond_731
    :try_start_731
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;
    :try_end_739
    .catch Ljava/lang/ClassCastException; {:try_start_731 .. :try_end_739} :catch_7de

    move-result-object v0

    :try_start_73a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;
    :try_end_73e
    .catch Ljava/lang/ClassCastException; {:try_start_73a .. :try_end_73e} :catch_7ea

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto :goto_6cc

    :cond_743
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->D(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/da;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/da;->b:Lcom/sdgtl/mediahub/spr/screen/da;

    if-ne v0, v1, :cond_789

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    :cond_780
    :goto_780
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/da;->a:Lcom/sdgtl/mediahub/spr/screen/da;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/da;)V

    goto/16 :goto_4f

    :cond_789
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->D(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/da;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/da;->c:Lcom/sdgtl/mediahub/spr/screen/da;

    if-ne v0, v1, :cond_780

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete_device_uid"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_user_id"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    goto :goto_780

    :cond_7b3
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7cc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_7cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cb;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const-string v1, "delete fail"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4f

    :catch_7d9
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto/16 :goto_6e0

    :catch_7de
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_6e0

    :catch_7e3
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_6e0

    :catch_7ea
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_6e0

    :catch_7f1
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v3

    goto/16 :goto_64b

    :catch_7f7
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto/16 :goto_64b

    :catch_7fc
    move-exception v3

    goto/16 :goto_64b

    :catch_7ff
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto/16 :goto_507

    :catch_804
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_507

    :catch_809
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_507

    :catch_810
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_507

    :catch_817
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto/16 :goto_37e

    :catch_81c
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_37e

    :catch_821
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_37e

    :catch_828
    move-exception v1

    move v1, v3

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    goto/16 :goto_37e

    :catch_82f
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v3

    goto/16 :goto_15c

    :catch_835
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto/16 :goto_15c

    :catch_83a
    move-exception v3

    goto/16 :goto_15c

    :cond_83d
    move-object v0, v6

    move v1, v7

    goto/16 :goto_4a

    :cond_841
    move-object v0, v6

    move v1, v7

    goto/16 :goto_4f3

    :cond_845
    move-object v0, v6

    move v1, v7

    goto/16 :goto_36a
.end method
