.class public final Lcom/google/common/base/CharsetCache;
.super Ljava/lang/Object;
.source "CharsetCache.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharsetCache$DefaultLookup;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/base/CharsetCache;


# instance fields
.field private final hitCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lookupFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private final missCache:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/google/common/base/CharsetCache;

    new-instance v1, Lcom/google/common/base/CharsetCache$DefaultLookup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/base/CharsetCache$DefaultLookup;-><init>(Lcom/google/common/base/CharsetCache$1;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/CharsetCache;-><init>(Lcom/google/common/base/Function;I)V

    sput-object v0, Lcom/google/common/base/CharsetCache;->INSTANCE:Lcom/google/common/base/CharsetCache;

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Function;I)V
    .registers 9
    .parameter
    .parameter "missCacheSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, lookupFn:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-le p2, v4, :cond_27

    move v1, v4

    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 118
    iput-object p1, p0, Lcom/google/common/base/CharsetCache;->lookupFunction:Lcom/google/common/base/Function;

    .line 119
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/common/base/CharsetCache;->hitCache:Ljava/util/concurrent/ConcurrentMap;

    .line 122
    new-instance v0, Lcom/google/common/base/CharsetCache$1;

    const/high16 v3, 0x3f40

    move-object v1, p0

    move v2, p2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/CharsetCache$1;-><init>(Lcom/google/common/base/CharsetCache;IFZI)V

    .line 128
    .local v0, temp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/base/CharsetCache;->missCache:Ljava/util/Map;

    .line 129
    return-void

    .line 116
    .end local v0           #temp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_27
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2
    .parameter "charsetName"

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/base/CharsetCache;->INSTANCE:Lcom/google/common/base/CharsetCache;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharsetCache;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private lookupAndCache(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 9
    .parameter "name"

    .prologue
    .line 157
    :try_start_0
    iget-object v5, p0, Lcom/google/common/base/CharsetCache;->lookupFunction:Lcom/google/common/base/Function;

    invoke-interface {v5, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 160
    .local v1, charset:Ljava/nio/charset/Charset;
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 161
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    iget-object v5, p0, Lcom/google/common/base/CharsetCache;->hitCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, alias:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/common/base/CharsetCache;->hitCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_1a

    .line 166
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    :catch_30
    move-exception v2

    .line 167
    .local v2, e:Ljava/nio/charset/UnsupportedCharsetException;
    iget-object v5, p0, Lcom/google/common/base/CharsetCache;->missCache:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    throw v2

    .line 165
    .end local v2           #e:Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    :cond_39
    return-object v1
.end method


# virtual methods
.method lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 6
    .parameter "name"

    .prologue
    .line 135
    if-eqz p1, :cond_1f

    const/4 v2, 0x1

    :goto_3
    const-string v3, "Charset name may not be null"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v2, p0, Lcom/google/common/base/CharsetCache;->hitCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 140
    .local v1, hit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    if-eqz v1, :cond_21

    .line 141
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 142
    .local v0, charset:Ljava/nio/charset/Charset;
    if-eqz v0, :cond_2f

    .line 148
    .end local v0           #charset:Ljava/nio/charset/Charset;
    :goto_1e
    return-object v0

    .line 135
    .end local v1           #hit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    :cond_1f
    const/4 v2, 0x0

    goto :goto_3

    .line 145
    .restart local v1       #hit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/nio/charset/Charset;>;"
    :cond_21
    iget-object v2, p0, Lcom/google/common/base/CharsetCache;->missCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 146
    new-instance v2, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v2, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/common/base/CharsetCache;->lookupAndCache(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1e
.end method
