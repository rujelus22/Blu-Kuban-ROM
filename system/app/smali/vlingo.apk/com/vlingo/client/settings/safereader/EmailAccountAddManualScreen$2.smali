.class Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;
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
    .line 79
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 81
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    return-void
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
    .line 85
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
