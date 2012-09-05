.class Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;
.super Ljava/lang/Object;
.source "GroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 83
    .local v1, isEditMode:Z
    if-eqz v1, :cond_48

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelecedGroupId()Ljava/util/ArrayList;

    move-result-object v2

    .line 85
    .local v2, selectedGroupIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelectedGroupTitle()Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    .local v3, selectedGroupTitleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "rawContactId"

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    const-string v4, "selectedGroupId"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const-string v4, "selectedGroupTitle"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #selectedGroupIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #selectedGroupTitleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_42
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 95
    return-void

    .line 92
    :cond_48
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateGroup()V

    goto :goto_42
.end method
