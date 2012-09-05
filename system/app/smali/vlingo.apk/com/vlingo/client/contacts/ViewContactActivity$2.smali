.class Lcom/vlingo/client/contacts/ViewContactActivity$2;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ViewContactActivity;->showChoosePopupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ViewContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$2;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$2;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/ViewContactActivity;->finish()V

    .line 110
    return-void
.end method
