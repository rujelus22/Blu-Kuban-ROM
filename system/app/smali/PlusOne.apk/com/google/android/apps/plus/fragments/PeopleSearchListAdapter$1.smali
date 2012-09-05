.class Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;
.super Landroid/os/Handler;
.source "PeopleSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 214
    :goto_5
    return-void

    .line 207
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showEmptyPeopleSearchResults()V

    goto :goto_5

    .line 211
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showProgressItem()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$000(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    goto :goto_5

    .line 205
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
