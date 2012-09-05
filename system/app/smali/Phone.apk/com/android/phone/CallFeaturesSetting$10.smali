.class Lcom/android/phone/CallFeaturesSetting$10;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2750
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2752
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_64

    .line 2783
    :cond_b
    :goto_b
    return-void

    .line 2754
    :pswitch_c
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 2755
    const-string v3, "CallFeaturesSetting"

    const-string v4, "OEM_HIDDEN_GET_DDTM_MODE AsyncResult Exception Occur!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2758
    :cond_18
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_24

    .line 2759
    const-string v3, "CallFeaturesSetting"

    const-string v4, "ar.result == NULL! - No answer for OEM_HIDDEN_GET_DDTM_MODE responce"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2763
    :cond_24
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    aget-byte v1, v3, v5

    .line 2764
    .local v1, mode:B
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e04e3

    invoke-virtual {v3, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2765
    .local v2, value:Ljava/lang/String;
    if-ne v1, v4, :cond_40

    .line 2766
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e04e4

    invoke-virtual {v3, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2769
    :cond_40
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    if-eqz v1, :cond_4d

    move v3, v4

    :goto_49
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b

    :cond_4d
    move v3, v5

    goto :goto_49

    .line 2773
    .end local v1           #mode:B
    .end local v2           #value:Ljava/lang/String;
    :pswitch_4f
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 2774
    const-string v3, "CallFeaturesSetting"

    const-string v4, "OEM_HIDDEN_SET_DDTM_MODE AsyncResult Exception Occur!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b

    .line 2752
    :pswitch_data_64
    .packed-switch 0x16
        :pswitch_c
        :pswitch_4f
    .end packed-switch
.end method
