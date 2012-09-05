.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity$1;
.super Ljava/lang/Object;
.source "SnsAccountMsInformationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "ViaAccountAndSync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsInformationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method
