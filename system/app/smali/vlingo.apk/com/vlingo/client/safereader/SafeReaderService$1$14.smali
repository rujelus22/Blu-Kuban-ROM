.class Lcom/vlingo/client/safereader/SafeReaderService$1$14;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->setVoice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$voice:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$14;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$14;->val$voice:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 344
    const-string v0, "Female"

    .line 345
    .local v0, voiceStr:Ljava/lang/String;
    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$14;->val$voice:I

    packed-switch v1, :pswitch_data_e

    .line 350
    :goto_7
    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setTTSVoice(Ljava/lang/String;)V

    .line 351
    return-void

    .line 347
    :pswitch_b
    const-string v0, "Male"

    goto :goto_7

    .line 345
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
