.class public final Lcom/google/api/client/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 73
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 2
    .parameter

    .prologue
    .line 57
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
