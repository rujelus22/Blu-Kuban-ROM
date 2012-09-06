.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$InstantiationException;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final sClassMap:Ljava/util/HashMap;
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
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Z

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mNextAnim:I

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetRequestCode:I

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 293
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter "context"
    .parameter "fname"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 9
    .parameter "context"
    .parameter "fname"
    .parameter "args"

    .prologue
    .line 319
    :try_start_0
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 320
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_17

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 323
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 326
    .local v2, f:Landroid/support/v4/app/Fragment;
    if-eqz p2, :cond_2c

    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 328
    iput-object p2, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_79

    .line 330
    :cond_2c
    return-object v2

    .line 331
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    :catch_2d
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 335
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_53
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 339
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_79
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method clearIndex()V
    .registers 2

    .prologue
    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1091
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    const-string v0, " mContainerId#="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1097
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1098
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1101
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1102
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1103
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1104
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1105
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1106
    const-string v0, " mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1107
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1108
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1109
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_c5

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1113
    :cond_c5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_d6

    .line 1114
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mImmediateActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1117
    :cond_d6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_e7

    .line 1118
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1121
    :cond_e7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_f8

    .line 1122
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1124
    :cond_f8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_109

    .line 1125
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1128
    :cond_109
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_11a

    .line 1129
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1132
    :cond_11a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_135

    .line 1133
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1134
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1137
    :cond_135
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_146

    .line 1138
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1140
    :cond_146
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_157

    .line 1141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1143
    :cond_157
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_168

    .line 1144
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1146
    :cond_168
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_179

    .line 1147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1149
    :cond_179
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_197

    .line 1150
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1154
    :cond_197
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1bb

    .line 1155
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1158
    :cond_1bb
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 367
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public final getId()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 634
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    .line 635
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 642
    :goto_7
    return-object v0

    .line 637
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_2b

    .line 638
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

    .line 640
    :cond_2b
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 641
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 642
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 477
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

    .line 479
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    .prologue
    .line 611
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .parameter "resId"

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resId"

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 374
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAdded()Z
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isHidden()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 821
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 682
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 745
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 877
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1078
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 770
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 751
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1033
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 953
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 919
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 922
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_16

    .line 923
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 924
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 926
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1f

    .line 927
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 929
    :cond_1f
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    .prologue
    .line 980
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 912
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 937
    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 2
    .parameter "hidden"

    .prologue
    .line 590
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .parameter "activity"
    .parameter "attrs"
    .parameter "savedInstanceState"

    .prologue
    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 737
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 899
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 1012
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 886
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 970
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 851
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 873
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 829
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 831
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_25

    .line 832
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 833
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1c

    .line 834
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 835
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 837
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_25

    .line 838
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 841
    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 895
    return-void
.end method

.method performReallyStop(Z)V
    .registers 6
    .parameter "retaining"

    .prologue
    const/4 v3, 0x0

    .line 1165
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_25

    .line 1166
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1167
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1a

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1169
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1171
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_25

    .line 1172
    if-nez p1, :cond_26

    .line 1173
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 1179
    :cond_25
    :goto_25
    return-void

    .line 1175
    :cond_26
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_25
.end method

.method performStop()V
    .registers 1

    .prologue
    .line 1161
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1162
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1046
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1047
    return-void
.end method

.method restoreViewState()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 348
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 351
    :cond_e
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 421
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_c

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 425
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3
    .parameter "hasMenu"

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    .line 623
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 624
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 628
    :cond_17
    return-void
.end method

.method setIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 354
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2
    .parameter "retain"

    .prologue
    .line 607
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 608
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 3
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    .line 447
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 448
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 449
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 651
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

    .line 653
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 654
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_23

    .line 662
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

    .line 664
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 665
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 381
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_18

    .line 382
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2a

    .line 386
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 390
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1058
    return-void
.end method
