.class Lcom/android/email/activity/MessageViewFragmentBase$14;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8383
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8390
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 8391
    :goto_c
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 8393
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_49

    .line 8394
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8395
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8391
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 8398
    :cond_4d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->val$activity:Landroid/app/Activity;

    const-class v5, Lcom/android/email/activity/SelectGroup;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8399
    const-string v1, "rpPersonalList"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8400
    const-string v1, "rpAddressList"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8402
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8403
    return-void
.end method
