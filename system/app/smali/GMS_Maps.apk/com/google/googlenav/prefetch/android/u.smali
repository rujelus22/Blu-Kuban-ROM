.class public Lcom/google/googlenav/prefetch/android/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/prefetch/android/w;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/prefetch/android/w;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/u;->c:Lcom/google/googlenav/prefetch/android/w;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/u;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/prefetch/android/u;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/prefetch/android/u;)Lcom/google/googlenav/prefetch/android/w;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->c:Lcom/google/googlenav/prefetch/android/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/common/util/t;->b()V

    .line 55
    new-instance v0, Lcom/google/googlenav/prefetch/android/v;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/prefetch/android/v;-><init>(Lcom/google/googlenav/prefetch/android/u;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/v;->g()V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string v0, "Reverse Geocode Tiles"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 176
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/x;

    .line 178
    if-eqz v0, :cond_46

    .line 179
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_46
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 183
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
