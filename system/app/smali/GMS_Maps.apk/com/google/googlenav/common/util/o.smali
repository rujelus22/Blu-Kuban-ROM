.class public Lcom/google/googlenav/common/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/util/o;->a:Ljava/util/List;

    .line 224
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/util/o;->b:Ljava/util/Map;

    .line 230
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/util/o;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 268
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 284
    return-void
.end method
