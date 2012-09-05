.class Lcom/vlingo/client/iux/IUXBaseActivity$1;
.super Ljava/lang/Object;
.source "IUXBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/iux/IUXBaseActivity;->IUXinit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/iux/IUXBaseActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/iux/IUXBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vlingo/client/iux/IUXBaseActivity$1;->this$0:Lcom/vlingo/client/iux/IUXBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vlingo/client/iux/IUXBaseActivity$1;->this$0:Lcom/vlingo/client/iux/IUXBaseActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/iux/IUXBaseActivity;->setResult(I)V

    .line 21
    iget-object v0, p0, Lcom/vlingo/client/iux/IUXBaseActivity$1;->this$0:Lcom/vlingo/client/iux/IUXBaseActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/iux/IUXBaseActivity;->finish()V

    .line 22
    return-void
.end method
