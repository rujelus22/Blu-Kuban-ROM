.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$4;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 649
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 648
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checkSendbtnStatus()V

    .line 647
    return-void
.end method
