.class LPp;
.super Landroid/os/HandlerThread;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:LPm;

.field private final a:Landroid/content/ContentResolver;

.field private a:Landroid/os/Handler;

.field private final a:Ljava/lang/StringBuilder;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LPm;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, LPp;->a:LPm;

    .line 51
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LPp;->a:Ljava/lang/StringBuilder;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LPp;->a:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LPp;->b:Ljava/util/ArrayList;

    .line 52
    iput-object p2, p0, LPp;->a:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    const-string v0, "ContactPhotoLoader"

    const-string v1, "Loading photos from DB."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, LPp;->a:LPm;

    iget-object v1, p0, LPp;->a:Ljava/util/ArrayList;

    iget-object v2, p0, LPp;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, LPm;->a(LPm;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, LPp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 81
    if-nez v1, :cond_1b

    .line 121
    :cond_1a
    return-void

    .line 85
    :cond_1b
    iget-object v0, p0, LPp;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    iget-object v0, p0, LPp;->a:Ljava/lang/StringBuilder;

    const-string v2, "_id IN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v7

    .line 87
    :goto_28
    if-ge v0, v1, :cond_3d

    .line 88
    if-eqz v0, :cond_33

    .line 89
    iget-object v2, p0, LPp;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_33
    iget-object v2, p0, LPp;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 93
    :cond_3d
    iget-object v0, p0, LPp;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :try_start_44
    iget-object v0, p0, LPp;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, LPp;->a:LPm;

    invoke-static {v2}, LPm;->a(LPm;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LPp;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LPp;->b:Ljava/util/ArrayList;

    invoke-static {}, LPm;->a()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_cc

    move-result-object v1

    .line 100
    if-eqz v1, :cond_a9

    .line 101
    :goto_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 102
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 103
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 104
    iget-object v3, p0, LPp;->a:LPm;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, LPm;->a(LPm;J[B)V

    .line 105
    iget-object v2, p0, LPp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    const-string v2, "ContactPhotoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got photo for contact ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_67 .. :try_end_a1} :catchall_a2

    goto :goto_67

    .line 110
    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v1, :cond_a8

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v0

    .line 110
    :cond_a9
    if-eqz v1, :cond_ae

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_ae
    iget-object v0, p0, LPp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v7

    .line 118
    :goto_b5
    if-ge v1, v2, :cond_1a

    .line 119
    iget-object v3, p0, LPp;->a:LPm;

    iget-object v0, p0, LPp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, LPm;->a(LPm;J[B)V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b5

    .line 110
    :catchall_cc
    move-exception v0

    move-object v1, v6

    goto :goto_a3
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, LPp;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, LPp;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LPp;->a:Landroid/os/Handler;

    .line 62
    :cond_f
    iget-object v0, p0, LPp;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, LPp;->b()V

    .line 72
    iget-object v0, p0, LPp;->a:LPm;

    invoke-static {v0}, LPm;->a(LPm;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method
