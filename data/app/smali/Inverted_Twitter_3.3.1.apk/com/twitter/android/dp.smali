.class final Lcom/twitter/android/dp;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .registers 13

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b007a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b007b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v0, v0, Lcom/twitter/android/ProfileFragment;->m:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->l()V

    :cond_13
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1b

    if-lez p8, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_1b
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2f
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_26

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_27

    const/16 v0, 0x191

    if-ne p3, v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/gc;->a(I)V

    :cond_1f
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0, v2}, Lcom/twitter/android/dr;->a(Z)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-nez p7, :cond_26

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/gc;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0, v2}, Lcom/twitter/android/dr;->a(Z)V

    goto :goto_26
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_31

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_31

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0060

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_31
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_31

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_31

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_31
    return-void
.end method

.method public final f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    const/16 v4, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget v0, v0, Lcom/twitter/android/ProfileFragment;->n:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_16
    const/16 v3, 0xc8

    if-ne p3, v3, :cond_40

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0065

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_2d
    move v0, v2

    goto :goto_16

    :cond_2f
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0068

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_40
    const/16 v3, 0x3e9

    if-ne p3, v3, :cond_9a

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/twitter/android/dq;

    invoke-direct {v4, p0, v3, v0}, Lcom/twitter/android/dq;-><init>(Lcom/twitter/android/dp;Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    :goto_5f
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0066

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, v6, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v5, v5, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_9a
    iget-object v2, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v2}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b01cc

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v4}, Lcom/twitter/android/provider/ad;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    goto/16 :goto_c

    :cond_ba
    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v4}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    goto/16 :goto_c
.end method
