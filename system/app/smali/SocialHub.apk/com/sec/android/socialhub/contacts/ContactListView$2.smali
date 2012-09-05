.class Lcom/sec/android/socialhub/contacts/ContactListView$2;
.super Ljava/lang/Object;
.source "ContactListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;


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
    .line 72
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListView$2;->this$0:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chnageSelectedCount(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView$2;->this$0:Lcom/sec/android/socialhub/contacts/ContactListView;

    #getter for: Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/contacts/ContactListView;->access$000(Lcom/sec/android/socialhub/contacts/ContactListView;)Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListView$2;->this$0:Lcom/sec/android/socialhub/contacts/ContactListView;

    #getter for: Lcom/sec/android/socialhub/contacts/ContactListView;->mCheckedListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/contacts/ContactListView;->access$000(Lcom/sec/android/socialhub/contacts/ContactListView;)Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;->chnageSelectedCount(I)V

    .line 79
    :cond_11
    return-void
.end method
