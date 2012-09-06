.class Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;
.super Landroid/os/Handler;
.source "PeopleSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 236
    :goto_5
    return-void

    .line 229
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showEmptyPeopleSearchResults()V

    goto :goto_5

    .line 233
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showProgressItem()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$000(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    goto :goto_5

    .line 227
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
