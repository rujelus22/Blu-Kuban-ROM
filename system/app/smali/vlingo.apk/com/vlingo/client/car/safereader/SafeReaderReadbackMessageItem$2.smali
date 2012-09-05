.class Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;
.super Ljava/lang/Object;
.source "SafeReaderReadbackMessageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->onShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->isShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->displayed:Z
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->access$500(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 141
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->onDisplayed()V

    .line 143
    :cond_15
    return-void
.end method
