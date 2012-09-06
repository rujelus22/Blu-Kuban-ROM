.class Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateTypingStatus()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$200(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    .line 72
    return-void
.end method
