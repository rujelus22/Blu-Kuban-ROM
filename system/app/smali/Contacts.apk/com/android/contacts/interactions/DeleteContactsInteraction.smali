.class public Lcom/android/contacts/interactions/DeleteContactsInteraction;
.super Landroid/app/Fragment;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
    }
.end annotation


# static fields
.field private static activityTarget:Landroid/app/Activity;

.field private static mActive:Z

.field private static mCanceled:Z

.field private static mIsTaskRunning:Z

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    return p0
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->activityTarget:Landroid/app/Activity;

    return-object v0
.end method

.method public static isContactsDeleting(Landroid/app/Activity;)Z
    .registers 4
    .parameter "activity"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 97
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 99
    .local v0, fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isTaskRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 100
    const/4 v2, 0x1

    .line 102
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .registers 3
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startDeleteContacts()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    if-nez v0, :cond_24

    .line 181
    sput-boolean v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 182
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    .line 183
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 184
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :cond_24
    return-void
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .registers 6
    .parameter "activity"
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 82
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 84
    .local v0, fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-nez v0, :cond_24

    .line 85
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .end local v0           #fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;-><init>()V

    .line 86
    .restart local v0       #fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContacts"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    :goto_23
    return-object v0

    .line 90
    :cond_24
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    goto :goto_23
.end method


# virtual methods
.method isStarted()Z
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isTaskRunning()Z
    .registers 2

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_1f

    .line 173
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 174
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    .line 175
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    .line 177
    :cond_1f
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    sput-object p1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->activityTarget:Landroid/app/Activity;

    .line 115
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 133
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_32

    .line 135
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 137
    :cond_32
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v0, :cond_3f

    .line 138
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->setTarget(Ljava/lang/Object;)V

    .line 140
    :cond_3f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "active"

    sget-boolean v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 126
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    .line 127
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_e

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 148
    :cond_e
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v0, :cond_35

    .line 149
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 150
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    :cond_29
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_35

    .line 153
    sput-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 157
    :cond_35
    sput-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->activityTarget:Landroid/app/Activity;

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 159
    return-void
.end method

.method public setDeleteUris(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 190
    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 193
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    .line 195
    :cond_e
    return-void
.end method
