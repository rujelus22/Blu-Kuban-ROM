.class Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;
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
    .line 211
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->speakMessage(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    .line 214
    return-void
.end method
