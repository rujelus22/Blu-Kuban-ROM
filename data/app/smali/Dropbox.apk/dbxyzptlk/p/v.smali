.class public final Ldbxyzptlk/p/v;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Date;

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/v;->a:Ljava/lang/String;

    .line 233
    const-string v0, "metadata_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/v;->b:Ljava/lang/String;

    .line 234
    const-string v0, "expires"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    if-eqz v0, :cond_32

    .line 236
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/v;->c:Ljava/util/Date;

    .line 240
    :goto_27
    const-string v0, "container"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/v;->d:Ljava/lang/String;

    .line 241
    return-void

    .line 238
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/p/v;->c:Ljava/util/Date;

    goto :goto_27
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldbxyzptlk/p/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Ldbxyzptlk/p/v;-><init>(Ljava/util/Map;)V

    return-void
.end method
