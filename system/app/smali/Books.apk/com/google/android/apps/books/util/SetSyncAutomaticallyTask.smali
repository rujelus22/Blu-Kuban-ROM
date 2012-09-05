.class public Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;
.super Landroid/os/AsyncTask;
.source "SetSyncAutomaticallyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mSync:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 4
    .parameter "account"
    .parameter "authority"
    .parameter "sync"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mAccount:Landroid/accounts/Account;

    .line 22
    iput-object p2, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mAuthority:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mSync:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mAuthority:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->mSync:Z

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
