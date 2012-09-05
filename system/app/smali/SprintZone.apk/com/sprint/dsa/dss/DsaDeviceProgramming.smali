.class public Lcom/sprint/dsa/dss/DsaDeviceProgramming;
.super Ljava/lang/Object;
.source "DsaDeviceProgramming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;
    }
.end annotation


# static fields
.field public static final INIT_DONE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbAdapter:Lcom/sprint/dsa/data/DbAdapter;

.field private mDsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestActivate:Z

.field private final mShowError:Ljava/lang/Runnable;

.field private final mStartDSAClient:Ljava/lang/Runnable;

.field private mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

.field private mTryAgainDialog:Landroid/app/AlertDialog;

.field private mUrl:Ljava/lang/String;

.field private startedDSS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 6
    .parameter "context"
    .parameter "dbAdapter"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    .line 42
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startedDSS:Z

    .line 121
    new-instance v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mShowError:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$3;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$3;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mStartDSAClient:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/sprint/dsa/dss/DsaSystem;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/dsa/dss/DsaSystem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    .line 51
    sget-object v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->INIT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    .line 52
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z

    .line 53
    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDbAdapter:Lcom/sprint/dsa/data/DbAdapter;

    .line 54
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startedDSS:Z

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaDeviceProgramming;Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mStartDSAClient:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mShowError:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/data/DbAdapter;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDbAdapter:Lcom/sprint/dsa/data/DbAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/dss/DsaSystem;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sprint/dsa/dss/DsaDeviceProgramming;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dismissProgressDialog()V
    .registers 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_c

    .line 206
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 212
    :cond_c
    :goto_c
    return-void

    .line 209
    :catch_d
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SprintZone_DSA"

    const-string v2, "IGNORE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public dismissRunAgainDialog()V
    .registers 4

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mTryAgainDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 241
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mTryAgainDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mTryAgainDialog:Landroid/app/AlertDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 247
    :cond_c
    :goto_c
    return-void

    .line 244
    :catch_d
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "IGNORE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public initProgramming()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method public isActivationRequested()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z

    return v0
.end method

.method public isDsaUrl()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isInitCompleted()Z
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_PRESENT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->NO_URL:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_e

    .line 88
    :cond_c
    const/4 v0, 0x1

    .line 90
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public release()V
    .registers 4

    .prologue
    .line 252
    :try_start_0
    new-instance v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$7;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$7;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 260
    :goto_5
    return-void

    .line 257
    :catch_6
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "Error releasing connection manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public resetActivityState(Z)V
    .registers 3
    .parameter "error"

    .prologue
    .line 183
    if-eqz p1, :cond_a

    sget-object v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->NO_URL:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    :goto_4
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mUrl:Ljava/lang/String;

    .line 185
    return-void

    .line 183
    :cond_a
    sget-object v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->INIT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    goto :goto_4
.end method

.method public setRequestActivate(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z

    .line 84
    return-void
.end method

.method public showPrepairNetworkDialog()Landroid/app/ProgressDialog;
    .registers 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_2d

    .line 191
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 193
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v1}, Lcom/sprint/dsa/PageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 196
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_2d
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 200
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method public showRunAgainDialog()V
    .registers 5

    .prologue
    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    const v2, 0x7f08003f

    new-instance v3, Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;

    invoke-direct {v3, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 225
    const v2, 0x7f080040

    new-instance v3, Lcom/sprint/dsa/dss/DsaDeviceProgramming$6;

    invoke-direct {v3, p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming$6;-><init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mTryAgainDialog:Landroid/app/AlertDialog;

    .line 235
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mTryAgainDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method

.method public startDsaClient()V
    .registers 4

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startedDSS:Z

    if-eqz v1, :cond_4

    .line 170
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startedDSS:Z

    .line 171
    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->STARTED_DSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    iput-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    .line 172
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->dismissProgressDialog()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/dsa/dss/DsaClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, dsaIntent:Landroid/content/Intent;
    const-string v1, "com.sprint.dsa.query"

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->resetActivityState(Z)V

    .line 177
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public startProgramming()V
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z

    .line 101
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->INIT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_10

    .line 102
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->showPrepairNetworkDialog()Landroid/app/ProgressDialog;

    .line 103
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->initProgramming()V

    .line 115
    :cond_f
    :goto_f
    return-void

    .line 104
    :cond_10
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_REQUESTED:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_1a

    .line 107
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->showPrepairNetworkDialog()Landroid/app/ProgressDialog;

    goto :goto_f

    .line 108
    :cond_1a
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_PRESENT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->isDsaUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 109
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startDsaClient()V

    goto :goto_f

    .line 110
    :cond_2a
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->NO_URL:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_f

    .line 113
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startDsaClient()V

    goto :goto_f
.end method
