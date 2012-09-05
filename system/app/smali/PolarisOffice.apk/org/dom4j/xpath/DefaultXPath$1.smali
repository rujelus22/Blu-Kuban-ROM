.class Lorg/dom4j/xpath/DefaultXPath$1;
.super Ljava/lang/Object;
.source "DefaultXPath.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final this$0:Lorg/dom4j/xpath/DefaultXPath;

.field private final val$sortValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath$1;->this$0:Lorg/dom4j/xpath/DefaultXPath;

    iput-object p2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 298
    iget-object v3, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    iget-object v3, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 301
    if-ne p1, p2, :cond_11

    .line 312
    :cond_10
    :goto_10
    return v1

    .line 303
    :cond_11
    instance-of v3, p1, Ljava/lang/Comparable;

    if-eqz v3, :cond_1d

    move-object v0, p1

    .line 304
    check-cast v0, Ljava/lang/Comparable;

    .line 306
    .local v0, c1:Ljava/lang/Comparable;
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_10

    .line 307
    .end local v0           #c1:Ljava/lang/Comparable;
    :cond_1d
    if-nez p1, :cond_21

    .line 308
    const/4 v1, 0x1

    goto :goto_10

    .line 309
    :cond_21
    if-nez p2, :cond_25

    move v1, v2

    .line 310
    goto :goto_10

    .line 312
    :cond_25
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    goto :goto_10
.end method
