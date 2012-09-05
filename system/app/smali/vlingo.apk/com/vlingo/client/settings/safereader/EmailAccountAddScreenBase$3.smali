.class Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$3;
.super Ljava/lang/Object;
.source "EmailAccountAddScreenBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->addValidationListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$3;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$3;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->updateNextButton()V

    .line 77
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 74
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 72
    return-void
.end method
