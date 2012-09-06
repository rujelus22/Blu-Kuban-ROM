.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:LR;

.field public a:Landroid/os/Bundle;

.field public a:Landroid/support/v4/app/Fragment;

.field public a:Landroid/support/v4/app/FragmentActivity;

.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/view/View;

.field public a:Landroid/view/ViewGroup;

.field a:Ljava/lang/String;

.field public a:Lz;

.field b:Landroid/os/Bundle;

.field public b:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Landroid/view/View;

.field public d:I

.field public e:I

.field public e:Z

.field public f:I

.field public f:Z

.field public g:I

.field public g:Z

.field public h:I

.field public h:Z

.field public i:I

.field public i:Z

.field public j:I

.field public j:Z

.field public k:I

.field public k:Z

.field public l:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field t:Z

.field u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->d:I

    .line 178
    iput v1, p0, Landroid/support/v4/app/Fragment;->f:I

    .line 190
    iput v1, p0, Landroid/support/v4/app/Fragment;->g:I

    .line 255
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->p:Z

    .line 277
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->s:Z

    .line 352
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 379
    if-nez v0, :cond_17

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    sget-object v1, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 385
    if-eqz p2, :cond_2c

    .line 386
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 387
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->b:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_79

    .line 389
    :cond_2c
    return-object v0

    .line 390
    :catch_2d
    move-exception v0

    .line 391
    new-instance v1, Ls;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 394
    :catch_53
    move-exception v0

    .line 395
    new-instance v1, Ls;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 398
    :catch_79
    move-exception v0

    .line 399
    new-instance v1, Ls;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public a()LP;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_8

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 772
    :goto_7
    return-object v0

    .line 767
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_2b

    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_2b
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 771
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->t:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)LR;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    goto :goto_7
.end method

.method public final a()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final a()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public final a()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lx;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Lz;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 812
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 875
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 867
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 784
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 900
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 1142
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1125
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 1218
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1219
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 937
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string v0, " mContainerId#="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->d:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1269
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1270
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1273
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1274
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1275
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1276
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1278
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1279
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1280
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1282
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1283
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Lz;

    if-eqz v0, :cond_e6

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Lz;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1288
    :cond_e6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_f7

    .line 1289
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1292
    :cond_f7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_108

    .line 1293
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1295
    :cond_108
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_119

    .line 1296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1299
    :cond_119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_12a

    .line 1300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    :cond_12a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_145

    .line 1304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1305
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Landroid/support/v4/app/Fragment;->h:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    :cond_145
    iget v0, p0, Landroid/support/v4/app/Fragment;->l:I

    if-eqz v0, :cond_156

    .line 1309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1311
    :cond_156
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_167

    .line 1312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1314
    :cond_167
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_178

    .line 1315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1317
    :cond_178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-eqz v0, :cond_189

    .line 1318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1320
    :cond_189
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    if-eqz v0, :cond_1a7

    .line 1321
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget v0, p0, Landroid/support/v4/app/Fragment;->e:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1325
    :cond_1a7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_1cb

    .line 1326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, LR;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1329
    :cond_1cb
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Landroid/support/v4/app/Fragment;->i:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public final a_(I)V
    .registers 4
    .parameter

    .prologue
    .line 413
    iput p1, p0, Landroid/support/v4/app/Fragment;->f:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 964
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 1184
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1038
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 1016
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 673
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->g:Z

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 479
    iget v0, p0, Landroid/support/v4/app/Fragment;->f:I

    if-ltz v0, :cond_c

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->b:Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->m:Z

    .line 691
    return-void
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public d_()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 972
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 974
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->t:Z

    if-nez v0, :cond_25

    .line 975
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->t:Z

    .line 976
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_1c

    .line 977
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 978
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->t:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)LR;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 980
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_25

    .line 981
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->a()V

    .line 984
    :cond_25
    return-void
.end method

.method public e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 705
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->o:Z

    if-eq v0, p1, :cond_17

    .line 706
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->o:Z

    .line 707
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()Z

    move-result v0

    if-nez v0, :cond_17

    .line 708
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a_()V

    .line 711
    :cond_17
    return-void
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 662
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->k:Z

    return v0
.end method

.method public final e_()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    .line 410
    :cond_e
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 425
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 994
    return-void
.end method

.method public f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->p:Z

    if-eq v0, p1, :cond_1b

    .line 724
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->p:Z

    .line 725
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 726
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a_()V

    .line 729
    :cond_1b
    return-void
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 694
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->m:Z

    return v0
.end method

.method public f_()V
    .registers 2

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1055
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1029
    return-void
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1062
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1065
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_16

    .line 1066
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->t:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)LR;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 1069
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_1f

    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->g()V

    .line 1072
    :cond_1f
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 432
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1081
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->f:I

    .line 1082
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/String;

    .line 1083
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->e:Z

    .line 1084
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->f:Z

    .line 1085
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->g:Z

    .line 1086
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->h:Z

    .line 1087
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->i:Z

    .line 1088
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->j:Z

    .line 1089
    iput v1, p0, Landroid/support/v4/app/Fragment;->i:I

    .line 1090
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->a:Lz;

    .line 1091
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 1092
    iput v1, p0, Landroid/support/v4/app/Fragment;->j:I

    .line 1093
    iput v1, p0, Landroid/support/v4/app/Fragment;->k:I

    .line 1094
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    .line 1095
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->k:Z

    .line 1096
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->l:Z

    .line 1097
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->n:Z

    .line 1098
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 1099
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->t:Z

    .line 1100
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1101
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1109
    return-void
.end method

.method public k()V
    .registers 1

    .prologue
    .line 1152
    return-void
.end method

.method public l()V
    .registers 2

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->d_()V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_c

    .line 1334
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->f()V

    .line 1336
    :cond_c
    return-void
.end method

.method public m()V
    .registers 1

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 1340
    return-void
.end method

.method public n()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1343
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->t:Z

    if-eqz v0, :cond_29

    .line 1344
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->t:Z

    .line 1345
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_1a

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1347
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->t:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)LR;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    .line 1349
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_29

    .line 1350
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-nez v0, :cond_2a

    .line 1351
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->b()V

    .line 1357
    :cond_29
    :goto_29
    return-void

    .line 1353
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->c()V

    goto :goto_29
.end method

.method public o()V
    .registers 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->f_()V

    .line 1361
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v0, :cond_c

    .line 1362
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->e()V

    .line 1364
    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1020
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1205
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->q:Z

    .line 1042
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    invoke-static {p0, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 439
    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    if-ltz v1, :cond_18

    .line 440
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->j:I

    if-eqz v1, :cond_2a

    .line 444
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p0, Landroid/support/v4/app/Fragment;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 448
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
