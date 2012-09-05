.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$8;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CheckRecipients()Z
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
    .line 981
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$8;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$8;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 984
    return-void
.end method
