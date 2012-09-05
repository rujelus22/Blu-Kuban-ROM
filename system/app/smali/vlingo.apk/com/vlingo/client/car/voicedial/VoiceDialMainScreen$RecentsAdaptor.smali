.class Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;
.super Lcom/vlingo/client/car/util/VlingoContactAdapter;
.source "VoiceDialMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsAdaptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V
    .registers 5
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    .line 259
    invoke-virtual {p1}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/util/VlingoContactAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V

    return-void
.end method


# virtual methods
.method protected fetchContacts()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyCalledContacts(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "v"
    .parameter "parent"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 271
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->getContact(I)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v8

    check-cast v8, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    .line 273
    .local v8, contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
    const v0, 0x7f0f0037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 274
    .local v11, name:Landroid/widget/TextView;
    const v0, 0x7f0f003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 276
    .local v9, dateLastContacted:Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v8, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->date:J

    const-wide/32 v3, 0xea60

    const-wide/32 v5, 0x5265c00

    const/high16 v7, 0x8

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v0, 0x7f0f0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 280
    .local v10, iv:Landroid/widget/ImageView;
    iget v0, v8, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->type:I

    packed-switch v0, :pswitch_data_70

    .line 292
    :goto_52
    new-instance v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;

    invoke-direct {v0, p0, v8}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-object p2

    .line 282
    :pswitch_5b
    const v0, 0x7f02009d

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_52

    .line 285
    :pswitch_62
    const v0, 0x7f02009e

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_52

    .line 288
    :pswitch_69
    const v0, 0x7f02009f

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_52

    .line 280
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_69
        :pswitch_62
    .end packed-switch
.end method
