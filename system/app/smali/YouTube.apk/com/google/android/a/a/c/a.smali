.class public final Lcom/google/android/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/a/a/c/c;

.field private final c:Lcom/google/android/a/a/c/d;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/a/a/c/b;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/a/a/c/b;->a(Lcom/google/android/a/a/c/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/c/a;->d:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/google/android/a/a/c/b;->b(Lcom/google/android/a/a/c/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/c/a;->a:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/google/android/a/a/c/b;->c(Lcom/google/android/a/a/c/b;)Lcom/google/android/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/c/a;->b:Lcom/google/android/a/a/c/c;

    .line 63
    invoke-static {p1}, Lcom/google/android/a/a/c/b;->d(Lcom/google/android/a/a/c/b;)Lcom/google/android/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/c/a;->c:Lcom/google/android/a/a/c/d;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/a/a/c/c;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->b:Lcom/google/android/a/a/c/c;

    return-object v0
.end method

.method public final c()Lcom/google/android/a/a/c/d;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->c:Lcom/google/android/a/a/c/d;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->a:Ljava/lang/String;

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
    .line 87
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->b:Lcom/google/android/a/a/c/c;

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
    .line 91
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->c:Lcom/google/android/a/a/c/d;

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
    .line 95
    iget-object v0, p0, Lcom/google/android/a/a/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
