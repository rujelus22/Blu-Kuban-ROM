.class Lorg/apache/log4j/chainsaw/MyTableModel$1;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11
    .parameter "aObj1"
    .parameter "aObj2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 48
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 49
    const/4 v2, 0x0

    .line 64
    :cond_7
    :goto_7
    return v2

    .line 50
    :cond_8
    if-eqz p1, :cond_7

    .line 52
    if-nez p2, :cond_e

    move v2, v3

    .line 53
    goto :goto_7

    :cond_e
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    .local v0, le1:Lorg/apache/log4j/chainsaw/EventDetails;
    move-object v1, p2

    .line 58
    check-cast v1, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 60
    .local v1, le2:Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move v2, v3

    .line 61
    goto :goto_7
.end method
