.class Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;
.super Ljava/lang/Object;
.source "ViewAddressBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;

.field private final synthetic val$parentView:Landroid/view/View;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->this$2:Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;

    iput-object p2, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->val$parentView:Landroid/view/View;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->this$2:Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;

    #getter for: Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;->this$1:Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;->access$0(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1;)Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;->access$0(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;)Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    new-instance v1, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1$1;

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;->val$parentView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1$1;-><init>(Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter$1$1;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method
