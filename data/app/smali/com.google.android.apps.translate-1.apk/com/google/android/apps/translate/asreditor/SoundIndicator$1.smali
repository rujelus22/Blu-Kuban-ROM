.class Lcom/google/android/apps/translate/asreditor/SoundIndicator$1;
.super Ljava/lang/Object;
.source "SoundIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/asreditor/SoundIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/asreditor/SoundIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/asreditor/SoundIndicator;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/SoundIndicator$1;->this$0:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/SoundIndicator$1;->this$0:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->invalidate()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/SoundIndicator$1;->this$0:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    #getter for: Lcom/google/android/apps/translate/asreditor/SoundIndicator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->access$100(Lcom/google/android/apps/translate/asreditor/SoundIndicator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/SoundIndicator$1;->this$0:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    #getter for: Lcom/google/android/apps/translate/asreditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->access$000(Lcom/google/android/apps/translate/asreditor/SoundIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method
