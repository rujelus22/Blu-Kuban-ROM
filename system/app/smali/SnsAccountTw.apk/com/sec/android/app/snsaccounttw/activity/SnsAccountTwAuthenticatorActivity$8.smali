.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;
.super Ljava/lang/Object;
.source "SnsAccountTwAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->dismissDialog(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #calls: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showSoftkeypadAtWindow()V
    invoke-static {v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1500(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    .line 426
    return-void
.end method
