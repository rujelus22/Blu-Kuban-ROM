.class Lcom/google/googlenav/prefetch/android/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/x;->b:Ljava/util/concurrent/CountDownLatch;

    .line 136
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 161
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->a:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 163
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    if-nez p1, :cond_8

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 157
    :goto_7
    return-void

    .line 146
    :cond_8
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;B)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 149
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_28
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 153
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->a:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/x;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_7
.end method
