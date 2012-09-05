.class Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$4;
.super Ljava/lang/Object;
.source "EmailAccountAddScreenBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->verifyAccount()V
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
    .line 103
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$4;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$4;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->cancelDialog()V

    .line 106
    return-void
.end method
