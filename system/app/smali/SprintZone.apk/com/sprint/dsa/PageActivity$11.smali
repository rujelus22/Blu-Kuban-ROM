.class Lcom/sprint/dsa/PageActivity$11;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageActivity;->showTryTestAgainDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$11;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1071
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1072
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$11;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v0

    .line 1074
    .local v0, tView:Lcom/sprint/dsa/widget/TestConnectionView;
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$11;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/widget/TestConnectionView;->resetView(Landroid/content/Context;)V

    .line 1075
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$11;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 1076
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$11;->this$0:Lcom/sprint/dsa/PageActivity;

    #calls: Lcom/sprint/dsa/PageActivity;->onStartTestConnections()V
    invoke-static {v1}, Lcom/sprint/dsa/PageActivity;->access$3(Lcom/sprint/dsa/PageActivity;)V

    .line 1077
    return-void
.end method
