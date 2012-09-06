.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCallListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dismissDialog(I)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->getResultCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9c

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "address"

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v2, v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "body"

    const-string v2, "EXTRA_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/sent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 349
    .local v1, msgUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 351
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 355
    .local v9, threadId:J
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms-sms/conversations/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .local v6, conversationIntent:Landroid/content/Intent;
    const/high16 v8, 0x3400

    .line 359
    .local v8, flags:I
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iput-object v3, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 374
    .end local v1           #msgUri:Landroid/net/Uri;
    .end local v6           #conversationIntent:Landroid/content/Intent;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #flags:I
    .end local v9           #threadId:J
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->unregisterSmsSentReceiver()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 375
    return-void

    .line 367
    :cond_9c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    if-nez v0, :cond_c0

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iput-object v3, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 372
    :cond_c0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_96
.end method
