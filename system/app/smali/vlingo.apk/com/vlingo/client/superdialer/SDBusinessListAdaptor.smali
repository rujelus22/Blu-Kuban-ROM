.class public Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;
.super Landroid/widget/BaseAdapter;
.source "SDBusinessListAdaptor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;
    }
.end annotation


# static fields
.field public static final STATE_DISPLAY_RESULTS:I = 0x3

.field public static final STATE_PROMPT:I = 0x1

.field public static final STATE_SEARCHING:I = 0x2


# instance fields
.field private currentSearchQuery:Ljava/lang/String;

.field private currentSpokenLocation:Ljava/lang/String;

.field private volatile currentState:I

.field private final listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

.field private localSearchListings:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;"
        }
    .end annotation
.end field

.field private lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

.field private final parentActivity:Landroid/app/Activity;

.field private providers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;)V
    .registers 6
    .parameter "parentActivity"
    .parameter "listView"
    .parameter "lsManager"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentState:I

    .line 52
    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->showing:Z

    .line 55
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    .line 57
    iput-object p4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    .line 59
    iput-object p3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSpokenLocation:Ljava/lang/String;

    .line 64
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private executeSearch(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "search"
    .parameter "spokenLocation"
    .parameter "force"

    .prologue
    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    if-eqz p3, :cond_20

    .line 236
    :cond_10
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    .line 237
    iput-object p2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSpokenLocation:Ljava/lang/String;

    .line 238
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setCurrentState(I)V

    .line 239
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->lsManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendSearchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V

    .line 240
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyDataSetChanged()V

    .line 242
    :cond_20
    return-void
.end method

.method private declared-synchronized getCurrentState()I
    .registers 2

    .prologue
    .line 351
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getHeaderView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 199
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v5, 0x7f090412

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/16 v6, 0x64

    invoke-static {v3, v4, v5, v6}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemHeaderView;

    move-result-object v0

    .line 201
    .local v0, item:Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
    iget-boolean v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->showing:Z

    if-eqz v3, :cond_3b

    .line 202
    const/16 v3, 0x66

    invoke-virtual {v0, v3}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    .line 212
    :goto_1d
    const-string v2, ""

    .line 213
    .local v2, subText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    .line 214
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 215
    .local v1, size:I
    if-nez v1, :cond_4e

    .line 216
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f09041a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .end local v1           #size:I
    :cond_37
    :goto_37
    invoke-virtual {v0, v2}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setSubHeader(Ljava/lang/CharSequence;)V

    .line 227
    return-object v0

    .line 204
    .end local v2           #subText:Ljava/lang/String;
    :cond_3b
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v3

    if-ne v3, v7, :cond_48

    .line 205
    const v3, 0x7f0200a5

    invoke-virtual {v0, v3}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryResource(I)V

    goto :goto_1d

    .line 207
    :cond_48
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    goto :goto_1d

    .line 218
    .restart local v1       #size:I
    .restart local v2       #subText:Ljava/lang/String;
    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    if-le v1, v7, :cond_7e

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v5, 0x7f090418

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 222
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v5, 0x7f090417

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37
.end method

.method private getNoResultsView()Landroid/view/View;
    .registers 6

    .prologue
    .line 148
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v1

    .line 149
    .local v1, item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v3, 0x7f09041b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 150
    .local v0, html:Landroid/text/Spanned;
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object v1
.end method

.method private getPromptView()Landroid/view/View;
    .registers 6

    .prologue
    .line 165
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 166
    :cond_c
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090419

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v1

    .line 174
    .local v1, item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    :goto_1c
    return-object v1

    .line 169
    .end local v1           #item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    :cond_1d
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const-string v3, ""

    const v4, 0x7f0200a5

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v1

    .line 170
    .restart local v1       #item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090414

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 171
    .local v0, html:Landroid/text/Spanned;
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->showImageAccessory()V

    goto :goto_1c
.end method

.method private getProvidersView()Landroid/view/View;
    .registers 11

    .prologue
    .line 186
    const-string v5, ""

    .line 187
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 188
    .local v3, numProviders:I
    const/4 v0, 0x0

    .line 189
    .local v0, i:I
    iget-object v6, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, prov:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 191
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_43

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 194
    .end local v4           #prov:Ljava/lang/String;
    :cond_46
    iget-object v6, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v9, 0x7f090308

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/superdialer/items/SDItemFooterView;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemFooterView;

    move-result-object v2

    .line 195
    .local v2, item:Lcom/vlingo/client/superdialer/items/SDItemFooterView;
    return-object v2
.end method

.method private getSearchingView()Landroid/view/View;
    .registers 6

    .prologue
    .line 155
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const-string v3, ""

    const v4, 0x7f0200a5

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v1

    .line 156
    .local v1, item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f09041d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 157
    .local v0, html:Landroid/text/Spanned;
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->showProgressAccessory()V

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->setClickable(Z)V

    .line 160
    return-object v1
.end method

.method private getWebSearchView()Landroid/view/View;
    .registers 6

    .prologue
    .line 178
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const-string v3, ""

    const v4, 0x7f0200a5

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v1

    .line 179
    .local v1, item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090415

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 180
    .local v0, html:Landroid/text/Spanned;
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->showImageAccessory()V

    .line 182
    return-object v1
.end method

.method private declared-synchronized setCurrentState(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLocalSearchListings(Ljava/util/Vector;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    .line 266
    invoke-direct {p0, p1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setProviders(Ljava/util/Vector;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 267
    monitor-exit p0

    return-void

    .line 265
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setProviders(Ljava/util/Vector;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    .line 271
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 272
    .local v1, item:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    const-string v3, "Provider"

    invoke-virtual {v1, v3}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 273
    const-string v3, "Provider"

    invoke-virtual {v1, v3}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, provider:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 277
    .end local v1           #item:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .end local v2           #provider:Ljava/lang/String;
    :cond_2b
    return-void
.end method


# virtual methods
.method public executeSearch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "search"
    .parameter "spokenLocation"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->executeSearch(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, numCells:I
    iget-boolean v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->showing:Z

    if-eqz v1, :cond_c

    .line 75
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    .line 99
    :cond_c
    :goto_c
    return v0

    .line 77
    :pswitch_d
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 85
    :goto_17
    add-int/lit8 v0, v0, 0x1

    .line 86
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 82
    :cond_24
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_17

    .line 95
    :pswitch_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 75
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_d
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_17

    .line 356
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 363
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    if-nez p1, :cond_7

    .line 106
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 143
    :goto_6
    return-object v1

    .line 109
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 110
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v2

    packed-switch v2, :pswitch_data_68

    .line 143
    const/4 v1, 0x0

    goto :goto_6

    .line 112
    :pswitch_12
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 113
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_3d

    .line 114
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr p1, v2

    .line 115
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->providers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 116
    if-lez p1, :cond_38

    .line 117
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getProvidersView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 120
    :cond_38
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getWebSearchView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 122
    :cond_3d
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 123
    .local v0, listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    new-instance v3, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;

    invoke-direct {v3, p0, v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;-><init>(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    invoke-static {v2, v0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->create(Landroid/content/Context;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Landroid/view/View$OnClickListener;)Lcom/vlingo/client/localsearch/LocalSearchListingRowView;

    move-result-object v1

    .line 128
    .local v1, row:Lcom/vlingo/client/localsearch/LocalSearchListingRowView;
    goto :goto_6

    .line 131
    .end local v0           #listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .end local v1           #row:Lcom/vlingo/client/localsearch/LocalSearchListingRowView;
    :cond_51
    if-nez p1, :cond_58

    .line 132
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getNoResultsView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 134
    :cond_58
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getWebSearchView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 138
    :pswitch_5d
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getPromptView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 141
    :pswitch_62
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getSearchingView()Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 110
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_62
        :pswitch_12
    .end packed-switch
.end method

.method public notifyListShowing(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "showing"
    .parameter "currentSearchText"
    .parameter "spokenLocation"

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->showing:Z

    if-eq p1, v0, :cond_18

    .line 293
    iput-boolean p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->showing:Z

    .line 298
    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 299
    invoke-direct {p0, p2, p3, v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->executeSearch(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    :cond_18
    :goto_18
    return-void

    .line 301
    :cond_19
    iput-object p2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyDataSetChanged()V

    goto :goto_18
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "arg1"
    .parameter "index"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 313
    if-nez p3, :cond_a

    .line 314
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

    invoke-interface {v2}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;->onBusniessHeaderClicked()V

    .line 344
    :cond_9
    :goto_9
    return-void

    .line 315
    :cond_a
    if-lez p3, :cond_9

    .line 316
    add-int/lit8 p3, p3, -0x1

    .line 317
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v4

    packed-switch v4, :pswitch_data_62

    :pswitch_15
    goto :goto_9

    .line 337
    :pswitch_16
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSpokenLocation:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->executeSearch(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 319
    :pswitch_1e
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt p3, v4, :cond_4b

    .line 320
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr p3, v4

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, doSearch:Z
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_45

    .line 323
    if-ne p3, v2, :cond_43

    move v0, v2

    .line 328
    :goto_39
    if-eqz v0, :cond_9

    .line 329
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vlingo/client/util/WebSearchUtil;->launchWebSearch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :cond_43
    move v0, v3

    .line 323
    goto :goto_39

    .line 326
    :cond_45
    if-nez p3, :cond_49

    move v0, v2

    :goto_48
    goto :goto_39

    :cond_49
    move v0, v3

    goto :goto_48

    .line 331
    .end local v0           #doSearch:Z
    :cond_4b
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 332
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 333
    .local v1, listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

    invoke-interface {v2, v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;->onBusinessListingClickedForDetails(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    goto :goto_9

    .line 317
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_1e
    .end packed-switch
.end method

.method public onRequestComplete(ZLjava/util/Vector;)V
    .registers 5
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    if-eqz p1, :cond_14

    .line 246
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setCurrentState(I)V

    .line 247
    invoke-direct {p0, p2}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setLocalSearchListings(Ljava/util/Vector;)V

    .line 257
    :goto_9
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$3;-><init>(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    return-void

    .line 249
    :cond_14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setCurrentState(I)V

    .line 250
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;-><init>(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public resetSearch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "currentSearchQuery"
    .parameter "currentSpokenLocation"

    .prologue
    const/4 v1, 0x1

    .line 280
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->localSearchListings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 281
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSearchQuery:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->currentSpokenLocation:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getCurrentState()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 284
    invoke-direct {p0, v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->setCurrentState(I)V

    .line 285
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyDataSetChanged()V

    .line 287
    :cond_16
    return-void
.end method
