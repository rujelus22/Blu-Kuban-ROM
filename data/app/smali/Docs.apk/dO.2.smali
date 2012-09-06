.class public LdO;
.super Ljava/lang/Object;
.source "ApplicationModeProvider.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Lck;",
        ">;"
    }
.end annotation


# instance fields
.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field a:LeO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LdO;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Z)LdL;
    .registers 2
    .parameter

    .prologue
    .line 99
    if-eqz p0, :cond_5

    sget-object v0, LdL;->b:LdL;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, LdL;->a:LdL;

    goto :goto_4
.end method

.method private b()LdL;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, LdO;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 95
    iget-object v0, p0, LdO;->a:LeZ;

    sget-object v1, LeV;->c:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    invoke-static {v0}, LdO;->a(Z)LdL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()LdL;
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, LdO;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 70
    instance-of v1, v0, LdP;

    if-eqz v1, :cond_37

    .line 71
    check-cast v0, LdP;

    .line 73
    instance-of v1, v0, Lcom/google/android/apps/docs/app/BaseActivity;

    if-eqz v1, :cond_1d

    move-object v1, v0

    .line 74
    check-cast v1, Lcom/google/android/apps/docs/app/BaseActivity;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/BaseActivity;->a()LdL;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1d

    move-object v0, v1

    .line 89
    :goto_1c
    return-object v0

    .line 81
    :cond_1d
    invoke-interface {v0}, LdP;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, LdO;->a:LeZ;

    sget-object v2, LeV;->c:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 84
    invoke-virtual {p0, v0}, LdO;->a(Ljava/lang/String;)LdL;

    move-result-object v0

    goto :goto_1c

    .line 86
    :cond_32
    invoke-direct {p0}, LdO;->b()LdL;

    move-result-object v0

    goto :goto_1c

    .line 89
    :cond_37
    invoke-direct {p0}, LdO;->b()LdL;

    move-result-object v0

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)LdL;
    .registers 5
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, LdO;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 109
    iget-object v0, p0, LdO;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    :goto_14
    invoke-static {v0}, LdO;->a(Z)LdL;

    move-result-object v0

    return-object v0

    .line 111
    :cond_19
    iget-object v0, p0, LdO;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 112
    iget-object v1, p0, LdO;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, LdO;->a()LdL;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, LdO;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    return-void
.end method
