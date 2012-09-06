.class Lcom/google/android/music/widgets/VolumeWidget$2;
.super Landroid/database/ContentObserver;
.source "VolumeWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/VolumeWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/VolumeWidget;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/VolumeWidget;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/music/widgets/VolumeWidget$2;->this$0:Lcom/google/android/music/widgets/VolumeWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget$2;->this$0:Lcom/google/android/music/widgets/VolumeWidget;

    #calls: Lcom/google/android/music/widgets/VolumeWidget;->requestUpdate()V
    invoke-static {v0}, Lcom/google/android/music/widgets/VolumeWidget;->access$000(Lcom/google/android/music/widgets/VolumeWidget;)V

    .line 81
    return-void
.end method
