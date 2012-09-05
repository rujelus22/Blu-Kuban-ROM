.class Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;
.super Lcom/vlingo/client/car/util/TextMessageAdapter;
.source "SMSMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/sms/SMSMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsAdaptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V
    .registers 5
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    .line 231
    invoke-virtual {p1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/util/TextMessageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen;Lcom/vlingo/client/car/sms/SMSMainScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V

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
    .line 236
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/util/SMSUtil;->getRecentMessagesFromInbox(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 241
    iget-object v6, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v6}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f03000e

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 243
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->getMessage(I)Lcom/vlingo/client/util/SMSUtil$TextMessage;

    move-result-object v0

    .line 245
    .local v0, message:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    const v6, 0x7f0f0037

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    .local v1, name:Landroid/widget/TextView;
    const v6, 0x7f0f003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 247
    .local v4, time:Landroid/widget/TextView;
    iget-object v6, v0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    if-eqz v6, :cond_4c

    iget-object v6, v0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4c

    .line 248
    iget-object v6, v0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_35
    new-instance v3, Ljava/sql/Date;

    iget-wide v6, v0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->date:J

    invoke-direct {v3, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 253
    .local v3, sent:Ljava/sql/Date;
    invoke-static {v3}, Lcom/vlingo/client/util/DateUtil;->convertDateToReference(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, ref:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v6, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;

    invoke-direct {v6, p0, v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-object v5

    .line 250
    .end local v2           #ref:Ljava/lang/String;
    .end local v3           #sent:Ljava/sql/Date;
    :cond_4c
    iget-object v6, v0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method
