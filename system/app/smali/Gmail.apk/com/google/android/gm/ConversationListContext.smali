.class public Lcom/google/android/gm/ConversationListContext;
.super Ljava/lang/Object;
.source "ConversationListContext.java"


# static fields
.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mGmailQuery:Ljava/lang/String;

.field private final mLabelName:Ljava/lang/String;

.field private final mSearchQuery:Ljava/lang/String;

.field private mSearchTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/label/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "searchQuery"
    .parameter "label"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/google/android/gm/Utils;->makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mGmailQuery:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;
    .registers 5
    .parameter "bundle"

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/gm/ConversationListContext;

    const-string v1, "account"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gm/ConversationListContext;
    .registers 13
    .parameter "context"
    .parameter "callerAccount"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 87
    move-object v0, p1

    .line 88
    .local v0, account:Ljava/lang/String;
    const/4 v2, 0x0

    .line 89
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SEARCH"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 91
    invoke-static {p2}, Lcom/google/android/gm/Utils;->mailSearchQueryForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/gm/ConversationListContext;->forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v6

    .line 125
    :goto_19
    return-object v6

    .line 94
    :cond_1a
    const-string v6, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_2a
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 100
    .local v5, uri:Landroid/net/Uri;
    sget-object v6, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, v5}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    if-eq v6, v8, :cond_65

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 102
    .local v4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 103
    .restart local v0       #account:Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #label:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 121
    .end local v4           #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v2       #label:Ljava/lang/String;
    :cond_58
    :goto_58
    if-nez v2, :cond_60

    .line 122
    const-string v6, "label"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_60
    invoke-static {p0, v0, v2}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v6

    goto :goto_19

    .line 108
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_65
    sget-object v6, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, v5}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 109
    .local v3, match:I
    if-eq v3, v8, :cond_58

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 111
    .restart local v4       #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 112
    .restart local v0       #account:Ljava/lang/String;
    if-ne v3, v7, :cond_84

    .line 113
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #label:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #label:Ljava/lang/String;
    goto :goto_58

    .line 115
    :cond_84
    invoke-static {p0, v0}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_58
.end method

.method public static forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    invoke-static {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_a
    new-instance v0, Lcom/google/android/gm/ConversationListContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;
    .registers 5
    .parameter "account"
    .parameter "query"

    .prologue
    .line 67
    new-instance v1, Lcom/google/android/gm/ConversationListContext;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static getQueryTerms(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "rawQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x5f

    const/16 v8, 0x3a

    const/16 v7, 0x2d

    const/4 v6, 0x0

    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 237
    const/4 v2, 0x0

    .line 293
    :cond_e
    :goto_e
    return-object v2

    .line 240
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, queryTerms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/StreamTokenizer;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 243
    .local v3, tokenizer:Ljava/io/StreamTokenizer;
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 244
    const/16 v4, 0x41

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 245
    const/16 v4, 0x61

    const/16 v5, 0x7a

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 246
    const/16 v4, 0xa0

    const/16 v5, 0xff

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 247
    invoke-virtual {v3, v7, v7}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 248
    invoke-virtual {v3, v8, v8}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 249
    invoke-virtual {v3, v9, v9}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 250
    const/16 v4, 0x20

    invoke-virtual {v3, v6, v4}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 251
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 254
    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 255
    iget v4, v3, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v4, :sswitch_data_8e

    goto :goto_49

    .line 256
    :sswitch_56
    iget-object v0, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 258
    .local v0, candidate:Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 265
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 266
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_6b} :catch_6c

    goto :goto_49

    .line 289
    .end local v0           #candidate:Ljava/lang/String;
    :catch_6c
    move-exception v1

    .line 290
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Gmail"

    const-string v5, "Problem calling StreamTokenizer#nextToken()"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_e

    .line 272
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #candidate:Ljava/lang/String;
    :cond_77
    :try_start_77
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 277
    const-string v4, "OR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 284
    .end local v0           #candidate:Ljava/lang/String;
    :sswitch_87
    iget-object v4, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8c} :catch_6c

    goto :goto_49

    .line 255
    nop

    :sswitch_data_8e
    .sparse-switch
        -0x3 -> :sswitch_56
        0x22 -> :sswitch_87
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    if-ne p1, p0, :cond_5

    .line 307
    :cond_4
    :goto_4
    return v1

    .line 301
    :cond_5
    instance-of v3, p1, Lcom/google/android/gm/ConversationListContext;

    if-eqz v3, :cond_2c

    move-object v0, p1

    .line 302
    check-cast v0, Lcom/google/android/gm/ConversationListContext;

    .line 303
    .local v0, other:Lcom/google/android/gm/ConversationListContext;
    iget-object v3, v0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4

    .end local v0           #other:Lcom/google/android/gm/ConversationListContext;
    :cond_2c
    move v1, v2

    .line 307
    goto :goto_4
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getGmailQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mGmailQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    const/4 v0, 0x0

    .line 182
    :goto_7
    return-object v0

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListContext;->getQueryTerms(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    .line 182
    :cond_14
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 312
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDraft()Z
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "^r"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMagicInboxView()Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "^iim"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSearchResult()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "label"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationListContext (account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
