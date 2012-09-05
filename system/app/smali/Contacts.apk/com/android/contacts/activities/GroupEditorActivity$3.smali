.class Lcom/android/contacts/activities/GroupEditorActivity$3;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupNotFound()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 205
    return-void
.end method

.method public onReverted()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 210
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/activities/GroupEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 235
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 236
    return-void

    .line 225
    :cond_13
    if-eqz p2, :cond_d

    .line 229
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v1, "GroupInfo"

    const-string v2, "GroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method
