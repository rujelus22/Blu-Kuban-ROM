.class public Lorg/simpleframework/xml/filter/EnvironmentFilter;
.super Ljava/lang/Object;
.source "EnvironmentFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/EnvironmentFilter;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 57
    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_7

    .line 78
    :goto_6
    return-object v0

    .line 75
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v0, :cond_12

    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 78
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method
