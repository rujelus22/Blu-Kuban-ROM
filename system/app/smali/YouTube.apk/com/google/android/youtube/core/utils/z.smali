.class public final Lcom/google/android/youtube/core/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/google/android/youtube/core/player/o;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    :goto_6
    return-void

    .line 27
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090011

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/utils/aa;

    invoke-direct {v3, v0, p2}, Lcom/google/android/youtube/core/utils/aa;-><init>(Landroid/widget/ArrayAdapter;Lcom/google/android/youtube/core/player/o;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_6
.end method
