.class Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;
.super Lcom/vlingo/client/car/util/TextMessageAdapter;
.source "SafeReaderMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsAdaptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)V
    .registers 5
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    .line 181
    invoke-virtual {p1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09020b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/util/TextMessageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)V

    return-void
.end method


# virtual methods
.method protected fetchMessages()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/util/SMSUtil;->getRecentMessagesFromInbox(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 191
    iget-object v7, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    invoke-virtual {v7}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03000c

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 193
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->getMessage(I)Lcom/vlingo/client/util/SMSUtil$TextMessage;

    move-result-object v2

    .line 195
    .local v2, message:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    const v7, 0x7f0f0037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 196
    .local v3, name:Landroid/widget/TextView;
    const v7, 0x7f0f0038

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    .local v0, body:Landroid/widget/TextView;
    if-nez p1, :cond_6c

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_6c

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6c

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6c

    .line 200
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, text:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090208

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, easterEggTrigger:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 203
    iget-object v7, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    invoke-virtual {v7}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/car/CarEasterEggManager;->doEasterEgg(Landroid/content/Context;)V

    .line 207
    .end local v1           #easterEggTrigger:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_6c
    const v7, 0x7f0f003a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 208
    .local v4, reply:Landroid/widget/ImageButton;
    iget-object v7, v2, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v7, v2, Lcom/vlingo/client/util/SMSUtil$TextMessage;->body:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v7, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;

    invoke-direct {v7, p0, v2}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$1;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v7, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;

    invoke-direct {v7, p0, v2}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor$2;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-object v6
.end method
