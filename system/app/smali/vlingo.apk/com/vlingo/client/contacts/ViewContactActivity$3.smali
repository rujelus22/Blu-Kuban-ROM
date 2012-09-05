.class Lcom/vlingo/client/contacts/ViewContactActivity$3;
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

.field final synthetic val$contacts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ViewContactActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$3;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/vlingo/client/contacts/ViewContactActivity$3;->val$contacts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$3;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$3;->val$contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    iget v0, v0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    invoke-virtual {v1, v0}, Lcom/vlingo/client/contacts/ViewContactActivity;->openContact(I)V

    .line 120
    return-void
.end method
