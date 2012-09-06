.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Ljava/util/HashMap;


# instance fields
.field A:Landroid/support/v4/app/l;

.field B:Landroid/support/v4/app/FragmentActivity;

.field C:I

.field D:I

.field E:Ljava/lang/String;

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:I

.field N:Landroid/view/ViewGroup;

.field O:Landroid/view/View;

.field P:Landroid/view/View;

.field Q:Z

.field R:Z

.field S:Landroid/support/v4/app/y;

.field T:Z

.field U:Z

.field i:I

.field j:Landroid/view/View;

.field k:I

.field l:Landroid/os/Bundle;

.field m:Landroid/util/SparseArray;

.field n:I

.field o:Ljava/lang/String;

.field p:Landroid/os/Bundle;

.field q:Landroid/support/v4/app/Fragment;

.field r:I

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I


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

    iput v0, p0, Landroid/support/v4/app/Fragment;->i:I

    .line 178
    iput v1, p0, Landroid/support/v4/app/Fragment;->n:I

    .line 190
    iput v1, p0, Landroid/support/v4/app/Fragment;->r:I

    .line 255
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->K:Z

    .line 277
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->R:Z

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
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->p:Landroid/os/Bundle;
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
    new-instance v1, Landroid/support/v4/app/e;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 394
    :catch_53
    move-exception v0

    .line 395
    new-instance v1, Landroid/support/v4/app/e;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 398
    :catch_79
    move-exception v0

    .line 399
    new-instance v1, Landroid/support/v4/app/e;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
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

.method public final a(IZI)Landroid/view/animation/Animation;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 413
    iput p1, p0, Landroid/support/v4/app/Fragment;->n:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->o:Ljava/lang/String;

    .line 415
    return-void
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

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 875
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 867
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

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
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 784
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 792
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

    .line 794
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 795
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 900
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 1142
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1125
    return-void
.end method

.method public final a(Landroid/view/View;)V
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

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
    iget v0, p0, Landroid/support/v4/app/Fragment;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string v0, " mContainerId#="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget v0, p0, Landroid/support/v4/app/Fragment;->D:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1269
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1270
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->z:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1273
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1274
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1275
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1276
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1278
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1279
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1280
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1282
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1283
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->R:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/l;

    if-eqz v0, :cond_e6

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/l;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1288
    :cond_e6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_f7

    .line 1289
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1292
    :cond_f7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_108

    .line 1293
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->p:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1295
    :cond_108
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_119

    .line 1296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1299
    :cond_119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_12a

    .line 1300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    :cond_12a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_145

    .line 1304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1305
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Landroid/support/v4/app/Fragment;->s:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    :cond_145
    iget v0, p0, Landroid/support/v4/app/Fragment;->M:I

    if-eqz v0, :cond_156

    .line 1309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->M:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1311
    :cond_156
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_167

    .line 1312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1314
    :cond_167
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_178

    .line 1315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1317
    :cond_178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_189

    .line 1318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1320
    :cond_189
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    if-eqz v0, :cond_1a7

    .line 1321
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1325
    :cond_1a7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_1cb

    .line 1326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

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

    .line 1329
    :cond_1cb
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->j()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 1184
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1230
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 673
    return-void
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->j()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 972
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 974
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->T:Z

    if-nez v0, :cond_25

    .line 975
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->T:Z

    .line 976
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez v0, :cond_1c

    .line 977
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 978
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->T:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 980
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_25

    .line 981
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->b()V

    .line 984
    :cond_25
    return-void
.end method

.method public final c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->H:Z

    .line 691
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1038
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 964
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1055
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 1016
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

.method final f()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    .line 410
    :cond_e
    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 479
    iget v0, p0, Landroid/support/v4/app/Fragment;->n:I

    if-ltz v0, :cond_c

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->p:Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method final g()Z
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Landroid/support/v4/app/Fragment;->z:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final h()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 432
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final j()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

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
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroid/support/v4/app/j;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/l;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    return v0
.end method

.method public final m()Landroid/support/v4/app/w;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_8

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 772
    :goto_7
    return-object v0

    .line 767
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

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
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 771
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->T:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    goto :goto_7
.end method

.method public final n()Landroid/view/View;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    return-object v0
.end method

.method public o()V
    .registers 2

    .prologue
    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 994
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

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
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->i()Landroid/support/v4/app/FragmentActivity;

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

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1042
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1029
    return-void
.end method

.method public q()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1062
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1065
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez v0, :cond_16

    .line 1066
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->T:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 1069
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_1f

    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->h()V

    .line 1072
    :cond_1f
    return-void
.end method

.method final r()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1081
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->n:I

    .line 1082
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->o:Ljava/lang/String;

    .line 1083
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->t:Z

    .line 1084
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1085
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1086
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1087
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->x:Z

    .line 1088
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->y:Z

    .line 1089
    iput v1, p0, Landroid/support/v4/app/Fragment;->z:I

    .line 1090
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/l;

    .line 1091
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 1092
    iput v1, p0, Landroid/support/v4/app/Fragment;->C:I

    .line 1093
    iput v1, p0, Landroid/support/v4/app/Fragment;->D:I

    .line 1094
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->E:Ljava/lang/String;

    .line 1095
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->F:Z

    .line 1096
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    .line 1097
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->I:Z

    .line 1098
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 1099
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->T:Z

    .line 1100
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 1101
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 1109
    return-void
.end method

.method public final t()V
    .registers 1

    .prologue
    .line 1152
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
    invoke-static {p0, v0}, Ldbxyzptlk/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 439
    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    if-ltz v1, :cond_18

    .line 440
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->C:I

    if-eqz v1, :cond_2a

    .line 444
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p0, Landroid/support/v4/app/Fragment;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 448
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Ljava/lang/String;

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

.method final u()V
    .registers 2

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_c

    .line 1334
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->g()V

    .line 1336
    :cond_c
    return-void
.end method

.method final v()V
    .registers 1

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 1340
    return-void
.end method

.method final w()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1343
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->T:Z

    if-eqz v0, :cond_29

    .line 1344
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->T:Z

    .line 1345
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez v0, :cond_1a

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 1347
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->n:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->T:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    .line 1349
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_29

    .line 1350
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_2a

    .line 1351
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->c()V

    .line 1357
    :cond_29
    :goto_29
    return-void

    .line 1353
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()V

    goto :goto_29
.end method

.method final x()V
    .registers 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 1361
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    if-eqz v0, :cond_c

    .line 1362
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->f()V

    .line 1364
    :cond_c
    return-void
.end method
