.class Lcom/google/android/music/LocalDevicePlayback$9;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->clearCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$9;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$9;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$9;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1161
    return-void
.end method
