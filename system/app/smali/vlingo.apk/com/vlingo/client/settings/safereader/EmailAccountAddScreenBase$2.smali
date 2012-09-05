.class Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$2;
.super Ljava/lang/Object;
.source "EmailAccountAddScreenBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->initControls()V
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
    .line 62
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->finish()V

    .line 65
    return-void
.end method
