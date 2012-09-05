.class public final Lee;
.super Lct;
.source "a"

# interfaces
.implements Lep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lct;",
        "Lep",
        "<",
        "Lcq;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "/client/v3/register"

    .line 48
    sput-object v0, Lee;->c:Ljava/lang/String;

    invoke-static {v0}, Ldm;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lct;-><init>()V

    .line 29
    iput-object p1, p0, Lee;->a:Ljava/lang/String;

    .line 30
    new-instance v2, Lcp;

    invoke-direct {v2}, Lcp;-><init>()V

    new-instance v3, Lco;

    invoke-direct {v3}, Lco;-><init>()V

    invoke-virtual {v2, v3}, Lcp;->setDevice(Lco;)V

    iput-object p2, v3, Lco;->id:Ljava/lang/String;

    iput-object p3, v3, Lco;->number:Ljava/lang/String;

    iput-object p4, v3, Lco;->model:Ljava/lang/String;

    iput-object p5, v3, Lco;->fingerprint:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object v1, v3

    iput-object v0, v1, Lco;->network:Ljava/lang/String;

    move-object/from16 v0, p7

    move-object v1, v3

    iput-object v0, v1, Lco;->push:Ljava/lang/String;

    move-object/from16 v0, p8

    move-object v1, v3

    iput-object v0, v1, Lco;->buildVersion:Ljava/lang/String;

    move-object/from16 v0, p9

    move-object v1, v3

    iput-object v0, v1, Lco;->osVersion:Ljava/lang/String;

    move/from16 v0, p10

    move-object v1, v3

    iput v0, v1, Lco;->releaseVersion:I

    move/from16 v0, p11

    move-object v1, v3

    iput-boolean v0, v1, Lco;->ota:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v5, :cond_83

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ldg;->e()Z

    move-result v8

    if-eqz v8, :cond_80

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "feature."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ldg;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v7}, Ldg;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ldg;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_83
    invoke-virtual {v2, v3}, Lcp;->setFeatures(Ljava/util/Map;)V

    iput-object v2, p0, Lee;->b:Lcp;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lee;->b:Lcp;

    return-object v0
.end method

.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lee;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lee;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "application/json; charset=UTF-8"

    invoke-super {p0}, Lct;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ldo;

    invoke-direct {v6}, Ldo;-><init>()V

    move-object v0, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lea;->a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcq;

    return-object p0
.end method
