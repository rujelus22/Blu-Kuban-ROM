.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "panda.py"

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


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    .line 73
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    .line 74
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    .line 75
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 83
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 234
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->D:I

    if-nez v0, :cond_3a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 236
    if-eqz p1, :cond_39

    .line 237
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    .line 238
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    .line 239
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    .line 240
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 241
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 244
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 234
    goto :goto_a
.end method

.method public final a(Landroid/support/v4/app/j;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()I

    .line 124
    return-void
.end method

.method final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 157
    :cond_d
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->h:Z

    .line 158
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    if-ltz v0, :cond_20

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->k()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/j;->a(II)V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 171
    :goto_1f
    return-void

    .line 163
    :cond_20
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->k()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    .line 165
    if-eqz p1, :cond_31

    .line 166
    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    goto :goto_1f

    .line 168
    :cond_31
    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()I

    goto :goto_1f
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    return v0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_9

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 265
    :goto_8
    return-object v0

    .line 253
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->c(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->g:Z

    .line 255
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    packed-switch v0, :pswitch_data_38

    .line 265
    :goto_17
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_8

    .line 257
    :pswitch_26
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    :pswitch_31
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_17

    .line 255
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 292
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 337
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->h:Z

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 342
    :cond_f
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 374
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 376
    :cond_c
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_8

    .line 333
    :cond_7
    :goto_7
    return-void

    .line 316
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->n()Landroid/view/View;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_21

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1c
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 323
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 324
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    if-eqz p1, :cond_7

    .line 328
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_7

    .line 330
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public final e()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 383
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 384
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->g:Z

    .line 385
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    .line 389
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->h:Z

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 393
    :cond_14
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    .line 348
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_14

    .line 350
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    :cond_14
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    if-eqz v0, :cond_1f

    .line 354
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    :cond_1f
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    if-eqz v0, :cond_2a

    .line 357
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    :cond_2a
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    if-nez v0, :cond_35

    .line 360
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_40

    .line 363
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_40
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    .line 366
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    :cond_4c
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->h:Z

    if-nez v0, :cond_8

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->a(Z)V

    .line 306
    :cond_8
    return-void
.end method
