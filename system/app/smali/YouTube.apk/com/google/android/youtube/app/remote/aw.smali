.class final Lcom/google/android/youtube/app/remote/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/ytremote/model/CloudScreen;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const-string v0, "cloudScreen can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/aw;->a:Lcom/google/android/ytremote/model/CloudScreen;

    .line 875
    iput-object p2, p0, Lcom/google/android/youtube/app/remote/aw;->b:Ljava/lang/String;

    .line 876
    iput-wide p3, p0, Lcom/google/android/youtube/app/remote/aw;->c:J

    .line 877
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;JB)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/remote/aw;-><init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/aw;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 2
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aw;->a:Lcom/google/android/ytremote/model/CloudScreen;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/aw;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/aw;)J
    .registers 3
    .parameter

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/google/android/youtube/app/remote/aw;->c:J

    return-wide v0
.end method
