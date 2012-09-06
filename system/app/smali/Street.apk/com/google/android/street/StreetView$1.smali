.class Lcom/google/android/street/StreetView$1;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method constructor <init>(Lcom/google/android/street/StreetView;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/street/StreetView$1;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/StreetView$1;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$000(Lcom/google/android/street/StreetView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    .line 192
    :goto_e
    return-void

    .line 187
    :catch_f
    move-exception v0

    goto :goto_e
.end method
