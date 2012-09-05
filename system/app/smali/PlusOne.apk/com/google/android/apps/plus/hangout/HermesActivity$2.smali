.class Lcom/google/android/apps/plus/hangout/HermesActivity$2;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 508
    return-void
.end method
