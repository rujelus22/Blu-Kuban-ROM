.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiDataPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 806
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .registers 3
    .parameter "dataUri"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_20

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 789
    :goto_c
    return-void

    .line 776
    :sswitch_d
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    goto :goto_c

    .line 779
    :sswitch_13
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_c

    .line 782
    :sswitch_19
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_c

    .line 772
    nop

    :sswitch_data_20
    .sparse-switch
        0xf -> :sswitch_19
        0x96 -> :sswitch_d
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_d
    .end sparse-switch
.end method

.method public onOneDataInputed()V
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 811
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_e

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendContactsIntent(Ljava/util/HashMap;)V

    .line 759
    :goto_d
    return-void

    .line 753
    :cond_e
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$700()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardByMultiUriIntent(Ljava/util/HashMap;)V

    goto :goto_d

    .line 756
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardIntent(Ljava/util/HashMap;)V

    goto :goto_d
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    .line 745
    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, mSelectedContactHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    .line 823
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .registers 5
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;J)V

    .line 828
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 768
    return-void
.end method

.method public onRevertAction()V
    .registers 1

    .prologue
    .line 801
    return-void
.end method
