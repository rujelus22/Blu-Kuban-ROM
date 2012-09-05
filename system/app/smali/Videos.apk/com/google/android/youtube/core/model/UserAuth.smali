.class public final Lcom/google/android/youtube/core/model/UserAuth;
.super Ljava/lang/Object;
.source "UserAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
    }
.end annotation


# instance fields
.field public final account:Ljava/lang/String;

.field public final authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field public final authToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "authMethod"
    .parameter "authToken"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/android/youtube/core/model/UserAuth;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 40
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 45
    if-ne p0, p1, :cond_4

    .line 46
    const/4 v1, 0x1

    .line 52
    :goto_3
    return v1

    .line 48
    :cond_4
    instance-of v1, p1, Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v1, :cond_a

    .line 49
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    .line 52
    .local v0, other:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
