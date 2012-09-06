.class LWV;
.super Ljava/lang/Object;
.source "GellyInjectorBuilderBase.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Lans;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lans;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LWJ;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, LWV;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, LWV;->a:Lans;

    const-string v1, "Premature injector request"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 241
    invoke-virtual {p0}, LWV;->a()Lans;

    move-result-object v0

    return-object v0
.end method

.method a(Lans;)V
    .registers 3
    .parameter

    .prologue
    .line 250
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    iput-object v0, p0, LWV;->a:Lans;

    .line 251
    return-void
.end method
