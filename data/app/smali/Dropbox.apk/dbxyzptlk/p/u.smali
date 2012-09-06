.class public final Ldbxyzptlk/p/u;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p1, :cond_3f

    .line 119
    const-string v0, "uses_sandbox"

    invoke-static {p1, v0}, Ldbxyzptlk/p/i;->c(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/p/u;->a:Z

    .line 120
    const-string v0, "sandbox_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/u;->b:Ljava/lang/String;

    .line 121
    const-string v0, "app_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/u;->c:Ljava/lang/String;

    .line 122
    const-string v0, "app_icon_64_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/u;->d:Ljava/lang/String;

    .line 123
    const-string v0, "app_icon_128_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/u;->e:Ljava/lang/String;

    .line 124
    const-string v0, "email"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/u;->f:Ljava/lang/String;

    .line 126
    :cond_3f
    return-void
.end method
