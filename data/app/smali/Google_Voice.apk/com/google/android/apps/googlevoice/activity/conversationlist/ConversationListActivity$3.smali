.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$3;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedIn()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public onSigningOut()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->finish()V

    .line 258
    return-void
.end method
