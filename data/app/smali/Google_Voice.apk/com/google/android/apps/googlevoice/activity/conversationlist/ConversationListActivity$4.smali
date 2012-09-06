.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$4;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$4;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$4;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->disableDoNotDisturb()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    .line 274
    return-void
.end method
