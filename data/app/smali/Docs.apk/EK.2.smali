.class public LEK;
.super Ljava/lang/Object;
.source "TrixJSVM.java"

# interfaces
.implements LBC;
.implements LFo;
.implements Lvn;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private final a:LFk;

.field private final a:LFu;

.field private final a:LIL;

.field private final a:LJP;

.field private final a:LXP;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LBw;",
            ">;"
        }
    .end annotation
.end field

.field private a:LwA;

.field private a:LwD;

.field private a:Lwo;

.field private a:Lws;

.field private a:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "TrixJSVM"

    sput-object v0, LEK;->a:Ljava/lang/String;

    .line 49
    const-string v0, "trix_mobilenative_android.js"

    sput-object v0, LEK;->b:Ljava/lang/String;

    .line 311
    const-string v0, "android_trix"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public constructor <init>(LanD;LIL;LJP;LXP;LFu;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LIL;",
            "LJP;",
            "LXP;",
            "LFu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LEK;->a:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LEK;->a:Ljava/util/Map;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, LEK;->a:Z

    .line 75
    iput-object p1, p0, LEK;->a:LanD;

    .line 76
    iput-object p2, p0, LEK;->a:LIL;

    .line 77
    iput-object p3, p0, LEK;->a:LJP;

    .line 78
    iput-object p4, p0, LEK;->a:LXP;

    .line 79
    iput-object p5, p0, LEK;->a:LFu;

    .line 80
    new-instance v0, LFk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LFk;-><init>(LFo;Z)V

    iput-object v0, p0, LEK;->a:LFk;

    .line 81
    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 118
    iget-object v1, p0, LEK;->a:LXP;

    iget-object v0, p0, LEK;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v0}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILEM;)Lws;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 244
    :try_start_5
    iget-object v0, p0, LEK;->a:LwA;

    new-instance v1, LEO;

    invoke-direct {v1, p2}, LEO;-><init>(LEM;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(LwA;Lwy;)Lwz;

    move-result-object v0

    .line 248
    iget-object v1, p0, LEK;->a:Lws;

    if-eqz v1, :cond_1c

    .line 249
    iget-object v1, p0, LEK;->a:Lws;

    invoke-interface {v1}, Lws;->a()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, LEK;->a:Lws;

    .line 253
    :cond_1c
    iget-object v1, p0, LEK;->a:Lwo;

    invoke-interface {v1, p1, v0}, Lwo;->a(ILwz;)Lws;

    move-result-object v0

    iput-object v0, p0, LEK;->a:Lws;

    .line 254
    iget-object v0, p0, LEK;->a:Lws;

    invoke-interface {v0}, Lws;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 257
    iget-object v0, p0, LEK;->a:Landroid/os/Handler;

    new-instance v1, LEL;

    invoke-direct {v1, p0, p2}, LEL;-><init>(LEK;LEM;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_36
    iget-object v0, p0, LEK;->a:Lws;

    invoke-interface {v0}, Lws;->b()V

    .line 265
    iget-object v0, p0, LEK;->a:Lws;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_43

    .line 267
    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    return-object v0

    :catchall_43
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    throw v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, LEK;->a:LFk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LFk;->a(Z)V

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, LEK;->c:Ljava/lang/String;

    .line 89
    iput-object p3, p0, LEK;->d:Ljava/lang/String;

    .line 92
    :try_start_4
    sget-object v0, LEK;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, LEK;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    new-instance v1, LwA;

    const-string v2, ""

    invoke-direct {v1, v0, p0, v2}, LwA;-><init>([BLvn;Ljava/lang/String;)V

    iput-object v1, p0, LEK;->a:LwA;

    .line 94
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 96
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->a()LwC;

    move-result-object v0

    .line 97
    invoke-interface {v0}, LwB;->a()LwD;

    move-result-object v1

    iput-object v1, p0, LEK;->a:LwD;

    .line 98
    iget-object v1, p0, LEK;->a:LwD;

    invoke-interface {v1}, LwD;->b()V

    .line 100
    iget-object v1, p0, LEK;->a:LwA;

    new-instance v2, LEN;

    invoke-direct {v2, p0, p5}, LEN;-><init>(LEK;Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(LwA;Lwv;)Lww;

    move-result-object v1

    .line 104
    invoke-interface {v0, v1, p2, p3}, LwB;->a(Lww;Ljava/lang/String;Ljava/lang/String;)Lwo;

    move-result-object v0

    iput-object v0, p0, LEK;->a:Lwo;

    .line 105
    iget-object v0, p0, LEK;->a:Lwo;

    invoke-interface {v0}, Lwo;->c()V

    .line 107
    iget-object v0, p0, LEK;->a:Lwo;

    invoke-interface {v0}, Lwo;->b()V
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_55
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_44} :catch_4e

    .line 111
    iget-object v0, p0, LEK;->a:LwA;

    if-eqz v0, :cond_4d

    .line 112
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->c()V

    .line 115
    :cond_4d
    return-void

    .line 108
    :catch_4e
    move-exception v0

    .line 109
    :try_start_4f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_55

    .line 111
    :catchall_55
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    if-eqz v1, :cond_5f

    .line 112
    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    :cond_5f
    throw v0
.end method

.method public a()[I
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 235
    :try_start_5
    iget-object v0, p0, LEK;->a:Lwo;

    invoke-interface {v0}, Lwo;->a()[I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result-object v0

    .line 237
    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    return-object v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    throw v0
.end method

.method public invokeTimer(D)I
    .registers 5
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 222
    :try_start_5
    iget-object v0, p0, LEK;->a:LwD;

    invoke-interface {v0, p1, p2}, LwD;->a(D)I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    .line 224
    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    throw v0
.end method

.method public onDataReceived(ILBD;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 155
    :try_start_5
    iget-object v0, p0, LEK;->a:LwD;

    invoke-virtual {p2}, LBD;->ordinal()I

    move-result v2

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, LwD;->a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    .line 158
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->c()V

    .line 160
    return-void

    .line 158
    :catchall_19
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    throw v0
.end method

.method public onRequestCompleted(I)V
    .registers 4
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, LEK;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public onRequestFailed(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->b()V

    .line 166
    :try_start_5
    iget-object v0, p0, LEK;->a:LwD;

    invoke-interface {v0, p1, p2}, LwD;->a(II)V

    .line 167
    iget-object v0, p0, LEK;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, LEK;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 170
    iget-object v0, p0, LEK;->a:LwA;

    invoke-virtual {v0}, LwA;->c()V

    .line 172
    return-void

    .line 170
    :catchall_31
    move-exception v0

    iget-object v1, p0, LEK;->a:LwA;

    invoke-virtual {v1}, LwA;->c()V

    throw v0
.end method
