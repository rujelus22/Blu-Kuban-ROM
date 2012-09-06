.class final Lcom/google/android/ytremote/backend/browserchannel/o;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/o;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    .line 632
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/o;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/o;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->p(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/a;)Ljava/util/concurrent/CountDownLatch;

    .line 636
    return-void
.end method
