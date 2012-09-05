.class Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;
.super Ljava/lang/Object;
.source "SocialHubRetweetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    .line 296
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 297
    .local v0, backGroundColor:I
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 299
    .local v2, textColor:I
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Z

    move-result v4

    if-nez v4, :cond_11e

    .line 301
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z
    invoke-static {v4, v7}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$002(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Z)Z

    .line 307
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 309
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setTitle(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RT @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 321
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x8

    .line 322
    .local v3, text_length:I
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRemainText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$402(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const/16 v4, 0x8c

    if-le v3, v4, :cond_11f

    .line 325
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v5, v3, -0x8c

    sub-int v1, v4, v5

    .line 326
    .local v1, num:I
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRemainText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$402(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRemainText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 340
    .end local v1           #num:I
    .end local v3           #text_length:I
    :cond_d0
    :goto_d0
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 341
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 343
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->requestIME(Landroid/view/View;)V

    .line 345
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v4, :cond_102

    .line 347
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-virtual {v4, v7}, Lcom/sec/android/socialhub/view/EditTextEx;->setEditTable(Z)V

    .line 350
    :cond_102
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 351
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 354
    :cond_11e
    return-void

    .line 336
    .restart local v3       #text_length:I
    :cond_11f
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_d0
.end method
