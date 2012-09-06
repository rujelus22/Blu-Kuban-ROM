.class public Lcom/dropbox/android/filemanager/LocalEntry;
.super Ldbxyzptlk/l/k;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final w:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/LocalEntry;->w:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/dropbox/android/filemanager/D;

    invoke-direct {v0}, Lcom/dropbox/android/filemanager/D;-><init>()V

    sput-object v0, Lcom/dropbox/android/filemanager/LocalEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ldbxyzptlk/l/k;-><init>()V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ldbxyzptlk/l/k;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_83

    :goto_7a
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/LocalEntry;->t:Z

    .line 63
    return-void

    :cond_7d
    move v0, v2

    .line 48
    goto :goto_1e

    :cond_7f
    move v0, v2

    .line 55
    goto :goto_4b

    :cond_81
    move v0, v2

    .line 58
    goto :goto_60

    :cond_83
    move v1, v2

    .line 62
    goto :goto_7a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dropbox/android/filemanager/D;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/LocalEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;
    .registers 6
    .parameter

    .prologue
    .line 200
    if-nez p0, :cond_a

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create content values from a null entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create content values from an entry w/ a null path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    const-string v0, "path"

    iget-object v2, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "bytes"

    iget-wide v2, p0, Ldbxyzptlk/l/k;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    :try_start_31
    iget-object v0, p0, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 211
    const-string v0, "revision"

    iget-object v2, p0, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_3c
    iget-object v0, p0, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 214
    const-string v0, "hash"

    iget-object v2, p0, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_47
    iget-object v0, p0, Ldbxyzptlk/l/k;->j:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 217
    const-string v0, "icon"

    iget-object v2, p0, Ldbxyzptlk/l/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_52
    const-string v0, "is_dir"

    iget-boolean v2, p0, Ldbxyzptlk/l/k;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    const-string v0, "modified"

    iget-object v2, p0, Ldbxyzptlk/l/k;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Ldbxyzptlk/l/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 222
    const-string v0, "root"

    iget-object v2, p0, Ldbxyzptlk/l/k;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_6f
    iget-object v0, p0, Ldbxyzptlk/l/k;->p:Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 225
    const-string v0, "size"

    iget-object v2, p0, Ldbxyzptlk/l/k;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_7a
    iget-object v0, p0, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 228
    const-string v0, "mime_type"

    iget-object v2, p0, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_85
    const-string v0, "thumb_exists"

    iget-boolean v2, p0, Ldbxyzptlk/l/k;->s:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    const-string v0, "parent_path"

    invoke-virtual {p0}, Ldbxyzptlk/l/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "_display_name"

    invoke-virtual {p0}, Ldbxyzptlk/l/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "canon_path"

    iget-object v2, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "canon_parent_path"

    invoke-virtual {p0}, Ldbxyzptlk/l/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_ba} :catch_bb

    .line 238
    :goto_ba
    return-object v1

    .line 235
    :catch_bb
    move-exception v0

    .line 236
    sget-object v2, Lcom/dropbox/android/filemanager/LocalEntry;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating values from entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba
.end method

.method public static a(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/ContentValues;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_9b

    .line 248
    :goto_6
    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    .line 249
    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    .line 250
    const-string v1, "revision"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 251
    const-string v1, "revision"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    .line 253
    :cond_2a
    const-string v1, "hash"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 254
    const-string v1, "hash"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    .line 256
    :cond_3a
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 257
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    .line 259
    :cond_4a
    const-string v1, "is_dir"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    .line 260
    const-string v1, "modified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    .line 261
    const-string v1, "root"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 262
    const-string v1, "root"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    .line 264
    :cond_6e
    const-string v1, "size"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 265
    const-string v1, "size"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    .line 267
    :cond_7e
    const-string v1, "mime_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 268
    const-string v1, "mime_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 270
    :cond_8e
    const-string v1, "thumb_exists"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z

    .line 272
    return-object v0

    .line 246
    :catch_9b
    move-exception v0

    move-object v0, p0

    goto/16 :goto_6
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p0, p1, :cond_5

    .line 194
    :cond_4
    :goto_4
    return v0

    .line 126
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 127
    goto :goto_4

    .line 128
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 129
    goto :goto_4

    .line 130
    :cond_15
    check-cast p1, Lcom/dropbox/android/filemanager/LocalEntry;

    .line 131
    iget-wide v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    iget-wide v4, p1, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    .line 132
    goto :goto_4

    .line 133
    :cond_21
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 134
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    if-eqz v2, :cond_37

    move v0, v1

    .line 135
    goto :goto_4

    .line 136
    :cond_2b
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    .line 137
    goto :goto_4

    .line 138
    :cond_37
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 139
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    if-eqz v2, :cond_4d

    move v0, v1

    .line 140
    goto :goto_4

    .line 141
    :cond_41
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v1

    .line 142
    goto :goto_4

    .line 143
    :cond_4d
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    if-nez v2, :cond_57

    .line 144
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    if-eqz v2, :cond_63

    move v0, v1

    .line 145
    goto :goto_4

    .line 146
    :cond_57
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    move v0, v1

    .line 147
    goto :goto_4

    .line 148
    :cond_63
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    if-nez v2, :cond_6d

    .line 149
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    if-eqz v2, :cond_79

    move v0, v1

    .line 150
    goto :goto_4

    .line 151
    :cond_6d
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    move v0, v1

    .line 152
    goto :goto_4

    .line 153
    :cond_79
    iget-boolean v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    iget-boolean v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eq v2, v3, :cond_81

    move v0, v1

    .line 154
    goto :goto_4

    .line 155
    :cond_81
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    if-nez v2, :cond_8c

    .line 156
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    if-eqz v2, :cond_99

    move v0, v1

    .line 157
    goto/16 :goto_4

    .line 158
    :cond_8c
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    move v0, v1

    .line 159
    goto/16 :goto_4

    .line 160
    :cond_99
    iget-wide v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->e:J

    iget-wide v4, p1, Lcom/dropbox/android/filemanager/LocalEntry;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a4

    move v0, v1

    .line 161
    goto/16 :goto_4

    .line 162
    :cond_a4
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    if-nez v2, :cond_af

    .line 163
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    if-eqz v2, :cond_bc

    move v0, v1

    .line 164
    goto/16 :goto_4

    .line 165
    :cond_af
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    move v0, v1

    .line 166
    goto/16 :goto_4

    .line 167
    :cond_bc
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    if-nez v2, :cond_c7

    .line 168
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    if-eqz v2, :cond_d4

    move v0, v1

    .line 169
    goto/16 :goto_4

    .line 170
    :cond_c7
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    move v0, v1

    .line 171
    goto/16 :goto_4

    .line 172
    :cond_d4
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    if-nez v2, :cond_df

    .line 173
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    if-eqz v2, :cond_ec

    move v0, v1

    .line 174
    goto/16 :goto_4

    .line 175
    :cond_df
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    move v0, v1

    .line 176
    goto/16 :goto_4

    .line 177
    :cond_ec
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-nez v2, :cond_f7

    .line 178
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-eqz v2, :cond_104

    move v0, v1

    .line 179
    goto/16 :goto_4

    .line 180
    :cond_f7
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    move v0, v1

    .line 181
    goto/16 :goto_4

    .line 182
    :cond_104
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    if-nez v2, :cond_10f

    .line 183
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    if-eqz v2, :cond_11c

    move v0, v1

    .line 184
    goto/16 :goto_4

    .line 185
    :cond_10f
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11c

    move v0, v1

    .line 186
    goto/16 :goto_4

    .line 187
    :cond_11c
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    if-nez v2, :cond_127

    .line 188
    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    if-eqz v2, :cond_134

    move v0, v1

    .line 189
    goto/16 :goto_4

    .line 190
    :cond_127
    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_134

    move v0, v1

    .line 191
    goto/16 :goto_4

    .line 192
    :cond_134
    iget-boolean v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->t:Z

    iget-boolean v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->t:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 193
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v8, 0x20

    const/4 v1, 0x0

    .line 97
    .line 99
    iget-wide v4, p0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    iget-wide v6, p0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1f

    .line 100
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    if-nez v0, :cond_81

    move v0, v1

    :goto_17
    add-int/2addr v0, v4

    .line 101
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    if-nez v0, :cond_88

    move v0, v1

    :goto_1f
    add-int/2addr v0, v4

    .line 102
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    if-nez v0, :cond_8f

    move v0, v1

    :goto_27
    add-int/2addr v0, v4

    .line 104
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    if-nez v0, :cond_96

    move v0, v1

    :goto_2f
    add-int/2addr v0, v4

    .line 105
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_9d

    move v0, v2

    :goto_37
    add-int/2addr v0, v4

    .line 106
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    if-nez v0, :cond_9f

    move v0, v1

    :goto_3f
    add-int/2addr v0, v4

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/dropbox/android/filemanager/LocalEntry;->e:J

    iget-wide v6, p0, Lcom/dropbox/android/filemanager/LocalEntry;->e:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 110
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    if-nez v0, :cond_a6

    move v0, v1

    :goto_51
    add-int/2addr v0, v4

    .line 112
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    if-nez v0, :cond_ad

    move v0, v1

    :goto_59
    add-int/2addr v0, v4

    .line 114
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    if-nez v0, :cond_b4

    move v0, v1

    :goto_61
    add-int/2addr v0, v4

    .line 115
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-nez v0, :cond_bb

    move v0, v1

    :goto_69
    add-int/2addr v0, v4

    .line 116
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    if-nez v0, :cond_c2

    move v0, v1

    :goto_71
    add-int/2addr v0, v4

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    if-nez v4, :cond_c9

    :goto_78
    add-int/2addr v0, v1

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/LocalEntry;->t:Z

    if-eqz v1, :cond_d0

    :goto_7f
    add-int/2addr v0, v2

    .line 119
    return v0

    .line 100
    :cond_81
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    .line 101
    :cond_88
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    .line 102
    :cond_8f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_27

    .line 104
    :cond_96
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_9d
    move v0, v3

    .line 105
    goto :goto_37

    .line 106
    :cond_9f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3f

    .line 110
    :cond_a6
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_51

    .line 112
    :cond_ad
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_59

    .line 114
    :cond_b4
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_61

    .line 115
    :cond_bb
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_69

    .line 116
    :cond_c2
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_71

    .line 117
    :cond_c9
    iget-object v1, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_78

    :cond_d0
    move v2, v3

    .line 118
    goto :goto_7f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-wide v3, p0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_68

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z

    if-eqz v0, :cond_6a

    move v0, v1

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->t:Z

    if-eqz v0, :cond_6e

    :goto_64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    return-void

    :cond_68
    move v0, v2

    .line 78
    goto :goto_16

    :cond_6a
    move v0, v2

    .line 85
    goto :goto_3c

    :cond_6c
    move v0, v2

    .line 88
    goto :goto_4e

    :cond_6e
    move v1, v2

    .line 92
    goto :goto_64
.end method
