.class public final Lcom/google/android/youtube/core/b/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/b/aj;

.field public static final b:Lcom/google/android/youtube/core/b/aj;

.field private static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "uploader_notification"

    const-string v2, "y"

    const-string v3, "f:uploader_notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/b/ak;->a:Lcom/google/android/youtube/core/b/aj;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/b/ak;->b:Lcom/google/android/youtube/core/b/aj;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object v1, Lcom/google/android/youtube/core/b/ak;->a:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/google/android/youtube/core/b/ak;->b:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/b/ak;->c:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/youtube/core/b/ak;->c:Ljava/util/List;

    return-object v0
.end method
