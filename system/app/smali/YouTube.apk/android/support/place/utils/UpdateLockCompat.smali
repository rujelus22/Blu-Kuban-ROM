.class public Landroid/support/place/utils/UpdateLockCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateLockCompat"


# instance fields
.field mAcquireMethod:Ljava/lang/reflect/Method;

.field mIsHeldMethod:Ljava/lang/reflect/Method;

.field mReleaseMethod:Ljava/lang/reflect/Method;

.field mUpdateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_4
    const-string v0, "android.os.UpdateLock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 31
    const-string v2, "isHeld"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/utils/UpdateLockCompat;->mIsHeldMethod:Ljava/lang/reflect/Method;

    .line 32
    const-string v2, "acquire"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/utils/UpdateLockCompat;->mAcquireMethod:Ljava/lang/reflect/Method;

    .line 33
    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_44

    .line 42
    :goto_43
    return-void

    .line 36
    :catch_44
    move-exception v0

    .line 39
    iput-object v4, p0, Landroid/support/place/utils/UpdateLockCompat;->mReleaseMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Landroid/support/place/utils/UpdateLockCompat;->mAcquireMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Landroid/support/place/utils/UpdateLockCompat;->mIsHeldMethod:Ljava/lang/reflect/Method;

    .line 40
    iput-object v4, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    goto :goto_43
.end method


# virtual methods
.method public acquire()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 59
    :try_start_4
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mAcquireMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 64
    :cond_c
    :goto_c
    return-void

    .line 60
    :catch_d
    move-exception v0

    .line 61
    const-string v1, "UpdateLockCompat"

    const-string v2, "Should have been able to acquire() but couldn\'t"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public isHeld()Z
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    .line 47
    :try_start_4
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mIsHeldMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-result v0

    .line 53
    :goto_13
    return v0

    .line 49
    :catch_14
    move-exception v0

    .line 50
    const-string v1, "UpdateLockCompat"

    const-string v2, "Should have been able to call isHeld() but couldn\'t"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public release()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 69
    :try_start_4
    iget-object v0, p0, Landroid/support/place/utils/UpdateLockCompat;->mReleaseMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/place/utils/UpdateLockCompat;->mUpdateLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 74
    :cond_c
    :goto_c
    return-void

    .line 70
    :catch_d
    move-exception v0

    .line 71
    const-string v1, "UpdateLockCompat"

    const-string v2, "Should have been able to release() but couldn\'t"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
