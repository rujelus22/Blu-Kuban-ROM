.class public Lorg/simpleframework/xml/filter/EnvironmentFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/EnvironmentFilter;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method
