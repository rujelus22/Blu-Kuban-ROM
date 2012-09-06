.class public Lorg/simpleframework/xml/core/Persister;
.super Ljava/lang/Object;
.source "Persister.java"

# interfaces
.implements Lorg/simpleframework/xml/Serializer;


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final manager:Lorg/simpleframework/xml/core/SessionManager;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .registers 3
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 265
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 300
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 319
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance v0, Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, p3}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    .line 394
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SessionManager;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    .line 395
    invoke-virtual {p4}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    .line 396
    iput-object p1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 397
    iput-object p4, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    .line 398
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 337
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 194
    return-void
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 859
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1126
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z

    move-result v0

    return v0
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1187
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1169
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V

    .line 1170
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 528
    :try_start_5
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 530
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 591
    :try_start_6
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    move-result-object v0

    .line 593
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v0

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 770
    :try_start_5
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 772
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 813
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 727
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 836
    :try_start_6
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    move-result-object v0

    .line 838
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v0

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1017
    :try_start_5
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result v1

    .line 1019
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1060
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 994
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 1083
    :try_start_6
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    move-result v0

    .line 1085
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return v0

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public write(Ljava/lang/Object;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1205
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1208
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 1210
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1211
    return-void

    .line 1210
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1229
    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1230
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1248
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 1249
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-static {p2, v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 1267
    return-void
.end method

.method public write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager;->open()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 1147
    :try_start_6
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 1149
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    .line 1150
    return-void

    .line 1149
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method
