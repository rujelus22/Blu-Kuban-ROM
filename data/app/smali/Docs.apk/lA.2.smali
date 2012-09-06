.class public LlA;
.super Ljava/lang/Object;
.source "AppliedOperation.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field private final a:Lmg;

.field private final b:Lmg;


# direct methods
.method public constructor <init>(Lmg;Lmg;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LlA;->a:Lmg;

    .line 36
    iput-object p2, p0, LlA;->b:Lmg;

    .line 37
    iput-object p3, p0, LlA;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(LkG;Llu;Lorg/json/JSONObject;)LlA;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v0, "Forward"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmp;->a(LkG;Llu;Lorg/json/JSONObject;)Lmg;

    move-result-object v0

    .line 80
    const-string v1, "Reverse"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lmp;->a(LkG;Llu;Lorg/json/JSONObject;)Lmg;

    move-result-object v1

    .line 82
    new-instance v2, LlA;

    const-string v3, "eTag"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, LlA;-><init>(Lmg;Lmg;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()Lmg;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, LlA;->a:Lmg;

    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v1, "eTag"

    iget-object v2, p0, LlA;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "Forward"

    invoke-virtual {p0}, LlA;->a()Lmg;

    move-result-object v2

    invoke-interface {v2}, Lmg;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "Reverse"

    invoke-virtual {p0}, LlA;->b()Lmg;

    move-result-object v2

    invoke-interface {v2}, Lmg;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    return-object v0
.end method

.method public b()Lmg;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LlA;->b:Lmg;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    const-string v0, "AppliedOperation[%s, undo=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LlA;->a:Lmg;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LlA;->b:Lmg;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
