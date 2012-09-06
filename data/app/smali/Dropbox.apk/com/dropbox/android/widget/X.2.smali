.class public final Lcom/dropbox/android/widget/X;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/V;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/dropbox/android/taskqueue/P;

.field private g:Z

.field private h:Ldbxyzptlk/i/i;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/V;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object p1, p0, Lcom/dropbox/android/widget/X;->a:Lcom/dropbox/android/widget/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->i:Z

    .line 85
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->j:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->k:Z

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 151
    const-string v2, "camera_upload_local_uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 153
    iget-object v3, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 154
    iget-boolean v3, p0, Lcom/dropbox/android/widget/X;->j:Z

    if-nez v3, :cond_55

    .line 158
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->j:Z

    .line 164
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    .line 166
    const-string v2, "camera_upload_local_mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/widget/X;->d:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v3

    .line 170
    const-string v2, "camera_upload_pending_paths_json"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    :try_start_3e
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 173
    :goto_44
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5f

    .line 174
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;I)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_52} :catch_58

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 160
    :cond_55
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->i:Z

    goto :goto_1e

    .line 176
    :catch_58
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 181
    :cond_5f
    iget-object v2, p0, Lcom/dropbox/android/widget/X;->a:Lcom/dropbox/android/widget/V;

    invoke-static {v2}, Lcom/dropbox/android/widget/V;->a(Lcom/dropbox/android/widget/V;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dropbox/android/widget/X;->k:Z

    .line 184
    :cond_67
    const-string v2, "camera_upload_num_remaining"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/dropbox/android/widget/X;->e:I

    .line 186
    const-string v2, "camera_upload_status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v2}, Lcom/dropbox/android/taskqueue/P;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/P;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/widget/X;->f:Lcom/dropbox/android/taskqueue/P;

    .line 188
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 189
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_a9

    .line 190
    new-instance v4, Ldbxyzptlk/i/i;

    invoke-direct {v4, v2, v3}, Ldbxyzptlk/i/i;-><init>(J)V

    iput-object v4, p0, Lcom/dropbox/android/widget/X;->h:Ldbxyzptlk/i/i;

    .line 195
    :goto_9a
    const-string v2, "camera_upload_initial_scan"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 196
    if-ne v2, v0, :cond_ad

    :goto_a6
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->g:Z

    .line 197
    return-void

    .line 192
    :cond_a9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dropbox/android/widget/X;->h:Ldbxyzptlk/i/i;

    goto :goto_9a

    :cond_ad
    move v0, v1

    .line 196
    goto :goto_a6
.end method

.method static synthetic a(Lcom/dropbox/android/widget/X;Landroid/database/Cursor;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/X;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    .line 93
    return-object v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/dropbox/android/widget/X;->k:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-boolean v1, p0, Lcom/dropbox/android/widget/X;->i:Z

    if-eqz v1, :cond_c

    .line 104
    iput-boolean v0, p0, Lcom/dropbox/android/widget/X;->i:Z

    .line 105
    iget-boolean v1, p0, Lcom/dropbox/android/widget/X;->k:Z

    if-eqz v1, :cond_c

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_c
    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/dropbox/android/widget/X;->k:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/widget/X;->b:Ljava/lang/String;

    .line 122
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/dropbox/android/widget/X;->e:I

    return v0
.end method

.method public final i()Lcom/dropbox/android/taskqueue/P;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->f:Lcom/dropbox/android/taskqueue/P;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/dropbox/android/widget/X;->g:Z

    return v0
.end method

.method public final k()Ldbxyzptlk/i/i;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dropbox/android/widget/X;->h:Ldbxyzptlk/i/i;

    return-object v0
.end method
