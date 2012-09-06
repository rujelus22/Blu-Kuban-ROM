.class public Lcom/dropbox/android/activity/LocalFileBrowserActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/ar;
.implements Lcom/dropbox/android/activity/delegate/H;
.implements Lcom/dropbox/android/util/d;
.implements Ldbxyzptlk/e/q;


# static fields
.field static final synthetic n:Z


# instance fields
.field protected m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->n:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 110
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->c(Landroid/net/Uri;)V

    .line 118
    :goto_13
    return-void

    .line 112
    :cond_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->finish()V

    goto :goto_13
.end method

.method public final a(Landroid/net/Uri;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 97
    sget-boolean v0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->n:Z

    if-nez v0, :cond_12

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_12
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 99
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 102
    :cond_33
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, v0, v2}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Landroid/content/Context;Ljava/util/Collection;Lcom/dropbox/android/util/Z;Landroid/database/Cursor;)Z

    .line 103
    return-void
.end method

.method protected final a(Lcom/dropbox/android/util/Z;Ljava/io/File;Landroid/net/Uri;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0, p3}, Ldbxyzptlk/j/m;->a(Landroid/net/Uri;)V

    .line 158
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->finish()V

    .line 161
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/Z;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 162
    if-nez v0, :cond_2d

    .line 163
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v1, 0x7f0900a1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/aU;->a(I[Ljava/lang/Object;)V

    .line 167
    :goto_2c
    return-void

    .line 165
    :cond_2d
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p4}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/io/File;Z)V

    goto :goto_2c
.end method

.method public final a(Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-boolean v2, p0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->m:Z

    if-nez v2, :cond_11

    .line 172
    sget-object v2, Lcom/dropbox/android/activity/at;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/util/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_26

    .line 187
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 178
    :pswitch_12
    iput-boolean v0, p0, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->m:Z

    .line 179
    new-instance v2, Ldbxyzptlk/e/p;

    sget-object v3, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    if-ne v3, p1, :cond_23

    :goto_1a
    invoke-direct {v2, p0, v0, p2, p3}, Ldbxyzptlk/e/p;-><init>(Landroid/content/Context;ZLjava/util/Collection;Lcom/dropbox/android/util/Z;)V

    .line 184
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Ldbxyzptlk/e/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11

    :cond_23
    move v0, v1

    .line 179
    goto :goto_1a

    .line 172
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->finish()V

    .line 192
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Landroid/net/Uri;)Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Landroid/support/v4/app/j;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method protected final c(Landroid/net/Uri;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    const-string v1, "EXPORT_DB_PROVIDER_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 123
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    .line 125
    invoke-static {p1}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/util/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_49

    .line 129
    invoke-virtual {p0, v1, v2, p1, v6}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->a(Lcom/dropbox/android/util/Z;Ljava/io/File;Landroid/net/Uri;Z)V

    .line 153
    :goto_48
    return-void

    .line 132
    :cond_49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    const v3, 0x7f0900a3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 135
    const v3, 0x7f0900a4

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v3, Lcom/dropbox/android/activity/as;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/dropbox/android/activity/as;-><init>(Lcom/dropbox/android/activity/LocalFileBrowserActivity;Lcom/dropbox/android/util/Z;Ljava/io/File;Landroid/net/Uri;)V

    .line 147
    const v1, 0x7f0900a5

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v1, 0x7f09000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_48
.end method

.method public final d(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "FILE_BROWSER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    .line 210
    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Landroid/net/Uri;)V

    .line 211
    return-void
.end method

.method public final g_()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->finish()V

    .line 93
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "FILE_BROWSER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    .line 80
    if-eqz v0, :cond_15

    .line 81
    invoke-virtual {v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 87
    :goto_14
    return-void

    .line 86
    :cond_15
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onBackPressed()V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "FILE_BROWSER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    .line 53
    if-nez v0, :cond_56

    .line 54
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 58
    sget-object v0, Lcom/dropbox/android/activity/aq;->b:Lcom/dropbox/android/activity/aq;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/aq;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "key_Mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;-><init>()V

    .line 68
    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f(Landroid/os/Bundle;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v1

    .line 72
    const v2, 0x7f0d0053

    const-string v3, "FILE_BROWSER"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 73
    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()I

    .line 75
    :cond_56
    return-void

    .line 60
    :cond_57
    const-string v1, "BROWSE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 198
    invoke-static {p0}, Lcom/dropbox/android/util/b;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
