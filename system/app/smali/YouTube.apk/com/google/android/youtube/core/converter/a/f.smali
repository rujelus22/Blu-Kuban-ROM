.class public final Lcom/google/android/youtube/core/converter/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-ltz p2, :cond_24

    move v0, v1

    :goto_8
    const-string v3, "service version number should be > 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 25
    const v0, 0xffff

    if-gt p2, v0, :cond_26

    :goto_12
    const-string v0, "service version should be <= 0xffff"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 26
    iput p2, p0, Lcom/google/android/youtube/core/converter/a/f;->b:I

    .line 27
    const-string v0, "service string can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/a/f;->a:Ljava/lang/String;

    .line 28
    return-void

    :cond_24
    move v0, v2

    .line 24
    goto :goto_8

    :cond_26
    move v1, v2

    .line 25
    goto :goto_12
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/j;)Lcom/google/android/youtube/googlemobile/masf/a/m;
    .registers 6
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/a/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/a/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/core/converter/a/f;->b:I

    invoke-interface {p1}, Lcom/google/protobuf/j;->w()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/a/j;-><init>(Ljava/lang/String;I[B)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/google/protobuf/j;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/a/f;->a(Lcom/google/protobuf/j;)Lcom/google/android/youtube/googlemobile/masf/a/m;

    move-result-object v0

    return-object v0
.end method
