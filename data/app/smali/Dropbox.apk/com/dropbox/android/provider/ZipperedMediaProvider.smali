.class public Lcom/dropbox/android/provider/ZipperedMediaProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string v0, "com.dropbox.android.ZipperedMediaProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/ZipperedMediaProvider;->a:Landroid/net/Uri;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/ZipperedMediaProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/ZipperedMediaProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;ZI)Ljava/util/Map;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    if-eqz p2, :cond_59

    .line 73
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "video_id"

    aput-object v0, v2, v6

    const-string v0, "kind"

    aput-object v0, v2, v7

    const-string v0, "_data"

    aput-object v0, v2, v8

    .line 78
    :goto_15
    invoke-virtual {p0}, Lcom/dropbox/android/provider/ZipperedMediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    if-eqz v0, :cond_6b

    .line 87
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 88
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, p3, :cond_49

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 89
    :cond_49
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 75
    :cond_59
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "image_id"

    aput-object v0, v2, v6

    const-string v0, "kind"

    aput-object v0, v2, v7

    const-string v0, "_data"

    aput-object v0, v2, v8

    goto :goto_15

    .line 92
    :cond_68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_6b
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p2, :cond_19

    .line 119
    array-length v2, p2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_19

    aget-object v3, p2, v1

    .line 120
    if-eqz v3, :cond_57

    const-string v4, "mini_thumb_path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 121
    const/4 v0, 0x1

    .line 127
    :cond_19
    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    move v6, v0

    .line 129
    :goto_1d
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_24
    if-ge v7, v10, :cond_5d

    aget-object v11, v9, v7

    .line 130
    invoke-virtual {p0}, Lcom/dropbox/android/provider/ZipperedMediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v11}, Lcom/dropbox/android/filemanager/L;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_53

    .line 132
    new-instance v1, Lcom/dropbox/android/provider/D;

    invoke-virtual {v11}, Lcom/dropbox/android/filemanager/L;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v11}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v3

    invoke-virtual {p0, v2, v3, v6}, Lcom/dropbox/android/provider/ZipperedMediaProvider;->a(Landroid/net/Uri;ZI)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v11, v0, v2}, Lcom/dropbox/android/provider/D;-><init>(Lcom/dropbox/android/provider/ZipperedMediaProvider;Lcom/dropbox/android/filemanager/L;Landroid/database/Cursor;Ljava/util/Map;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_53
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_24

    .line 119
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 127
    :cond_5a
    const/4 v0, 0x3

    move v6, v0

    goto :goto_1d

    .line 136
    :cond_5d
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumb_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vid_duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_cursor_type_tag"

    aput-object v2, v0, v1

    .line 137
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 138
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/D;

    .line 143
    iget-object v3, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 144
    iget-object v0, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_93

    .line 165
    :cond_ac
    const-wide/16 v2, 0x0

    :goto_ae
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v2, 0x6

    iget-object v0, v1, Lcom/dropbox/android/provider/D;->a:Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v0, "_tag_video"

    :goto_bf
    aput-object v0, v10, v2

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 175
    invoke-static {v9}, Lcom/dropbox/android/util/ar;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 176
    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_cd
    :goto_cd
    move v1, v4

    .line 147
    :cond_ce
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_1b2

    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/D;

    .line 150
    iget-object v3, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_111

    .line 151
    if-nez v1, :cond_ef

    :cond_ed
    :goto_ed
    move-object v1, v0

    .line 159
    goto :goto_d7

    .line 154
    :cond_ef
    iget-object v3, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    iget-object v7, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    const-string v9, "date_added"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v7, v1, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    iget-object v9, v1, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    const-string v10, "date_added"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_ed

    :cond_111
    move-object v0, v1

    goto :goto_ed

    .line 163
    :cond_113
    iget-object v7, v1, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    .line 164
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x1

    const-string v2, "_data"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x2

    const-string v2, "date_modified"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/dropbox/android/provider/D;->a:Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/L;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x4

    iget-object v2, v1, Lcom/dropbox/android/provider/D;->c:Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x5

    iget-object v2, v1, Lcom/dropbox/android/provider/D;->a:Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v2

    if-eqz v2, :cond_ac

    const-string v2, "duration"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto/16 :goto_ae

    :cond_1a3
    const-string v0, "_tag_photo"

    goto/16 :goto_bf

    .line 177
    :cond_1a7
    invoke-static {v9}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 180
    invoke-virtual {v6, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cd

    .line 185
    :cond_1b2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/D;

    .line 186
    iget-object v0, v0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1b6

    .line 190
    :cond_1c8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1e3

    .line 192
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_sep_camera_roll"

    invoke-static {v2}, Lcom/dropbox/android/provider/E;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_separator"

    invoke-direct {v1, v2, v3}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1e3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1fc

    .line 196
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_sep_other_media"

    invoke-static {v2}, Lcom/dropbox/android/provider/E;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_separator"

    invoke-direct {v1, v2, v3}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1fc
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    .line 201
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 203
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method
