.class public final Ldbxyzptlk/p/o;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    if-eqz p1, :cond_21

    .line 136
    const-string v0, "uid"

    invoke-static {p1, v0}, Ldbxyzptlk/p/i;->d(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/p/o;->a:J

    .line 137
    const-string v0, "oauth_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/o;->b:Ljava/lang/String;

    .line 138
    const-string v0, "oauth_token_secret"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/o;->c:Ljava/lang/String;

    .line 140
    :cond_21
    return-void
.end method
