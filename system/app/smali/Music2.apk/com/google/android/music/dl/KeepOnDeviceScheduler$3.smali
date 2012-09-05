.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$3;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$3;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$3;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$400(Lcom/google/android/music/dl/KeepOnDeviceScheduler;Z)V

    .line 254
    return-void
.end method
