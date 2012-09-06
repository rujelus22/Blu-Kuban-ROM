.class public Lcom/dropbox/android/activity/UploadsActivityGroup;
.super Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;
.source "panda.py"


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private c:Z

.field private d:Z

.field private e:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    .line 26
    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->d:Z

    .line 28
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->e:Lcom/dropbox/android/activity/delegate/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_26

    sget-object v1, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bZ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/CameraUploadDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    sget-object v1, Lcom/dropbox/android/activity/bZ;->b:Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bZ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 106
    :cond_26
    return-void
.end method

.method public final a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->setContentView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_8
    if-eqz v0, :cond_22

    sget-object v2, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/bZ;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 112
    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 116
    :cond_22
    if-nez v0, :cond_34

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/UploadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    sget-object v1, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bZ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 120
    :cond_34
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 76
    const/4 v1, 0x1

    if-gt v0, v1, :cond_d

    .line 77
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->finish()V

    .line 91
    :goto_c
    return-void

    .line 82
    :cond_d
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 87
    iget-object v2, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v0, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->setContentView(Landroid/view/View;)V

    goto :goto_c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/dropbox/android/activity/D;

    if-eqz v1, :cond_12

    .line 44
    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 45
    invoke-interface {v0, p1, p2, p3}, Lcom/dropbox/android/activity/D;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    :goto_11
    return-void

    .line 47
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 64
    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 65
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->b:Ljava/util/LinkedList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    :goto_1e
    return-void

    .line 68
    :cond_1f
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onBackPressed()V

    goto :goto_1e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_10

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    :cond_10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/UploadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    sget-object v1, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bZ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->e:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->c:Z

    if-nez v0, :cond_19

    .line 126
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_19

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->c:Z

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->c:Z

    .line 136
    :goto_18
    return v0

    :cond_19
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_18
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->d:Z

    if-nez v0, :cond_19

    .line 143
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_19

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->d:Z

    .line 147
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->d:Z

    .line 153
    :goto_18
    return v0

    :cond_19
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_18
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivityGroup;->e:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    .line 164
    return-void
.end method
