.class Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;
.super Ljava/lang/Object;
.source "SafeReaderMainScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->onSMSRecieved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->access$200(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->populateAsync()V

    .line 232
    return-void
.end method
