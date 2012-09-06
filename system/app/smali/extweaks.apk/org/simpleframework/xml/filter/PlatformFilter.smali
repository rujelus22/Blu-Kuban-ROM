.class public Lorg/simpleframework/xml/filter/PlatformFilter;
.super Lorg/simpleframework/xml/filter/StackFilter;
.source "PlatformFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/simpleframework/xml/filter/StackFilter;-><init>()V

    .line 53
    new-instance v0, Lorg/simpleframework/xml/filter/EnvironmentFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/EnvironmentFilter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/PlatformFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    .line 54
    new-instance v0, Lorg/simpleframework/xml/filter/SystemFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/SystemFilter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/PlatformFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    .line 55
    new-instance v0, Lorg/simpleframework/xml/filter/MapFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/MapFilter;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/PlatformFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    .line 56
    return-void
.end method
