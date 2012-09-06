.class final Lcom/google/android/apps/reader/widget/ItemViewBinder;
.super Ljava/lang/Object;
.source "ItemViewBinder.java"

# interfaces
.implements Lcom/google/android/apps/reader/widget/ItemQuery;


# static fields
.field private static final ICON_LIKED:Ljava/lang/String; = "/android_res/drawable/emo_im_happy"

.field private static final ICON_SHARED:Ljava/lang/String; = "/android_res/drawable/ic_contact_picture"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 218
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 219
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->htmlUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    const-string v2, "htmlUri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const/4 v2, 0x1

    .line 223
    :goto_20
    const-string v3, "likedByHtml"

    invoke-static {p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createLikedByHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v3, "sharedByHtml"

    invoke-static {p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createSharedByHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v3, "annotationHtml"

    invoke-static {p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createAnnotationHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    if-eqz v2, :cond_65

    .line 229
    const-string v2, "titleHtml"

    invoke-static {p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createTitleHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "subtitleHtml"

    invoke-static {p1, p2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createSubtitleHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?text/html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 238
    :cond_65
    return-void

    .line 220
    :cond_66
    const/4 v2, 0x0

    goto :goto_20
.end method

.method private static createAnchor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, p0

    .line 109
    goto :goto_2e

    .line 112
    :cond_31
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private static createAnnotationHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 202
    sget-object v1, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 203
    const-string v1, ""

    .line 209
    :goto_a
    return-object v1

    .line 205
    :cond_b
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, annotation:Ljava/lang/String;
    if-eqz v0, :cond_15

    move-object v1, v0

    .line 207
    goto :goto_a

    .line 209
    :cond_15
    const-string v1, ""

    goto :goto_a
.end method

.method private static createLikedByHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    const-string v0, ""

    .line 171
    :goto_a
    return-object v0

    .line 164
    :cond_b
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    if-eqz v0, :cond_2d

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v2, "<img src=\"/android_res/drawable/emo_im_happy\" /> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->getLikeCountText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 171
    :cond_2d
    const-string v0, ""

    goto :goto_a
.end method

.method private static createSharedByHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    const-string v0, ""

    .line 197
    :goto_a
    return-object v0

    .line 179
    :cond_b
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v3, "<img src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?image/png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :goto_47
    const-string v1, "\" /> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_69

    .line 191
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 187
    :cond_63
    const-string v1, "/android_res/drawable/ic_contact_picture"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 193
    :cond_69
    const v1, 0x7f0d00b1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 197
    :cond_7a
    const-string v0, ""

    goto :goto_a
.end method

.method private static createSubtitleHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 138
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, streamId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 141
    .local v0, href:Ljava/lang/String;
    if-eqz v3, :cond_8e

    .line 142
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 143
    .local v0, account:Lcom/google/android/accounts/Account;
    sget-object v1, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x1

    .line 144
    .local v1, excludeRead:Z
    :goto_1b
    invoke-static {p0, v0, v3}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, ranking:Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 146
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, href:Ljava/lang/String;
    move-object v1, v0

    .line 148
    .end local v0           #href:Ljava/lang/String;
    .end local v2           #ranking:Ljava/lang/String;
    .local v1, href:Ljava/lang/String;
    :goto_28
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, author:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createAnchor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, source:Ljava/lang/String;
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .end local v1           #href:Ljava/lang/String;
    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 151
    .local v1, updated:Ljava/lang/Long;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .end local p1
    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    .local p1, date:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #updated:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, time:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const/4 v1, 0x1

    move v2, v1

    .line 154
    .local v2, hasSource:Z
    :goto_60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    const/4 v1, 0x1

    .line 155
    .local v1, hasAuthor:Z
    :goto_67
    invoke-static {v2, v1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->getSubtitleTemplate(ZZ)I

    move-result v1

    .end local v1           #hasAuthor:Z
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 156
    .local p0, template:Ljava/lang/CharSequence;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .end local v2           #hasSource:Z
    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p1, v1, v0

    .end local v0           #author:Ljava/lang/String;
    const/4 p1, 0x3

    aput-object v4, v1, p1

    .end local p1           #date:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 157
    .local p0, expanded:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #expanded:Ljava/lang/CharSequence;
    return-object p0

    .line 143
    .local v0, account:Lcom/google/android/accounts/Account;
    .local v3, streamId:Ljava/lang/String;
    .local v4, title:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_87
    const/4 v1, 0x0

    goto :goto_1b

    .line 153
    .local v0, author:Ljava/lang/String;
    .local v3, source:Ljava/lang/String;
    .local v4, time:Ljava/lang/String;
    .local p1, date:Ljava/lang/String;
    :cond_89
    const/4 v1, 0x0

    move v2, v1

    goto :goto_60

    .line 154
    .restart local v2       #hasSource:Z
    :cond_8c
    const/4 v1, 0x0

    goto :goto_67

    .end local v2           #hasSource:Z
    .local v0, href:Ljava/lang/String;
    .local v3, streamId:Ljava/lang/String;
    .local v4, title:Ljava/lang/String;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_8e
    move-object v1, v0

    .end local v0           #href:Ljava/lang/String;
    .local v1, href:Ljava/lang/String;
    goto :goto_28
.end method

.method private static createTitleHtml(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 129
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, title:Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, href:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 132
    const v2, 0x7f0d012f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_1d
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->createAnchor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 50
    if-eqz p0, :cond_22

    .line 51
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    :cond_22
    return-object p0
.end method

.method private static getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 117
    const/16 v2, 0x14

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, accountName:Ljava/lang/String;
    const/16 v2, 0x15

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getLikeCountText(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "likeCount"

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, resources:Landroid/content/res/Resources;
    if-ge p1, v4, :cond_1a

    .line 63
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 66
    .local v0, formatArgs:[Ljava/lang/Object;
    const v2, 0x7f0e0001

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_19
    return-object v2

    .line 68
    .end local v0           #formatArgs:[Ljava/lang/Object;
    :cond_1a
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 71
    .restart local v0       #formatArgs:[Ljava/lang/Object;
    const v2, 0x7f0d0127

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method private static getSubtitleTemplate(ZZ)I
    .registers 3
    .parameter "hasSource"
    .parameter "hasAuthor"

    .prologue
    .line 80
    if-eqz p0, :cond_c

    .line 81
    if-eqz p1, :cond_8

    .line 82
    const v0, 0x7f0d008d

    .line 87
    :goto_7
    return v0

    .line 84
    :cond_8
    const v0, 0x7f0d008e

    goto :goto_7

    .line 87
    :cond_c
    const v0, 0x7f0d0090

    goto :goto_7
.end method

.method private static htmlUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 124
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 125
    .local v1, itemId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->htmlUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static unbindView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 241
    const v2, 0x7f0b003b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 244
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 245
    .local v0, data:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 248
    return-void
.end method
