.class Lcom/google/android/apps/plus/views/HostActionBar$1;
.super Ljava/lang/Object;
.source "HostActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/HostActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HostActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar$1;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$1;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #getter for: Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->access$000(Lcom/google/android/apps/plus/views/HostActionBar;)Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$1;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #getter for: Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->access$000(Lcom/google/android/apps/plus/views/HostActionBar;)Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;->onActionBarInvalidated()V

    .line 145
    :cond_11
    return-void
.end method
