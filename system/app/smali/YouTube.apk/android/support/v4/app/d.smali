.class public Landroid/support/v4/app/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:I

.field f:Landroid/app/Dialog;

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    iput v0, p0, Landroid/support/v4/app/d;->a:I

    .line 74
    iput v0, p0, Landroid/support/v4/app/d;->b:I

    .line 75
    iput-boolean v1, p0, Landroid/support/v4/app/d;->c:Z

    .line 76
    iput-boolean v1, p0, Landroid/support/v4/app/d;->d:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/d;->e:I

    .line 85
    return-void
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-boolean v0, p0, Landroid/support/v4/app/d;->h:Z

    if-eqz v0, :cond_6

    .line 192
    :goto_5
    return-void

    .line 172
    :cond_6
    iput-boolean v2, p0, Landroid/support/v4/app/d;->h:Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->i:Z

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    .line 175
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    .line 178
    :cond_17
    iput-boolean v2, p0, Landroid/support/v4/app/d;->g:Z

    .line 179
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    if-ltz v0, :cond_28

    .line 180
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    iget v1, p0, Landroid/support/v4/app/d;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->a(II)V

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/d;->e:I

    goto :goto_5

    .line 184
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 186
    if-eqz p1, :cond_37

    .line 187
    invoke-virtual {v0}, Landroid/support/v4/app/p;->b()I

    goto :goto_5

    .line 189
    :cond_37
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/d;->a(Z)V

    .line 156
    return-void
.end method

.method public final a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/d;->a:I

    .line 103
    iget v0, p0, Landroid/support/v4/app/d;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/support/v4/app/d;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 104
    :cond_d
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/d;->b:I

    .line 106
    :cond_12
    if-eqz p2, :cond_16

    .line 107
    iput p2, p0, Landroid/support/v4/app/d;->b:I

    .line 109
    :cond_16
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 254
    iget-boolean v0, p0, Landroid/support/v4/app/d;->i:Z

    if-nez v0, :cond_a

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->h:Z

    .line 259
    :cond_a
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 276
    iget v0, p0, Landroid/support/v4/app/d;->E:I

    if-nez v0, :cond_3a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/app/d;->d:Z

    .line 278
    if-eqz p1, :cond_39

    .line 279
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->a:I

    .line 280
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->b:I

    .line 281
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->c:Z

    .line 282
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/d;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->d:Z

    .line 283
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->e:I

    .line 286
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 276
    goto :goto_a
.end method

.method public final a(Landroid/support/v4/app/i;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->h:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->i:Z

    .line 125
    invoke-virtual {p1}, Landroid/support/v4/app/i;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 127
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 128
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Landroid/support/v4/app/d;->b:I

    return v0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .parameter

    .prologue
    .line 291
    iget-boolean v0, p0, Landroid/support/v4/app/d;->d:Z

    if-nez v0, :cond_9

    .line 292
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    :goto_8
    return-object v0

    .line 295
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/d;->c(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    .line 296
    iget v0, p0, Landroid/support/v4/app/d;->a:I

    packed-switch v0, :pswitch_data_44

    .line 306
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_39

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_8

    .line 298
    :pswitch_27
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 304
    :pswitch_32
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_14

    .line 310
    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/d;->C:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_8

    .line 296
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_27
    .end packed-switch
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 337
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Landroid/support/v4/app/d;->b:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 264
    iget-boolean v0, p0, Landroid/support/v4/app/d;->i:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v4/app/d;->h:Z

    if-nez v0, :cond_e

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->h:Z

    .line 270
    :cond_e
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 383
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/d;->g:Z

    .line 385
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 387
    :cond_f
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 357
    iget-boolean v0, p0, Landroid/support/v4/app/d;->d:Z

    if-nez v0, :cond_8

    .line 378
    :cond_7
    :goto_7
    return-void

    .line 361
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 362
    if-eqz v0, :cond_1f

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 368
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 369
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/d;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 372
    if-eqz p1, :cond_7

    .line 373
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_7

    .line 375
    iget-object v1, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 417
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 421
    :cond_c
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 392
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    .line 393
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_14

    .line 395
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    :cond_14
    iget v0, p0, Landroid/support/v4/app/d;->a:I

    if-eqz v0, :cond_1f

    .line 399
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/d;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    :cond_1f
    iget v0, p0, Landroid/support/v4/app/d;->b:I

    if-eqz v0, :cond_2a

    .line 402
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/d;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    :cond_2a
    iget-boolean v0, p0, Landroid/support/v4/app/d;->c:Z

    if-nez v0, :cond_35

    .line 405
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/d;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/d;->d:Z

    if-nez v0, :cond_40

    .line 408
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/d;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    :cond_40
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    .line 411
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/d;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    :cond_4c
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 428
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 429
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->g:Z

    .line 434
    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    .line 437
    :cond_12
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/support/v4/app/d;->g:Z

    if-nez v0, :cond_8

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/d;->a(Z)V

    .line 351
    :cond_8
    return-void
.end method
