.class final Lcom/google/android/youtube/core/converter/http/dl;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 166
    const-string v1, "rel"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/de;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 168
    const-string v1, "href"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v1, 0x0

    .line 170
    :goto_23
    const-string v3, "countHint"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v3

    .line 171
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.uploads"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 173
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 190
    :cond_3c
    :goto_3c
    return-void

    .line 169
    :cond_3d
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_23

    .line 174
    :cond_42
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.favorites"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 176
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c

    .line 177
    :cond_51
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.subscriptions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 179
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c

    .line 180
    :cond_60
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.watchhistory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c

    .line 182
    :cond_6c
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.watchlater"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c

    .line 184
    :cond_78
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.playlists"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c

    .line 186
    :cond_84
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.recentactivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_3c
.end method
