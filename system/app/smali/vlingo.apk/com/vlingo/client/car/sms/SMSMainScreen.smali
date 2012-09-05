.class public Lcom/vlingo/client/car/sms/SMSMainScreen;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SMSMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;,
        Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;,
        Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;
    }
.end annotation


# instance fields
.field private favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

.field private favoritesBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;

.field private recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

.field private recentBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/sms/SMSMainScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->showRecents()V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/sms/SMSMainScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->showFavorites()V

    return-void
.end method

.method static synthetic access$600(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->listener:Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;

    return-object v0
.end method

.method private showFavorites()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    const-string v0, "car_sms_last_was_recents"

    invoke-static {v0, v4}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 157
    new-instance v0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    invoke-direct {v0, p0, v3}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;Lcom/vlingo/client/car/sms/SMSMainScreen$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    .line 158
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    .line 160
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method private showRecents()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 123
    const-string v0, "car_sms_last_was_recents"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 133
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    .line 135
    new-instance v0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    invoke-direct {v0, p0, v3}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;Lcom/vlingo/client/car/sms/SMSMainScreen$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    .line 136
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->notifyDataSetChanged()V

    .line 139
    return-void
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public getHintDelay()I
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x1d4c

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/car/Hints;->getRandomHintForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 274
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_sms"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 278
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public initialize(Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->listener:Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;

    .line 60
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onDelegateAttached()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 107
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 77
    const v0, 0x7f0f012b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0f012c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    .line 79
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->listView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/car/sms/SMSMainScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/sms/SMSMainScreen$1;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/car/sms/SMSMainScreen$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/sms/SMSMainScreen$2;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const-string v0, "car_sms_last_was_recents"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->showRecents()V

    .line 102
    :goto_44
    return-void

    .line 101
    :cond_45
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->showFavorites()V

    goto :goto_44
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    if-eqz v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->recentAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->populateAsync()V

    .line 117
    :cond_9
    :goto_9
    return-void

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->populateAsync()V

    goto :goto_9
.end method

.method public removeOnTaskStart()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method
