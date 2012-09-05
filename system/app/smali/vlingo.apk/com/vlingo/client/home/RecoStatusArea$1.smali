.class Lcom/vlingo/client/home/RecoStatusArea$1;
.super Landroid/os/Handler;
.source "RecoStatusArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/RecoStatusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/RecoStatusArea;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/RecoStatusArea;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vlingo/client/home/RecoStatusArea$1;->this$0:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 42
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20

    .line 49
    :goto_5
    return-void

    .line 44
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 45
    .local v0, level:I
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea$1;->this$0:Lcom/vlingo/client/home/RecoStatusArea;

    #getter for: Lcom/vlingo/client/home/RecoStatusArea;->waveform:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoStatusArea;->access$100(Lcom/vlingo/client/home/RecoStatusArea;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoStatusArea$1;->this$0:Lcom/vlingo/client/home/RecoStatusArea;

    #getter for: Lcom/vlingo/client/home/RecoStatusArea;->waveforms:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v2}, Lcom/vlingo/client/home/RecoStatusArea;->access$000(Lcom/vlingo/client/home/RecoStatusArea;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v1, p0, Lcom/vlingo/client/home/RecoStatusArea$1;->this$0:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoStatusArea;->invalidate()V

    goto :goto_5

    .line 42
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
