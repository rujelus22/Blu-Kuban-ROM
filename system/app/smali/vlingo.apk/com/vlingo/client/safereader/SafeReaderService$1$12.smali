.class Lcom/vlingo/client/safereader/SafeReaderService$1$12;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->setIntFeature(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$feature:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$12;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$12;->val$feature:I

    iput p3, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$12;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 287
    iget v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$12;->val$feature:I

    packed-switch v0, :pswitch_data_20

    .line 292
    :goto_5
    return-void

    .line 289
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$12;->val$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setNetworkTimeout(Ljava/lang/String;)V

    goto :goto_5

    .line 287
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
