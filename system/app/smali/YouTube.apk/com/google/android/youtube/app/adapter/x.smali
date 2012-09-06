.class final Lcom/google/android/youtube/app/adapter/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/ImageButton;

.field private final f:Landroid/widget/ProgressBar;

.field private g:Lcom/google/android/youtube/core/model/UserProfile;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/x;->b:Landroid/view/View;

    .line 146
    const v0, 0x7f080043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->d:Landroid/view/View;

    .line 147
    const v0, 0x7f080044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->c:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f080046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->f:Landroid/widget/ProgressBar;

    .line 149
    const v0, 0x7f080045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->d:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/adapter/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/x;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Landroid/view/View;)V

    return-void
.end method

.method private a()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    .line 164
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    if-eq v0, v1, :cond_56

    const/4 v1, 0x1

    :goto_2f
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 165
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    if-ne v0, v1, :cond_58

    const/4 v1, 0x4

    :goto_39
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 166
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/x;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_44

    sget-object v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->SUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    if-ne v0, v1, :cond_5a

    :cond_44
    const v1, 0x7f020069

    :goto_47
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 169
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->f:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    if-ne v0, v3, :cond_5e

    :goto_50
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->b:Landroid/view/View;

    return-object v0

    :cond_56
    move v1, v2

    .line 164
    goto :goto_2f

    :cond_58
    move v1, v2

    .line 165
    goto :goto_39

    .line 166
    :cond_5a
    const v1, 0x7f02006a

    goto :goto_47

    .line 169
    :cond_5e
    const/16 v2, 0x8

    goto :goto_50
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/x;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/x;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/x;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/adapter/x;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->c(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v6

    new-instance v0, Lcom/google/android/youtube/app/adapter/r;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/r;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;ZB)V

    invoke-virtual {v6, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 176
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/x;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/x;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->e(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->B()I

    move-result v1

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    .line 199
    sget-object v2, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->UNSUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    if-ne v0, v2, :cond_6e

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->f(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v2, "ChannelStore"

    invoke-static {v0, v2, v1, v4}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V

    .line 201
    new-instance v0, Lcom/google/android/youtube/app/adapter/y;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/adapter/y;-><init>(Lcom/google/android/youtube/app/adapter/x;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0179

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/x;->g:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 206
    :goto_6d
    return-void

    .line 203
    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/x;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->f(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v2, "ChannelStore"

    invoke-static {v0, v2, v1, v6}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V

    .line 204
    invoke-direct {p0, v4}, Lcom/google/android/youtube/app/adapter/x;->a(Z)V

    goto :goto_6d
.end method
