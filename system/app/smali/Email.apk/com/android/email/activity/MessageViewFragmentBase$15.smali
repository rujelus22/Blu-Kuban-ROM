.class Lcom/android/email/activity/MessageViewFragmentBase$15;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->changeBgColorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$settingValue:Lcom/android/email/Preferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/Preferences;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8444
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$15;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$15;->val$settingValue:Lcom/android/email/Preferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8446
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 8452
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$15;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 8458
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$15;->val$settingValue:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 8460
    return-void
.end method
