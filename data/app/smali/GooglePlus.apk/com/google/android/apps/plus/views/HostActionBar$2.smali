.class Lcom/google/android/apps/plus/views/HostActionBar$2;
.super Ljava/lang/Object;
.source "HostActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/HostActionBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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
    .line 832
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar$2;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$2;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #calls: Lcom/google/android/apps/plus/views/HostActionBar;->showOverflowMenu()V
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->access$700(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 837
    return-void
.end method
