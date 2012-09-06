.class Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$1;,
        Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursor;,
        Lcom/android/email/activity/MessagesAdapter$Callback;
    }
.end annotation


# static fields
.field static final MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private mLayout:Lcom/android/email/activity/ThreePaneLayout;

.field private mQuery:Ljava/lang/String;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 135
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 136
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 137
    return-void
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V
    .registers 3
    .parameter "view"
    .parameter "isFavorite"

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 271
    return-void
.end method

.method public static createLoader(Landroid/content/Context;Lcom/android/email/MessageListContext;)Landroid/content/Loader;
    .registers 5
    .parameter "context"
    .parameter "listContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/email/MessageListContext;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 280
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessagesAdapter createLoader listContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_20
    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    goto :goto_2b
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItem;Z)V
    .registers 6
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 244
    if-eqz p2, :cond_1d

    .line 245
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_d
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_1c

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 252
    :cond_1c
    return-void

    .line 247
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v10, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 190
    move-object v4, p1

    check-cast v4, Lcom/android/email/activity/MessageListItem;

    .line 191
    .local v4, itemView:Lcom/android/email/activity/MessageListItem;
    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v4, p0, v8}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/ThreePaneLayout;)V

    .line 197
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 198
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 199
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 200
    .local v0, accountId:J
    iput-wide v0, v4, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 202
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_9b

    move v3, v6

    .line 203
    .local v3, isRead:Z
    :goto_27
    iget-boolean v8, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eq v3, v8, :cond_9d

    move v5, v6

    .line 204
    .local v5, readChanged:Z
    :goto_2c
    iput-boolean v3, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 205
    const/4 v8, 0x7

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_9f

    move v8, v6

    :goto_36
    iput-boolean v8, v4, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 206
    const/16 v8, 0x9

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 207
    .local v2, flags:I
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_a1

    move v8, v6

    :goto_43
    iput-boolean v8, v4, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 208
    const/high16 v8, 0x4

    and-int/2addr v8, v2

    if-eqz v8, :cond_a3

    move v8, v6

    :goto_4b
    iput-boolean v8, v4, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 209
    const/high16 v8, 0x8

    and-int/2addr v8, v2

    if-eqz v8, :cond_a5

    move v8, v6

    :goto_53
    iput-boolean v8, v4, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 210
    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_a7

    :goto_5d
    iput-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 211
    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/email/activity/MessageListItem;->setTimestamp(J)V

    .line 212
    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    .line 213
    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/email/activity/MessageListItem;->setText(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    iget-boolean v6, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v6, :cond_a9

    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v6, v0, v1}, Lcom/android/email/ResourceHelper;->getAccountColorPaint(J)Landroid/graphics/Paint;

    move-result-object v6

    :goto_84
    iput-object v6, v4, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter;->mQuery:Ljava/lang/String;

    if-eqz v6, :cond_9a

    iget-object v6, v4, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9a

    .line 219
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessagesAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    .line 222
    :cond_9a
    return-void

    .end local v2           #flags:I
    .end local v3           #isRead:Z
    .end local v5           #readChanged:Z
    :cond_9b
    move v3, v7

    .line 202
    goto :goto_27

    .restart local v3       #isRead:Z
    :cond_9d
    move v5, v7

    .line 203
    goto :goto_2c

    .restart local v5       #readChanged:Z
    :cond_9f
    move v8, v7

    .line 205
    goto :goto_36

    .restart local v2       #flags:I
    :cond_a1
    move v8, v7

    .line 207
    goto :goto_43

    :cond_a3
    move v8, v7

    .line 208
    goto :goto_4b

    :cond_a5
    move v8, v7

    .line 209
    goto :goto_53

    :cond_a7
    move v6, v7

    .line 210
    goto :goto_5d

    .line 215
    :cond_a9
    const/4 v6, 0x0

    goto :goto_84
.end method

.method public clearSelection()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 179
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_10
    return-void
.end method

.method public getSelectedSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItem;)Z
    .registers 5
    .parameter "itemView"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    .line 149
    .local v1, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 150
    const-string v6, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v5, :cond_1d

    aget-wide v3, v0, v2

    .line 151
    .local v3, l:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 153
    .end local v3           #l:J
    :cond_1d
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 226
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v0, p1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, item:Lcom/android/email/activity/MessageListItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V

    .line 228
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 144
    const-string v0, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 145
    return-void
.end method

.method public setLayout(Lcom/android/email/activity/ThreePaneLayout;)V
    .registers 2
    .parameter "layout"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    .line 141
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter;->mQuery:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setShowColorChips(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    .line 161
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItem;)V
    .registers 3
    .parameter "itemView"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;Z)V

    .line 233
    return-void

    .line 232
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .registers 4
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V

    .line 264
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V

    .line 267
    :cond_c
    return-void
.end method
