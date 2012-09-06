.class public interface abstract Lcom/google/goggles/TracingCookieProtos$TracingCookieResponseOrBuilder;
.super Ljava/lang/Object;
.source "TracingCookieProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingCookieProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TracingCookieResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getTracingCookies(I)Ljava/lang/String;
.end method

.method public abstract getTracingCookiesCount()I
.end method

.method public abstract getTracingCookiesList()Ljava/util/List;
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

.method public abstract getValidMs()I
.end method

.method public abstract hasValidMs()Z
.end method
