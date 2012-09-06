.class public final Lcom/google/android/youtube/app/k;
.super Lcom/google/android/youtube/core/g;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/app/l;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v0, "youtube"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/g;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/l;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/l;-><init>(Lcom/google/android/youtube/app/k;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/k;->a:Lcom/google/android/youtube/app/l;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/k;->c:Landroid/content/ContentResolver;

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v2, v3

    const-string v3, "name=\'youtube_client_id\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v4, "mvapp-android-google"

    :cond_44
    :goto_44
    iput-object v4, p0, Lcom/google/android/youtube/app/k;->b:Ljava/lang/String;

    .line 44
    return-void

    .line 43
    :cond_47
    const-string v0, "mvapp-android-"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mvapp-android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_44
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .registers 3

    .prologue
    .line 47
    const-string v0, "gdata_version"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest$Version;->parse(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest$Version;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 51
    const-string v0, "enable_playlists_for_lw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 55
    const-string v0, "enable_favorites_for_lw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 3

    .prologue
    .line 59
    const-string v0, "enable_comments_for_lw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 63
    const-string v0, "enable_uploads_for_lw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/youtube/core/g;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/google/android/youtube/core/g;->f()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "UA-20803990-1"

    goto :goto_a
.end method

.method public final g()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_10

    const-string v1, "enable_awful_player"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public final h()Z
    .registers 3

    .prologue
    .line 83
    const-string v0, "disconnect_at_highwatermark"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 3

    .prologue
    .line 91
    const-string v0, "enable_live_category_from_ics_mr0"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .registers 3

    .prologue
    .line 95
    const-string v0, "enable_prefetch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 3

    .prologue
    .line 103
    const-string v0, "enable_dial"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()J
    .registers 4

    .prologue
    .line 111
    const-string v0, "prefetch_not_used_notification_frequency"

    const-wide/32 v1, 0x240c8400

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()I
    .registers 3

    .prologue
    .line 116
    const-string v0, "remote_volume_step_percent"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
