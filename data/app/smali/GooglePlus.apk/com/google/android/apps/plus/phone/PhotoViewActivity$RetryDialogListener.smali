.class Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryDialogListener"
.end annotation


# instance fields
.field final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "tag"

    .prologue
    .line 956
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;->mTag:Ljava/lang/String;

    .line 958
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 962
    packed-switch p2, :pswitch_data_1e

    .line 976
    :cond_3
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 977
    return-void

    .line 964
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    .line 966
    .local v0, fragment:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
    if-eqz v0, :cond_3

    .line 967
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->downloadPhoto(Landroid/content/Context;Z)V

    goto :goto_3

    .line 962
    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method
