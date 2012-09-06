.class public Lcom/dropbox/android/provider/u;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static a:I

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/dropbox/android/provider/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/u;->b:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/provider/u;->c:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/provider/u;->d:Ljava/util/HashMap;

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/dropbox/android/provider/u;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "_queryId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-nez v1, :cond_11

    .line 96
    :goto_c
    iput-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/dropbox/android/provider/u;->f:Landroid/net/Uri;

    .line 98
    return-void

    .line 75
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v3, "_queryId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 81
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 84
    const/4 v5, -0x1

    if-le v3, v5, :cond_78

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 91
    :cond_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_c

    .line 87
    :cond_78
    const-string v0, ""

    goto :goto_44
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/dropbox/android/provider/u;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/d;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/dropbox/android/provider/u;

    invoke-direct {v1, v0}, Lcom/dropbox/android/provider/u;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    const-class v1, Lcom/dropbox/android/provider/u;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/dropbox/android/provider/u;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/dropbox/android/provider/u;->a:I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/dropbox/android/provider/u;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_20

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    sget-object v0, Lcom/dropbox/android/provider/u;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    if-eqz p3, :cond_14

    .line 133
    sget-object v0, Lcom/dropbox/android/provider/u;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_14
    sget-object v0, Lcom/dropbox/android/d;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public final b()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/android/provider/u;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v3

    const-string v1, "info"

    aput-object v1, v0, v4

    .line 107
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 108
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/dropbox/android/provider/u;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 110
    invoke-virtual {p0}, Lcom/dropbox/android/provider/u;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 112
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 113
    return-object v1
.end method

.method public final d()I
    .registers 3

    .prologue
    .line 117
    sget-object v0, Lcom/dropbox/android/provider/u;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/dropbox/android/provider/u;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    :goto_18
    return v0

    .line 117
    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/android/provider/u;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/dropbox/android/provider/u;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/android/provider/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    :goto_14
    return-object v0

    .line 122
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
