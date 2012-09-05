.class Lcom/sprint/smps/activities/ViewAddressBook$2$1;
.super Ljava/lang/Object;
.source "ViewAddressBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewAddressBook$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewAddressBook$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewAddressBook$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewAddressBook$2$1;->this$1:Lcom/sprint/smps/activities/ViewAddressBook$2;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$2$1;->this$1:Lcom/sprint/smps/activities/ViewAddressBook$2;

    #getter for: Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewAddressBook$2;->access$0(Lcom/sprint/smps/activities/ViewAddressBook$2;)Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    invoke-static {}, Lcom/sprint/smps/activities/ViewAddressBook;->access$0()Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-static {}, Lcom/sprint/smps/activities/ViewAddressBook;->access$0()Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    return-void
.end method
