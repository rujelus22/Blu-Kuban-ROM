.class public Lcom/google/android/plus1/ao;
.super Lcom/google/android/plus1/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/PlusOneReader;


# instance fields
.field protected final a:Lcom/google/android/plus1/PlusOneReader;

.field protected final b:Lcom/google/android/plus1/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/plus1/h;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/plus1/ao;->a:Lcom/google/android/plus1/PlusOneReader;

    .line 30
    iput-object p2, p0, Lcom/google/android/plus1/ao;->b:Lcom/google/android/plus1/ar;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/ap;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/plus1/ao;->a:Lcom/google/android/plus1/PlusOneReader;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneReader;->a()Lcom/google/android/plus1/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/plus1/u;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/google/android/plus1/ao;->a:Lcom/google/android/plus1/PlusOneReader;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneReader;->a(Landroid/net/Uri;)Lcom/google/android/plus1/u;

    move-result-object v4

    .line 37
    if-nez v4, :cond_90

    move-object v0, v1

    .line 38
    :goto_a
    iget-object v2, p0, Lcom/google/android/plus1/ao;->b:Lcom/google/android/plus1/ar;

    invoke-interface {v2}, Lcom/google/android/plus1/ar;->c()Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    move-object v2, v1

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/as;

    .line 40
    instance-of v1, v0, Lcom/google/android/plus1/at;

    if-eqz v1, :cond_a7

    move-object v1, v0

    .line 41
    check-cast v1, Lcom/google/android/plus1/at;

    .line 42
    iget-object v6, v1, Lcom/google/android/plus1/at;->a:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    if-eqz v3, :cond_3b

    iget-object v1, v1, Lcom/google/android/plus1/at;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 45
    :cond_3b
    check-cast v0, Lcom/google/android/plus1/at;

    iget-object v3, v0, Lcom/google/android/plus1/at;->b:Ljava/lang/Boolean;

    .line 46
    const-string v0, "PlusOneReaderWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 47
    const-string v0, "PlusOneReaderWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Applying operation +1="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " to item "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_6e
    if-nez v2, :cond_a5

    .line 51
    if-nez v4, :cond_94

    .line 52
    new-instance v0, Lcom/google/android/plus1/v;

    invoke-direct {v0}, Lcom/google/android/plus1/v;-><init>()V

    .line 53
    iput-object p1, v0, Lcom/google/android/plus1/v;->a:Landroid/net/Uri;

    .line 58
    :goto_79
    iput-object v3, v0, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x1

    .line 60
    :goto_82
    const/4 v2, 0x0

    iget v6, v0, Lcom/google/android/plus1/v;->d:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/plus1/v;->d:I

    move-object v2, v0

    move-object v0, v3

    :goto_8e
    move-object v3, v0

    .line 62
    goto :goto_16

    .line 37
    :cond_90
    iget-object v0, v4, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 55
    :cond_94
    new-instance v0, Lcom/google/android/plus1/v;

    invoke-direct {v0, v4}, Lcom/google/android/plus1/v;-><init>(Lcom/google/android/plus1/u;)V

    goto :goto_79

    .line 59
    :cond_9a
    const/4 v1, -0x1

    goto :goto_82

    .line 64
    :cond_9c
    if-eqz v2, :cond_a3

    .line 65
    invoke-virtual {v2}, Lcom/google/android/plus1/v;->a()Lcom/google/android/plus1/u;

    move-result-object v0

    .line 67
    :goto_a2
    return-object v0

    :cond_a3
    move-object v0, v4

    goto :goto_a2

    :cond_a5
    move-object v0, v2

    goto :goto_79

    :cond_a7
    move-object v0, v3

    goto :goto_8e
.end method
