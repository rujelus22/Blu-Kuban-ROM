.class Lcom/syncmldstmo/smluiNetwork$1;
.super Ljava/lang/Object;
.source "smluiNetwork.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiNetwork;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiNetwork;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiNetwork;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/syncmldstmo/smluiNetwork$1;->this$0:Lcom/syncmldstmo/smluiNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/syncmldstmo/smluiNetwork$1;->this$0:Lcom/syncmldstmo/smluiNetwork;

    #getter for: Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;
    invoke-static {v0}, Lcom/syncmldstmo/smluiNetwork;->access$000(Lcom/syncmldstmo/smluiNetwork;)Lcom/syncmldstmo/database/smlDbNetworkProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smluiNetwork$1;->this$0:Lcom/syncmldstmo/smluiNetwork;

    #getter for: Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v1}, Lcom/syncmldstmo/smluiNetwork;->access$100(Lcom/syncmldstmo/smluiNetwork;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v1

    iget v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v0, v0, v1

    iput p3, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    .line 70
    packed-switch p3, :pswitch_data_30

    .line 86
    :goto_19
    return-void

    .line 73
    :pswitch_1a
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 74
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_19

    .line 79
    :pswitch_25
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_19

    .line 70
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
