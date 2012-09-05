.class Lcom/swype/android/voice/VoiceKeyboardView$1;
.super Landroid/os/Handler;
.source "VoiceKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/voice/VoiceKeyboardView;->init(Lcom/swype/android/voice/VoiceKeyboardManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/voice/VoiceKeyboardView;


# direct methods
.method constructor <init>(Lcom/swype/android/voice/VoiceKeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 84
    :cond_5
    :goto_5
    return-void

    .line 56
    :pswitch_6
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 59
    :pswitch_12
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 62
    if-eqz p0, :cond_5

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 68
    :pswitch_36
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 75
    :pswitch_58
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v1, v0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/VoiceKeyboardView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/voice/VoiceKeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 81
    :pswitch_78
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardView;

    #calls: Lcom/swype/android/voice/VoiceKeyboardView;->cancel()V
    invoke-static {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->access$000(Lcom/swype/android/voice/VoiceKeyboardView;)V

    goto :goto_5

    .line 54
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_12
        :pswitch_36
        :pswitch_58
        :pswitch_78
    .end packed-switch
.end method
