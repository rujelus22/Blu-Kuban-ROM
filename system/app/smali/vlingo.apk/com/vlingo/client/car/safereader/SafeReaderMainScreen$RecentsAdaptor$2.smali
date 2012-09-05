.class Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;
.super Ljava/lang/Object;
.source "SafeReaderMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

.field final synthetic val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;->this$1:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;->this$1:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->access$100(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    iget-object v1, v1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    iget-object v2, v2, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;->onReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
