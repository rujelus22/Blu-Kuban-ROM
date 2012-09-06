.class public final Lcom/google/android/ytremote/backend/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/ytremote/backend/model/Method;

.field private final c:Lcom/google/android/ytremote/backend/model/Params;

.field private final d:Lcom/google/android/ytremote/model/LoungeToken;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/backend/model/b;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/android/ytremote/backend/model/b;->a(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/model/LoungeToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->d:Lcom/google/android/ytremote/model/LoungeToken;

    .line 63
    invoke-static {p1}, Lcom/google/android/ytremote/backend/model/b;->b(Lcom/google/android/ytremote/backend/model/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->a:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/google/android/ytremote/backend/model/b;->c(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/backend/model/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->b:Lcom/google/android/ytremote/backend/model/Method;

    .line 65
    invoke-static {p1}, Lcom/google/android/ytremote/backend/model/b;->d(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/backend/model/Params;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->c:Lcom/google/android/ytremote/backend/model/Params;

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/ytremote/backend/model/Method;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->b:Lcom/google/android/ytremote/backend/model/Method;

    return-object v0
.end method

.method public final c()Lcom/google/android/ytremote/backend/model/Params;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->c:Lcom/google/android/ytremote/backend/model/Params;

    return-object v0
.end method

.method public final d()Lcom/google/android/ytremote/model/LoungeToken;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->d:Lcom/google/android/ytremote/model/LoungeToken;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->b:Lcom/google/android/ytremote/backend/model/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->c:Lcom/google/android/ytremote/backend/model/Params;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/a;->d:Lcom/google/android/ytremote/model/LoungeToken;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
