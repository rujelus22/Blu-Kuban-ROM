.class public Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "VoiceDialMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;,
        Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;,
        Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;
    }
.end annotation


# instance fields
.field private favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

.field private favoritesBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

.field private recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

.field private recentBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->showRecents()V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->showFavorites()V

    return-void
.end method

.method static synthetic access$600(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

    return-object v0
.end method

.method private showFavorites()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 143
    const-string v0, "car_vd_last_was_recents"

    invoke-static {v0, v4}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 145
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 154
    new-instance v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    invoke-direct {v0, p0, v3}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    .line 155
    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    .line 157
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method private showRecents()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 112
    const-string v0, "car_vd_last_was_recents"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 122
    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    .line 124
    new-instance v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    invoke-direct {v0, p0, v3}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    .line 126
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public getHintDelay()I
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x1d4c

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/car/Hints;->getRandomHintForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecoButtonDisplayLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 166
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_dial"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 170
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public initialize(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

    .line 59
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 81
    const v0, 0x7f0f012b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0f012c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listView:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$2;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v0, "car_vd_last_was_recents"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 103
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->showRecents()V

    .line 106
    :goto_44
    return-void

    .line 105
    :cond_45
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->showFavorites()V

    goto :goto_44
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    if-eqz v0, :cond_a

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->populateAsync()V

    .line 137
    :cond_9
    :goto_9
    return-void

    .line 134
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->populateAsync()V

    goto :goto_9
.end method

.method public removeOnTaskStart()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method
