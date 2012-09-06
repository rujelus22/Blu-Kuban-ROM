.class abstract Lcom/google/android/apps/reader/dialog/DataDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DataDialog.java"


# static fields
.field protected static final ARG_DATA:Ljava/lang/String; = "reader:data"


# instance fields
.field protected mData:Landroid/net/Uri;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "reader:data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/apps/reader/dialog/DataDialog;->mData:Landroid/net/Uri;

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/reader/dialog/DataDialog;->mData:Landroid/net/Uri;

    if-nez v1, :cond_1d

    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1d
    return-void
.end method
