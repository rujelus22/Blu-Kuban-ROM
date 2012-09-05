.class Lcom/android/contacts/list/ContactBrowseListFragment$1;
.super Landroid/os/Handler;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 152
    :goto_5
    return-void

    .line 149
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_5

    .line 147
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
