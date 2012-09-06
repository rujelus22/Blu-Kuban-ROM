.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Ljava/util/HashMap;


# instance fields
.field A:I

.field B:Landroid/support/v4/app/j;

.field C:Landroid/support/v4/app/FragmentActivity;

.field D:I

.field E:I

.field F:Ljava/lang/String;

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:I

.field O:Landroid/view/ViewGroup;

.field P:Landroid/view/View;

.field Q:Landroid/view/View;

.field R:Z

.field S:Z

.field T:Landroid/support/v4/app/s;

.field U:Z

.field V:Z

.field j:I

.field k:Landroid/view/View;

.field l:I

.field m:Landroid/os/Bundle;

.field n:Landroid/util/SparseArray;

.field o:I

.field p:Ljava/lang/String;

.field q:Landroid/os/Bundle;

.field r:Landroid/support/v4/app/Fragment;

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
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

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->j:I

    .line 182
    iput v1, p0, Landroid/support/v4/app/Fragment;->o:I

    .line 194
    iput v1, p0, Landroid/support/v4/app/Fragment;->s:I

    .line 259
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 281
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->S:Z

    .line 356
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 363
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
    .line 382
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 383
    if-nez v0, :cond_17

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 386
    sget-object v1, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 389
    if-eqz p2, :cond_2c

    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 391
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_65

    .line 393
    :cond_2c
    return-object v0

    .line 394
    :catch_2d
    move-exception v0

    .line 395
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 398
    :catch_49
    move-exception v0

    .line 399
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 402
    :catch_65
    move-exception v0

    .line 403
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static l()V
    .registers 0

    .prologue
    .line 677
    return-void
.end method

.method public static m()V
    .registers 0

    .prologue
    .line 816
    return-void
.end method

.method public static o()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return-object v0
.end method

.method public static p()V
    .registers 0

    .prologue
    .line 941
    return-void
.end method

.method public static u()V
    .registers 0

    .prologue
    .line 1129
    return-void
.end method

.method public static v()V
    .registers 0

    .prologue
    .line 1146
    return-void
.end method

.method public static w()V
    .registers 0

    .prologue
    .line 1156
    return-void
.end method

.method public static x()Z
    .registers 1

    .prologue
    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method public static y()V
    .registers 0

    .prologue
    .line 1188
    return-void
.end method

.method public static z()Z
    .registers 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final A()V
    .registers 2

    .prologue
    .line 1336
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 1337
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_c

    .line 1338
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()V

    .line 1340
    :cond_c
    return-void
.end method

.method final B()V
    .registers 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 1344
    return-void
.end method

.method final C()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1347
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-eqz v0, :cond_29

    .line 1348
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 1349
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_1a

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    .line 1351
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->U:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    .line 1353
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_29

    .line 1354
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_2a

    .line 1355
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()V

    .line 1361
    :cond_29
    :goto_29
    return-void

    .line 1357
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    goto :goto_29
.end method

.method final D()V
    .registers 2

    .prologue
    .line 1364
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 1365
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_c

    .line 1366
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->f()V

    .line 1368
    :cond_c
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 927
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 417
    iput p1, p0, Landroid/support/v4/app/Fragment;->o:I

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 879
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 904
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    iget v0, p0, Landroid/support/v4/app/Fragment;->D:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    iget v0, p0, Landroid/support/v4/app/Fragment;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1273
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1274
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1277
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1278
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1279
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1280
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1282
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1283
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1284
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1286
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1287
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->S:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1288
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    if-eqz v0, :cond_e6

    .line 1289
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1292
    :cond_e6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_f7

    .line 1293
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1296
    :cond_f7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_108

    .line 1297
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1299
    :cond_108
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_119

    .line 1300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    :cond_119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v0, :cond_12a

    .line 1304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1307
    :cond_12a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_145

    .line 1308
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1309
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    iget v0, p0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1312
    :cond_145
    iget v0, p0, Landroid/support/v4/app/Fragment;->N:I

    if-eqz v0, :cond_156

    .line 1313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->N:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1315
    :cond_156
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_167

    .line 1316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1318
    :cond_167
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_178

    .line 1319
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1321
    :cond_178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    if-eqz v0, :cond_189

    .line 1322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1324
    :cond_189
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1a7

    .line 1325
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget v0, p0, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1329
    :cond_1a7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_1cb

    .line 1330
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

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

    .line 1333
    :cond_1cb
    return-void
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1113
    return-void
.end method

.method public d()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 976
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 978
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez v0, :cond_25

    .line 979
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 980
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_1c

    .line 981
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->V:Z

    .line 982
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->U:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    .line 984
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_25

    .line 985
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()V

    .line 988
    :cond_25
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 968
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1042
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 1020
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 429
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1059
    return-void
.end method

.method final g()V
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 411
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    .line 414
    :cond_e
    return-void
.end method

.method final h()Z
    .registers 2

    .prologue
    .line 422
    iget v0, p0, Landroid/support/v4/app/Fragment;->A:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 436
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public final j()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final k()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1f

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .registers 2

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 871
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1024
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1209
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1046
    return-void
.end method

.method public q()V
    .registers 2

    .prologue
    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 998
    return-void
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1033
    return-void
.end method

.method public final s()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1066
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1069
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_16

    .line 1070
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->V:Z

    .line 1071
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->U:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    .line 1073
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    if-eqz v0, :cond_1f

    .line 1074
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    .line 1076
    :cond_1f
    return-void
.end method

.method final t()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1085
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->o:I

    .line 1086
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    .line 1087
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1088
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1089
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1090
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->x:Z

    .line 1091
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->y:Z

    .line 1092
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->z:Z

    .line 1093
    iput v1, p0, Landroid/support/v4/app/Fragment;->A:I

    .line 1094
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    .line 1095
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 1096
    iput v1, p0, Landroid/support/v4/app/Fragment;->D:I

    .line 1097
    iput v1, p0, Landroid/support/v4/app/Fragment;->E:I

    .line 1098
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    .line 1099
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    .line 1100
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->H:Z

    .line 1101
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    .line 1102
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/s;

    .line 1103
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->U:Z

    .line 1104
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->V:Z

    .line 1105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 442
    invoke-static {p0, v0}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v1, :cond_18

    .line 444
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->D:I

    if-eqz v1, :cond_2a

    .line 448
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v1, p0, Landroid/support/v4/app/Fragment;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 452
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
