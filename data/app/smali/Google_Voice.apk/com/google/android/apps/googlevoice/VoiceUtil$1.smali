.class final Lcom/google/android/apps/googlevoice/VoiceUtil$1;
.super Ljava/lang/Object;
.source "VoiceUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoiceUtil;->executeInParallel(JLjava/util/concurrent/ThreadFactory;[Lcom/google/android/apps/googlevoice/util/Executable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$executable:Lcom/google/android/apps/googlevoice/util/Executable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/util/Executable;)V
    .registers 2
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoiceUtil$1;->val$executable:Lcom/google/android/apps/googlevoice/util/Executable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/VoiceUtil$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceUtil$1;->val$executable:Lcom/google/android/apps/googlevoice/util/Executable;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/util/Executable;->execute()V

    .line 487
    const/4 v0, 0x0

    return-object v0
.end method
