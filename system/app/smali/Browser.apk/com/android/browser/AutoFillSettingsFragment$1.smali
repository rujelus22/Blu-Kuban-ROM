.class Lcom/android/browser/AutoFillSettingsFragment$1;
.super Landroid/os/Handler;
.source "AutoFillSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AutoFillSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$1;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment$1;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v1}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, c:Landroid/content/Context;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    .line 136
    :cond_c
    :goto_c
    return-void

    .line 122
    :pswitch_d
    if-eqz v0, :cond_c

    .line 123
    const v1, 0x7f0c0098

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 125
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment$1;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    #calls: Lcom/android/browser/AutoFillSettingsFragment;->closeEditor()V
    invoke-static {v1}, Lcom/android/browser/AutoFillSettingsFragment;->access$200(Lcom/android/browser/AutoFillSettingsFragment;)V

    goto :goto_c

    .line 130
    :pswitch_1f
    if-eqz v0, :cond_c

    .line 131
    const v1, 0x7f0c0099

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 120
    :pswitch_data_2c
    .packed-switch 0x64
        :pswitch_d
        :pswitch_1f
    .end packed-switch
.end method
