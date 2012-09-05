.class public final Lcom/google/android/youtube/core/converter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/converter/c;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/youtube/core/converter/c;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/c;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object p0
.end method
