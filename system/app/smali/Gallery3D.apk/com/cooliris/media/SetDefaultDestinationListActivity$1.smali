.class Lcom/cooliris/media/SetDefaultDestinationListActivity$1;
.super Ljava/lang/Object;
.source "SetDefaultDestinationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/SetDefaultDestinationListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/SetDefaultDestinationListActivity;


# direct methods
.method constructor <init>(Lcom/cooliris/media/SetDefaultDestinationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;->this$0:Lcom/cooliris/media/SetDefaultDestinationListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_4e

    .line 153
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v4, "invalid option"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_a
    return-void

    .line 113
    :pswitch_b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, phonebookIntent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "email-phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v3, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;->this$0:Lcom/cooliris/media/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f5

    invoke-virtual {v3, v2, v4}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 133
    .end local v2           #phonebookIntent:Landroid/content/Intent;
    :pswitch_21
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mediabrowser.NEW_EMAIL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, newEmailScreen:Landroid/content/Intent;
    const-string v3, "com.cooliris.media"

    const-string v4, "com.cooliris.media.GetNewContactNewEmail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;->this$0:Lcom/cooliris/media/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v1, v4}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 140
    .end local v1           #newEmailScreen:Landroid/content/Intent;
    :pswitch_37
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mediabrowser.NEW_CONTACT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, newContactScreen:Landroid/content/Intent;
    const-string v3, "com.cooliris.media"

    const-string v4, "com.cooliris.media.GetNewContactNewEmail"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v3, p0, Lcom/cooliris/media/SetDefaultDestinationListActivity$1;->this$0:Lcom/cooliris/media/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v0, v4}, Lcom/cooliris/media/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 96
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_21
        :pswitch_37
    .end packed-switch
.end method
