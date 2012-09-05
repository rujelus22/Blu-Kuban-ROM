.class public final Lcom/google/android/youtube/app/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Collection;

.field public final b:Ljava/util/Collection;


# direct methods
.method synthetic constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/app/b/n;-><init>(Ljava/util/Collection;Ljava/util/Collection;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/app/b/n;->a:Ljava/util/Collection;

    .line 33
    iput-object p2, p0, Lcom/google/android/youtube/app/b/n;->b:Ljava/util/Collection;

    .line 34
    return-void
.end method
