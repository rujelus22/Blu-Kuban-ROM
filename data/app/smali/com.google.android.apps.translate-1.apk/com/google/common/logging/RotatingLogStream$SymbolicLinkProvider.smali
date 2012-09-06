.class public interface abstract Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;
.super Ljava/lang/Object;
.source "RotatingLogStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/RotatingLogStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SymbolicLinkProvider"
.end annotation


# virtual methods
.method public abstract createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
