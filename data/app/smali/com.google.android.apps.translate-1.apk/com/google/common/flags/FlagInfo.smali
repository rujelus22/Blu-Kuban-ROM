.class public interface abstract Lcom/google/common/flags/FlagInfo;
.super Ljava/lang/Object;
.source "FlagInfo.java"


# virtual methods
.method public abstract accessed()Z
.end method

.method public abstract containerClass()Ljava/lang/String;
.end method

.method public abstract defaultValue()Ljava/lang/Object;
.end method

.method public abstract doc()Ljava/lang/String;
.end method

.method public abstract names()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parsableStringValue()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/Object;
.end method
