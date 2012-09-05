.class Lcom/google/android/voicesearch/ime/DictationResultHandler$1;
.super Landroid/os/Handler;
.source "DictationResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/DictationResultHandler;->createHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/DictationResultHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;->this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 177
    :goto_5
    return-void

    .line 174
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;->this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->commitNewText()V

    goto :goto_5

    .line 172
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
