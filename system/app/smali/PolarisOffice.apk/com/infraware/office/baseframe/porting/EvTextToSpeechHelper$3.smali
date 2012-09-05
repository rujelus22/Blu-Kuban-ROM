.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$3;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$3;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3
    .parameter "focusChange"

    .prologue
    .line 740
    packed-switch p1, :pswitch_data_a

    .line 753
    :goto_3
    :pswitch_3
    return-void

    .line 742
    :pswitch_4
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$3;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->stop()V

    goto :goto_3

    .line 740
    :pswitch_data_a
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
