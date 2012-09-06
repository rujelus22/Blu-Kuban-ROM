.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a_:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/j;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Landroid/support/v4/b/c;

.field l:Landroid/support/v4/app/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Landroid/support/v4/app/f;

    invoke-direct {v0, p0}, Landroid/support/v4/app/f;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/support/v4/app/j;

    invoke-direct {v0}, Landroid/support/v4/app/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    .line 122
    return-void
.end method

.method public static c()V
    .registers 0

    .prologue
    .line 673
    return-void
.end method


# virtual methods
.method final a(IZZ)Landroid/support/v4/app/s;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    if-nez v0, :cond_b

    .line 739
    new-instance v0, Landroid/support/v4/b/c;

    invoke-direct {v0}, Landroid/support/v4/b/c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    .line 741
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 742
    if-eqz v0, :cond_18

    .line 743
    invoke-virtual {v0, p0}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 750
    :cond_18
    return-object v0
.end method

.method final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 712
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    if-eqz v0, :cond_1a

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 714
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/s;->f:Z

    if-nez v1, :cond_1a

    .line 715
    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    .line 716
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/c;->b(I)V

    .line 719
    :cond_1a
    return-void
.end method

.method final a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 635
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    if-nez v0, :cond_27

    .line 636
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 637
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()V

    :cond_22
    :goto_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->m()V

    .line 641
    :cond_27
    return-void

    .line 639
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    goto :goto_22
.end method

.method protected final a_()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->j()V

    .line 432
    return-void
.end method

.method public final c_()V
    .registers 3

    .prologue
    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 590
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 597
    :goto_9
    return-void

    .line 596
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    goto :goto_9
.end method

.method public final d()Landroid/support/v4/app/i;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 614
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 623
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_9b

    .line 626
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 631
    :cond_9b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    shr-int/lit8 v0, p1, 0x10

    .line 141
    if-eqz v0, :cond_5a

    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_31

    .line 144
    :cond_18
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_30
    return-void

    .line 148
    :cond_31
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 149
    if-nez v0, :cond_56

    .line 150
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 153
    :cond_56
    invoke-static {}, Landroid/support/v4/app/Fragment;->m()V

    goto :goto_30

    .line 158
    :cond_5a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_30
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 167
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 169
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/j;->a(Landroid/content/res/Configuration;)V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_16

    .line 188
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 191
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 195
    if-eqz v0, :cond_25

    .line 196
    iget-object v1, v0, Landroid/support/v4/app/h;->e:Landroid/support/v4/b/c;

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    .line 198
    :cond_25
    if-eqz p1, :cond_36

    .line 199
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 200
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Landroid/support/v4/app/h;->d:Ljava/util/ArrayList;

    :goto_33
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/j;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 202
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->g()V

    .line 203
    return-void

    .line 200
    :cond_3c
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 210
    if-nez p1, :cond_1a

    .line 211
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 221
    :goto_17
    return v0

    .line 219
    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    .line 221
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
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 229
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 304
    :goto_10
    return-object v0

    .line 233
    :cond_11
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-object v2, Landroid/support/v4/app/g;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 235
    if-nez v0, :cond_23

    .line 236
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_23
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 239
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    if-eq v2, v6, :cond_37

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/j;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 253
    :cond_37
    if-nez v1, :cond_41

    if-eqz v5, :cond_41

    .line 254
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 256
    :cond_41
    if-nez v1, :cond_49

    .line 257
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/j;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 260
    :cond_49
    sget-boolean v4, Landroid/support/v4/app/j;->a:Z

    if-eqz v4, :cond_79

    const-string v4, "FragmentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCreateView: id=0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 263
    :cond_79
    if-nez v1, :cond_bc

    .line 264
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 265
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->x:Z

    .line 266
    if-eqz v2, :cond_ba

    move v1, v2

    :goto_84
    iput v1, v4, Landroid/support/v4/app/Fragment;->D:I

    .line 267
    iput v3, v4, Landroid/support/v4/app/Fragment;->E:I

    .line 268
    iput-object v5, v4, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    .line 269
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->y:Z

    .line 270
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    .line 271
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->n()V

    .line 272
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 294
    :goto_9b
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-nez v3, :cond_118

    .line 295
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ba
    move v1, v3

    .line 266
    goto :goto_84

    .line 274
    :cond_bc
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v4, :cond_107

    .line 277
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

    .line 284
    :cond_107
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->y:Z

    .line 288
    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v3, :cond_112

    .line 289
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->n()V

    .line 291
    :cond_112
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_9b

    .line 298
    :cond_118
    if-eqz v2, :cond_11f

    .line 299
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 301
    :cond_11f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12c

    .line 302
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    :cond_12c
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->n()V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_15

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    .line 320
    :cond_15
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 332
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 333
    const/4 v0, 0x1

    .line 336
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
    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 345
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->o()V

    .line 346
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 354
    const/4 v0, 0x1

    .line 365
    :goto_7
    return v0

    .line 357
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    .line 365
    const/4 v0, 0x0

    goto :goto_7

    .line 359
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/j;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 362
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/j;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 357
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
    .line 374
    packed-switch p1, :pswitch_data_e

    .line 379
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 380
    return-void

    .line 376
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/j;->b(Landroid/view/Menu;)V

    goto :goto_3

    .line 374
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

    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->j()V

    .line 393
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->k()V

    .line 394
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->j()V

    .line 421
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    .line 422
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 439
    if-nez p1, :cond_26

    if-eqz p3, :cond_26

    .line 440
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-eqz v1, :cond_11

    .line 441
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 442
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 443
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 445
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 446
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/j;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 447
    if-eqz v1, :cond_25

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    .line 449
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
    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 408
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 410
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    .line 411
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 459
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-eqz v0, :cond_9

    .line 460
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 463
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->d()Ljava/util/ArrayList;

    move-result-object v5

    .line 466
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    if-eqz v0, :cond_3b

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1d
    if-ltz v4, :cond_3b

    .line 471
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, v4}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 472
    iget-boolean v6, v0, Landroid/support/v4/app/s;->f:Z

    if-eqz v6, :cond_31

    move v0, v1

    .line 470
    :goto_2c
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move v2, v0

    goto :goto_1d

    .line 475
    :cond_31
    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    .line 476
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, v4}, Landroid/support/v4/b/c;->c(I)V

    move v0, v2

    goto :goto_2c

    .line 480
    :cond_3b
    if-nez v5, :cond_41

    if-nez v2, :cond_41

    move-object v0, v3

    .line 490
    :goto_40
    return-object v0

    .line 484
    :cond_41
    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0}, Landroid/support/v4/app/h;-><init>()V

    .line 485
    iput-object v3, v0, Landroid/support/v4/app/h;->a:Ljava/lang/Object;

    .line 486
    iput-object v3, v0, Landroid/support/v4/app/h;->b:Ljava/lang/Object;

    .line 487
    iput-object v3, v0, Landroid/support/v4/app/h;->c:Ljava/util/HashMap;

    .line 488
    iput-object v5, v0, Landroid/support/v4/app/h;->d:Ljava/util/ArrayList;

    .line 489
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    iput-object v1, v0, Landroid/support/v4/app/h;->e:Landroid/support/v4/b/c;

    goto :goto_40
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->e()Landroid/os/Parcelable;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_10

    .line 501
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 503
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 513
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 514
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 515
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    if-nez v0, :cond_19

    .line 518
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    .line 519
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->h()V

    .line 522
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->f()V

    .line 523
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    .line 525
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    if-nez v0, :cond_34

    .line 526
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    .line 527
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_5a

    .line 528
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()V

    .line 532
    :cond_32
    :goto_32
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    .line 536
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->i()V

    .line 537
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    if-eqz v0, :cond_68

    .line 538
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_46
    if-ltz v1, :cond_68

    .line 539
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 540
    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()V

    .line 541
    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()V

    .line 538
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_46

    .line 529
    :cond_5a
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    if-nez v0, :cond_32

    .line 530
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/app/s;

    goto :goto_32

    .line 544
    :cond_68
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 551
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 553
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 554
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->l()V

    .line 557
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 689
    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 693
    return-void
.end method
