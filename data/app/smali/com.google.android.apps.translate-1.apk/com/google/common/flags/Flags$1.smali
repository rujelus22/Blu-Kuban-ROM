.class final Lcom/google/common/flags/Flags$1;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flags;->sortFlags(Z)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/common/flags/FlagDescription;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1130
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flags/Flags$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, o1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    .local p2, o2:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 1135
    .local v1, d1:Lcom/google/common/flags/FlagDescription;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flags/FlagDescription;

    .line 1136
    .local v2, d2:Lcom/google/common/flags/FlagDescription;
    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1138
    .local v0, cls:I
    if-nez v0, :cond_26

    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .end local v0           #cls:I
    :cond_26
    return v0
.end method
