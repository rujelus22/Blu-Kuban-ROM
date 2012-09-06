.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->prefetchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->readNextPage()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1300(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    .line 742
    :cond_d
    return-void
.end method
