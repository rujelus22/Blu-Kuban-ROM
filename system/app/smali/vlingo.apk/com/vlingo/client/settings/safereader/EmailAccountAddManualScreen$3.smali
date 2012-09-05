.class Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;
.super Ljava/lang/Object;
.source "EmailAccountAddManualScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 94
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v2, v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinServerType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    .line 95
    .local v0, imap:Z
    :goto_b
    const/4 v1, 0x0

    .line 96
    .local v1, port:I
    if-eqz v0, :cond_28

    .line 97
    packed-switch p3, :pswitch_data_36

    .line 122
    :goto_11
    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v2, v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPort:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void

    .line 94
    .end local v0           #imap:Z
    .end local v1           #port:I
    :cond_1d
    const/4 v0, 0x0

    goto :goto_b

    .line 99
    .restart local v0       #imap:Z
    .restart local v1       #port:I
    :pswitch_1f
    const/16 v1, 0x8f

    .line 100
    goto :goto_11

    .line 102
    :pswitch_22
    const/16 v1, 0x3e1

    .line 103
    goto :goto_11

    .line 105
    :pswitch_25
    const/16 v1, 0x3e1

    goto :goto_11

    .line 110
    :cond_28
    packed-switch p3, :pswitch_data_40

    goto :goto_11

    .line 112
    :pswitch_2c
    const/16 v1, 0x6e

    .line 113
    goto :goto_11

    .line 115
    :pswitch_2f
    const/16 v1, 0x3e3

    .line 116
    goto :goto_11

    .line 118
    :pswitch_32
    const/16 v1, 0x3e3

    goto :goto_11

    .line 97
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch

    .line 110
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
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
    .line 125
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
