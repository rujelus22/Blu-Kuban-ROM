.class Lcom/sec/android/socialhub/contacts/ContactListView$3;
.super Ljava/lang/Object;
.source "ContactListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/contacts/ContactListView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/contacts/ContactListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/contacts/ContactListView;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListView$3;->this$0:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "pos"
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
    .line 91
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView$3;->this$0:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mAdapter:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->handleClick(Landroid/view/View;)V

    .line 92
    return-void
.end method
