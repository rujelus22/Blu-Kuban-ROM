.class Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;
.super Ljava/lang/Object;
.source "SetDefaultDestinationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;->this$0:Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "SET-DEFAULT-DESTINATION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item Selected with position :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    packed-switch p3, :pswitch_data_7a

    .line 133
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v4, "invalid option"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_22
    return-void

    .line 98
    :pswitch_23
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v4, " You selected option PHONE_BOOK"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, phonebookIntent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;->this$0:Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f5

    invoke-virtual {v3, v2, v4}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 113
    .end local v2           #phonebookIntent:Landroid/content/Intent;
    :pswitch_40
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v4, " You selected option NEW EMAIL ADDRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mediabrowser.NEW_EMAIL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, newEmailScreen:Landroid/content/Intent;
    const-string v3, "com.cooliris.media"

    const-string v4, "com.cooliris.media.GetNewContactNewEmail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v3, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;->this$0:Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v1, v4}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 119
    .end local v1           #newEmailScreen:Landroid/content/Intent;
    :pswitch_5d
    const-string v3, "SET-DEFAULT-DESTINATION"

    const-string v4, " You selected option NEW PHONE NUMBER"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mediabrowser.NEW_CONTACT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, newContactScreen:Landroid/content/Intent;
    const-string v3, "com.cooliris.media"

    const-string v4, "com.cooliris.media.GetNewContactNewEmail"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v3, p0, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity$1;->this$0:Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v0, v4}, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 87
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_23
        :pswitch_40
        :pswitch_5d
    .end packed-switch
.end method
