.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "panda.py"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/l;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Landroid/support/v4/app/t;

.field l:Landroid/support/v4/app/y;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Landroid/support/v4/app/g;

    invoke-direct {v0, p0}, Landroid/support/v4/app/g;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0}, Landroid/support/v4/app/l;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    .line 121
    return-void
.end method


# virtual methods
.method final a(IZZ)Landroid/support/v4/app/y;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    if-nez v0, :cond_b

    .line 721
    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0}, Landroid/support/v4/app/t;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    .line 723
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    .line 724
    if-nez v0, :cond_22

    .line 725
    if-eqz p3, :cond_21

    .line 726
    new-instance v0, Landroid/support/v4/app/y;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/y;-><init>(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 727
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/t;->b(ILjava/lang/Object;)V

    .line 732
    :cond_21
    :goto_21
    return-object v0

    .line 730
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/y;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_21
.end method

.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    if-eqz v0, :cond_1a

    .line 695
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    .line 696
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/y;->f:Z

    if-nez v1, :cond_1a

    .line 697
    invoke-virtual {v0}, Landroid/support/v4/app/y;->h()V

    .line 698
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->c(I)V

    .line 701
    :cond_1a
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .parameter

    .prologue
    .line 655
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 682
    if-ne p3, v0, :cond_7

    .line 683
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 690
    :goto_6
    return-void

    .line 686
    :cond_7
    const/high16 v0, -0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_14

    .line 687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_14
    iget v0, p1, Landroid/support/v4/app/Fragment;->n:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method final a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    if-nez v0, :cond_11

    .line 618
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 619
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    .line 620
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->c()V

    .line 623
    :cond_11
    return-void
.end method

.method final c()V
    .registers 2

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    if-eqz v0, :cond_14

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    .line 635
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    if-eqz v0, :cond_14

    .line 636
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_1a

    .line 637
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->c()V

    .line 644
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->q()V

    .line 645
    return-void

    .line 639
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()V

    goto :goto_14
.end method

.method public final c_()V
    .registers 3

    .prologue
    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 572
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    .line 579
    :goto_9
    return-void

    .line 578
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    goto :goto_9
.end method

.method public final d()Landroid/support/v4/app/j;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    return-object v0
.end method

.method public final d_()Landroid/support/v4/app/w;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    if-eqz v0, :cond_8

    .line 712
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    .line 716
    :goto_7
    return-object v0

    .line 714
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    .line 715
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    .line 716
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    goto :goto_7
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 596
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 605
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 607
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    if-eqz v0, :cond_9f

    .line 608
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/y;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 613
    :cond_9f
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    shr-int/lit8 v0, p1, 0x10

    .line 140
    if-eqz v0, :cond_65

    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_35

    .line 143
    :cond_18
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_34
    return-void

    .line 147
    :cond_35
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 148
    if-nez v0, :cond_5d

    .line 149
    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_5d
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_34

    .line 156
    :cond_65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_34
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()Z

    move-result v0

    if-nez v0, :cond_b

    .line 165
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 167
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Landroid/content/res/Configuration;)V

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_16

    .line 186
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 189
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    .line 193
    if-eqz v0, :cond_25

    .line 194
    iget-object v1, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/t;

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    .line 196
    :cond_25
    if-eqz p1, :cond_36

    .line 197
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 198
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Ljava/util/ArrayList;

    :goto_33
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/l;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 200
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()V

    .line 201
    return-void

    .line 198
    :cond_3c
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 208
    if-nez p1, :cond_1a

    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 210
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 219
    :goto_17
    return v0

    .line 217
    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    .line 219
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_17
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v6, -0x1

    .line 227
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 302
    :goto_10
    return-object v0

    .line 231
    :cond_11
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    sget-object v2, Landroid/support/v4/app/h;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 233
    if-nez v0, :cond_23

    .line 234
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_23
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 237
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    .line 242
    :cond_35
    if-ne v3, v6, :cond_5c

    if-ne v2, v6, :cond_5c

    if-nez v5, :cond_5c

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_5c
    if-eq v2, v6, :cond_64

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 251
    :cond_64
    if-nez v1, :cond_6e

    if-eqz v5, :cond_6e

    .line 252
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 254
    :cond_6e
    if-nez v1, :cond_78

    if-eq v3, v6, :cond_78

    .line 255
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 258
    :cond_78
    sget-boolean v4, Landroid/support/v4/app/l;->a:Z

    if-eqz v4, :cond_ac

    const-string v4, "FragmentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView: id=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_ac
    if-nez v1, :cond_f3

    .line 262
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 263
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->w:Z

    .line 264
    if-eqz v2, :cond_f1

    move v1, v2

    :goto_b7
    iput v1, v4, Landroid/support/v4/app/Fragment;->C:I

    .line 265
    iput v3, v4, Landroid/support/v4/app/Fragment;->D:I

    .line 266
    iput-object v5, v4, Landroid/support/v4/app/Fragment;->E:Ljava/lang/String;

    .line 267
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->x:Z

    .line 268
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/l;

    .line 269
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 270
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 292
    :goto_ce
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-nez v3, :cond_14f

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f1
    move v1, v3

    .line 264
    goto :goto_b7

    .line 272
    :cond_f3
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v4, :cond_13e

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": Duplicate id 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", or parent id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_13e
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->x:Z

    .line 286
    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v3, :cond_149

    .line 287
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v1, p0, p3, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 289
    :cond_149
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/l;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_ce

    .line 296
    :cond_14f
    if-eqz v2, :cond_156

    .line 297
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 299
    :cond_156
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_163

    .line 300
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 302
    :cond_163
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 314
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->r()V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    if-eqz v0, :cond_15

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->h()V

    .line 318
    :cond_15
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 330
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 331
    const/4 v0, 0x1

    .line 334
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->s()V

    .line 344
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    const/4 v0, 0x1

    .line 363
    :goto_7
    return v0

    .line 355
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    .line 363
    const/4 v0, 0x0

    goto :goto_7

    .line 357
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 360
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 355
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_e

    .line 377
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 378
    return-void

    .line 374
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->b(Landroid/view/Menu;)V

    goto :goto_3

    .line 372
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 387
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()V

    .line 391
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->o()V

    .line 392
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 410
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 411
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()V

    .line 413
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Z

    .line 414
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 421
    if-nez p1, :cond_26

    if-eqz p3, :cond_26

    .line 422
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-eqz v1, :cond_11

    .line 423
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 424
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 425
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 427
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 428
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 429
    if-eqz v1, :cond_25

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    .line 431
    :cond_25
    :goto_25
    return v0

    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_25
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 400
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 402
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Z

    .line 403
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 441
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-eqz v0, :cond_9

    .line 442
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 445
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->a()Ljava/lang/Object;

    move-result-object v5

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->h()Ljava/util/ArrayList;

    move-result-object v6

    .line 448
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    if-eqz v0, :cond_3f

    .line 452
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_21
    if-ltz v4, :cond_3f

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/t;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    .line 454
    iget-boolean v7, v0, Landroid/support/v4/app/y;->f:Z

    if-eqz v7, :cond_35

    move v0, v1

    .line 452
    :goto_30
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move v2, v0

    goto :goto_21

    .line 457
    :cond_35
    invoke-virtual {v0}, Landroid/support/v4/app/y;->h()V

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/t;->d(I)V

    move v0, v2

    goto :goto_30

    .line 462
    :cond_3f
    if-nez v6, :cond_47

    if-nez v2, :cond_47

    if-nez v5, :cond_47

    move-object v0, v3

    .line 472
    :goto_46
    return-object v0

    .line 466
    :cond_47
    new-instance v0, Landroid/support/v4/app/i;

    invoke-direct {v0}, Landroid/support/v4/app/i;-><init>()V

    .line 467
    iput-object v3, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    .line 468
    iput-object v5, v0, Landroid/support/v4/app/i;->b:Ljava/lang/Object;

    .line 469
    iput-object v3, v0, Landroid/support/v4/app/i;->c:Ljava/util/HashMap;

    .line 470
    iput-object v6, v0, Landroid/support/v4/app/i;->d:Ljava/util/ArrayList;

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    iput-object v1, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/t;

    goto :goto_46
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 481
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_10

    .line 483
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 485
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 495
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 496
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 497
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    if-nez v0, :cond_19

    .line 500
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    .line 501
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->l()V

    .line 504
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->j()V

    .line 505
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Z

    .line 507
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    if-nez v0, :cond_34

    .line 508
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    .line 509
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    if-eqz v0, :cond_5a

    .line 510
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->b()V

    .line 514
    :cond_32
    :goto_32
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    .line 518
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->m()V

    .line 519
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    if-eqz v0, :cond_68

    .line 520
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_46
    if-ltz v1, :cond_68

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/t;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    .line 522
    invoke-virtual {v0}, Landroid/support/v4/app/y;->e()V

    .line 523
    invoke-virtual {v0}, Landroid/support/v4/app/y;->g()V

    .line 520
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_46

    .line 511
    :cond_5a
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    if-nez v0, :cond_32

    .line 512
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/y;

    goto :goto_32

    .line 526
    :cond_68
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 535
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 536
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->p()V

    .line 539
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 671
    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 675
    return-void
.end method
