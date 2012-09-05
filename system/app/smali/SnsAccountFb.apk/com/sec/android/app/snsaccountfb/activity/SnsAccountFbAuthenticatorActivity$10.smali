.class Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$10;
.super Ljava/lang/Object;
.source "SnsAccountFbAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$10;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$10;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->dismissDialog(I)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$10;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #calls: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->showSoftkeypadAtWindow()V
    invoke-static {v0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1500(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)V

    .line 459
    return-void
.end method
