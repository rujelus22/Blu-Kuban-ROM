.class Lcom/sec/android/socialhub/state/BaseState$2;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/state/BaseState;->onHandleSearchRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/state/BaseState;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/state/BaseState;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/socialhub/state/BaseState$2;->this$0:Lcom/sec/android/socialhub/state/BaseState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState$2;->this$0:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->handleSearchRequest()V

    .line 249
    return-void
.end method
