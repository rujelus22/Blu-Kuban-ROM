.class Lcom/sec/android/app/personalization/PersoLock$1$2;
.super Ljava/lang/Object;
.source "PersoLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/personalization/PersoLock$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/personalization/PersoLock$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/personalization/PersoLock$1;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$1$2;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$2;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-virtual {v0}, Lcom/sec/android/app/personalization/PersoLock;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$2;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 376
    return-void
.end method
