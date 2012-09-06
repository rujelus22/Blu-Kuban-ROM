.class final Lcom/dropbox/android/service/j;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "server_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uploaded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ignored"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "local_hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/service/j;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/dropbox/android/service/j;->b:J

    .line 1185
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v0, v1

    :goto_14
    iput-object v0, p0, Lcom/dropbox/android/service/j;->d:Ljava/lang/String;

    .line 1186
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_37

    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Lcom/dropbox/android/service/j;->e:Z

    .line 1187
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_39

    :goto_27
    iput-boolean v2, p0, Lcom/dropbox/android/service/j;->f:Z

    .line 1188
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    :goto_2f
    iput-object v1, p0, Lcom/dropbox/android/service/j;->c:Ljava/lang/String;

    .line 1189
    return-void

    .line 1185
    :cond_32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_37
    move v0, v3

    .line 1186
    goto :goto_1e

    :cond_39
    move v2, v3

    .line 1187
    goto :goto_27

    .line 1188
    :cond_3b
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f
.end method

.method static synthetic a(Lcom/dropbox/android/service/j;)Z
    .registers 2
    .parameter

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/dropbox/android/service/j;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/service/j;)Z
    .registers 2
    .parameter

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/dropbox/android/service/j;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/dropbox/android/service/j;)J
    .registers 3
    .parameter

    .prologue
    .line 1172
    iget-wide v0, p0, Lcom/dropbox/android/service/j;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/dropbox/android/service/j;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/dropbox/android/service/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/service/j;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/dropbox/android/service/j;->c:Ljava/lang/String;

    return-object v0
.end method
