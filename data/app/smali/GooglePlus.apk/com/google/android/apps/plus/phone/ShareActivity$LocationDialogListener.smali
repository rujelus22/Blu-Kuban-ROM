.class Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ShareActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/ShareActivity;Lcom/google/android/apps/plus/phone/ShareActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 630
    packed-switch p2, :pswitch_data_26

    .line 651
    :goto_3
    return-void

    .line 633
    :pswitch_4
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->getLocationSettingActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 634
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 640
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShareActivity;->access$200(Lcom/google/android/apps/plus/phone/ShareActivity;)Lcom/google/android/apps/plus/fragments/ShareFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setLocationChecked(Z)V

    goto :goto_3

    .line 646
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->access$300(Lcom/google/android/apps/plus/phone/ShareActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLocationDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    goto :goto_3

    .line 630
    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_19
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method
