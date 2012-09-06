.class Lcom/google/android/gsf/Gservices$1$1;
.super Landroid/database/ContentObserver;
.source "Gservices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/Gservices$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/Gservices$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/Gservices$1;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gsf/Gservices$1$1;->this$0:Lcom/google/android/gsf/Gservices$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter

    .prologue
    .line 73
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 74
    :try_start_3
    invoke-static {}, Lcom/google/android/gsf/Gservices;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gsf/Gservices;->access$102(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
