.class public final Lcom/google/android/youtube/app/remote/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ap;


# instance fields
.field private final a:Lcom/google/android/ytremote/model/b;

.field private final b:Lcom/google/android/ytremote/model/CloudScreen;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "screen can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ytremote/model/b;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "device can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/b;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public final b()Lcom/google/android/ytremote/model/b;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    return-object v0
.end method

.method public final c()Lcom/google/android/ytremote/model/CloudScreen;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p0, p1, :cond_5

    .line 55
    :cond_4
    :goto_4
    return v0

    .line 34
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 35
    goto :goto_4

    .line 37
    :cond_9
    instance-of v2, p1, Lcom/google/android/youtube/app/remote/bb;

    if-nez v2, :cond_f

    move v0, v1

    .line 38
    goto :goto_4

    .line 40
    :cond_f
    check-cast p1, Lcom/google/android/youtube/app/remote/bb;

    .line 41
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    if-nez v2, :cond_1b

    .line 42
    iget-object v2, p1, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    if-eqz v2, :cond_27

    move v0, v1

    .line 43
    goto :goto_4

    .line 45
    :cond_1b
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    iget-object v3, p1, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move v0, v1

    .line 46
    goto :goto_4

    .line 48
    :cond_27
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    if-nez v2, :cond_31

    .line 49
    iget-object v2, p1, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    if-eqz v2, :cond_4

    move v0, v1

    .line 50
    goto :goto_4

    .line 52
    :cond_31
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v3, p1, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/CloudScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 53
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    .line 87
    return v0

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bb;->a:Lcom/google/android/ytremote/model/b;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/b;->hashCode()I

    move-result v0

    goto :goto_6

    .line 86
    :cond_17
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bb;->b:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen;->hashCode()I

    move-result v1

    goto :goto_e
.end method
