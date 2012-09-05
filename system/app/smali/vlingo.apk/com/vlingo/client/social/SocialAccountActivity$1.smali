.class Lcom/vlingo/client/social/SocialAccountActivity$1;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput-object p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v6, 0xcc

    .line 229
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v3}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 230
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 231
    .local v2, usernameField:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f0f0003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 232
    .local v1, passwordField:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_41

    .line 233
    :cond_2d
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v5, 0x7f09040b

    invoke-virtual {v4, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v3, v6}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 253
    :cond_40
    :goto_40
    return-void

    .line 237
    :cond_41
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_65

    .line 238
    :cond_51
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v5, 0x7f0903ff

    invoke-virtual {v4, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v3, v6}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_40

    .line 243
    :cond_65
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 245
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v3}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 246
    new-instance v0, Lcom/vlingo/client/social/api/FoursquareAPI;

    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v0, v3}, Lcom/vlingo/client/social/api/FoursquareAPI;-><init>(Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;)V

    .line 247
    .local v0, api:Lcom/vlingo/client/social/api/FoursquareAPI;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 249
    .end local v0           #api:Lcom/vlingo/client/social/api/FoursquareAPI;
    :cond_8f
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v3}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 250
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    new-instance v4, Lcom/vlingo/client/social/api/TwitterAPI;

    iget-object v5, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v4, v5}, Lcom/vlingo/client/social/api/TwitterAPI;-><init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v3, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->access$202(Lcom/vlingo/client/social/SocialAccountActivity;Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI;

    .line 251
    iget-object v3, p0, Lcom/vlingo/client/social/SocialAccountActivity$1;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #getter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v3}, Lcom/vlingo/client/social/SocialAccountActivity;->access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/social/api/TwitterAPI;->verifyCredentials(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method
