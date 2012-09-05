.class Lcom/android/email/activity/MessageCompose$26;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$finalData:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6832
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x1

    .line 6837
    if-nez p2, :cond_64

    .line 6838
    const/4 v5, 0x0

    .line 6839
    .local v5, result:I
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6841
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 6842
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6844
    .local v3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v7, 0x0

    .line 6845
    .local v7, uris:Landroid/net/Uri;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, parcelable:Landroid/os/Parcelable;
    move-object v7, v4

    .line 6846
    check-cast v7, Landroid/net/Uri;

    .line 6847
    if-eqz v7, :cond_38

    .line 6848
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I
    invoke-static {v8, v7}, Lcom/android/email/activity/MessageCompose;->access$9000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)I

    move-result v8

    or-int/2addr v5, v8

    goto :goto_1f

    .line 6850
    :cond_38
    const-string v8, "Email"

    const-string v9, "REQUEST_ATTACH_OR_INSERT_SMEMO file = null"

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6851
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6908
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v4           #parcelable:Landroid/os/Parcelable;
    .end local v5           #result:I
    .end local v7           #uris:Landroid/net/Uri;
    :goto_42
    return-void

    .line 6857
    .restart local v0       #action:Ljava/lang/String;
    .restart local v5       #result:I
    :cond_43
    :try_start_43
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 6859
    .local v6, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I
    invoke-static {v8, v6}, Lcom/android/email/activity/MessageCompose;->access$9000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_56} :catch_5f

    move-result v8

    or-int/2addr v5, v8

    .line 6869
    .end local v6           #uri:Landroid/net/Uri;
    :cond_58
    :goto_58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6907
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #result:I
    :cond_5b
    :goto_5b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_42

    .line 6861
    .restart local v0       #action:Ljava/lang/String;
    .restart local v5       #result:I
    :catch_5f
    move-exception v1

    .line 6862
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    .line 6870
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #result:I
    :cond_64
    if-ne p2, v10, :cond_5b

    .line 6872
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 6874
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Z

    move-result v8

    if-eq v8, v10, :cond_92

    .line 6875
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6876
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v8

    const-string v9, ""

    sget-object v10, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v8, v9, v10}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6879
    :cond_92
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6881
    .restart local v0       #action:Ljava/lang/String;
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 6882
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->val$finalData:Landroid/content/Intent;

    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6884
    .restart local v3       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v7, 0x0

    .line 6886
    .restart local v7       #uris:Landroid/net/Uri;
    if-nez v3, :cond_af

    .line 6887
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_42

    .line 6891
    :cond_af
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b3
    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .restart local v4       #parcelable:Landroid/os/Parcelable;
    move-object v7, v4

    .line 6892
    check-cast v7, Landroid/net/Uri;

    .line 6893
    if-eqz v7, :cond_b3

    .line 6894
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V
    invoke-static {v8, v7}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)V

    goto :goto_b3

    .line 6898
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v4           #parcelable:Landroid/os/Parcelable;
    .end local v7           #uris:Landroid/net/Uri;
    :cond_ca
    if-eqz v6, :cond_d2

    .line 6899
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V
    invoke-static {v8, v6}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)V

    goto :goto_5b

    .line 6902
    :cond_d2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_42
.end method
