.class Lcom/sprint/dsa/DiagnosticsInfoActivity$1;
.super Ljava/lang/Object;
.source "DiagnosticsInfoActivity.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/DiagnosticsInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DiagnosticsInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 146
    const-string v0, ""

    .line 147
    .local v0, desc:Ljava/lang/String;
    packed-switch p1, :pswitch_data_84

    .line 173
    :goto_5
    :pswitch_5
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$1(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mPosition:I
    invoke-static {v2}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$2(Lcom/sprint/dsa/DiagnosticsInfoActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$3(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->updateView(ILandroid/view/View;ILjava/lang/String;)V

    .line 174
    return-void

    .line 149
    :pswitch_1b
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.start"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_5

    .line 152
    :pswitch_28
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.successful"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    goto :goto_5

    .line 155
    :pswitch_35
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.failed"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_5

    .line 158
    :pswitch_42
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.canceled"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_5

    .line 161
    :pswitch_4f
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.failed.onvoicecall"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_5

    .line 164
    :pswitch_5c
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.failed.airplanemode"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_5

    .line 167
    :pswitch_69
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.failed.inactivedevive"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    goto :goto_5

    .line 170
    :pswitch_76
    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsInfoActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v1}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v1

    const-string v2, "status.test.failed.wifion"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 147
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_5
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_5
        :pswitch_4f
        :pswitch_5c
        :pswitch_69
        :pswitch_76
    .end packed-switch
.end method
