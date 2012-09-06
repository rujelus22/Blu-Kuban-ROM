.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 1373
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasUsablePhoneNumber()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1390
    :goto_a
    return-void

    .line 1378
    :cond_b
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1379
    .local v0, action:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_a

    .line 1382
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1387
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1379
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_23
    .end packed-switch
.end method
