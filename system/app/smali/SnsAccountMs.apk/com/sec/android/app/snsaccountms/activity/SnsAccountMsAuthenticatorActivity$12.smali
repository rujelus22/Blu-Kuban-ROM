.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;
.super Ljava/lang/Object;
.source "SnsAccountMsAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->dismissDialog(I)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #calls: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->showSoftkeypadAtWindow()V
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1500(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    .line 482
    return-void
.end method
