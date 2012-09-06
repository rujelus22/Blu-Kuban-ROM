.class public Lcom/google/android/apps/reader/app/ItemTagEditorActivity;
.super Landroid/app/Activity;
.source "ItemTagEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;
    }
.end annotation


# static fields
.field private static final STATE_INITIAL:Ljava/lang/String; = "reader:initial"

.field private static final STATE_TARGET:Ljava/lang/String; = "reader:target"

.field private static final TAG:Ljava/lang/String; = "ItemTagEditor"

.field private static final THRESHOLD:I = 0x1

.field private static final TOKEN_INITIAL:I = 0x1

.field private static final TOKEN_UPDATE:I = 0x2


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

.field private mInitial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

.field private mTarget:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method private startInitialTagsQuery()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 123
    iget-object v11, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    .line 124
    .local v11, target:Landroid/net/Uri;
    if-nez v11, :cond_c

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 127
    :cond_c
    const/4 v1, 0x1

    .line 128
    .local v1, token:I
    move-object v2, v11

    .line 129
    .local v2, cookie:Landroid/net/Uri;
    invoke-static {v11}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v8

    .line 130
    .local v8, account:Lcom/google/android/accounts/Account;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 131
    .local v9, itemId:J
    invoke-static {v8, v9, v10}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->forItem(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, uri:Landroid/net/Uri;
    new-array v4, v13, [Ljava/lang/String;

    const-string v0, "label"

    aput-object v0, v4, v12

    .line 135
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "id LIKE ?"

    .line 136
    .local v5, selection:Ljava/lang/String;
    new-array v6, v13, [Ljava/lang/String;

    const-string v0, "%/label/%"

    aput-object v0, v6, v12

    .line 139
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v7, "label COLLATE NOCASE ASC"

    .line 140
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private updateTags()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 196
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    .line 197
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;

    .line 198
    if-nez v3, :cond_a

    move v0, v8

    .line 241
    :goto_9
    return v0

    .line 203
    :cond_a
    const/4 v1, 0x2

    .line 205
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 206
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 207
    invoke-static {v0, v5, v6}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->forItem(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v6

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move v5, v8

    .line 212
    :goto_2c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_43

    .line 213
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-interface {v7, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2c

    .line 219
    :cond_43
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_47
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 224
    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 225
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 226
    const-string v9, "label"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1, v2, v6, v8}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_47

    .line 232
    :cond_6f
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_73
    :goto_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 234
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_73

    .line 241
    :cond_98
    const/4 v0, 0x1

    goto/16 :goto_9
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 178
    :cond_7
    :goto_7
    return-void

    .line 170
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->updateTags()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->finish()V

    goto :goto_7

    .line 175
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->finish()V

    goto :goto_7

    .line 168
    :pswitch_data_16
    .packed-switch 0x7f0b0041
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v2, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;

    invoke-direct {v2, p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;-><init>(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 100
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->setContentView(I)V

    .line 102
    const v2, 0x7f0b0040

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    new-instance v2, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    .line 106
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v3, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v3}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    .line 110
    const v2, 0x7f0b0041

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v2, 0x7f0b0042

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    if-nez p1, :cond_6c

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 117
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->startInitialTagsQuery()V

    .line 120
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6c
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 184
    const/4 v0, 0x6

    if-ne p2, v0, :cond_f

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v1, "reader:target"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    .line 154
    const-string v1, "reader:initial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 157
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;

    if-nez v1, :cond_27

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->startInitialTagsQuery()V

    .line 162
    :cond_27
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "reader:target"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    const-string v0, "reader:initial"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    return-void
.end method
