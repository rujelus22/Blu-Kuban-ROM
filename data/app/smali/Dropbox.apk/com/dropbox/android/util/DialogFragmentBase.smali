.class public Lcom/dropbox/android/util/DialogFragmentBase;
.super Landroid/support/v4/app/DialogFragment;
.source "panda.py"


# instance fields
.field protected V:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 5
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->a(Landroid/app/Activity;)V

    .line 13
    :try_start_3
    iput-object p1, p0, Lcom/dropbox/android/util/DialogFragmentBase;->V:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_6

    .line 17
    return-void

    .line 14
    :catch_6
    move-exception v0

    .line 15
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement NewLocalFolderDialogCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->s()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/util/DialogFragmentBase;->V:Ljava/lang/Object;

    .line 23
    return-void
.end method
