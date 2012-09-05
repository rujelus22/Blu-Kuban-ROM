.class Lcom/google/android/music/lockscreen/WaveScene$2$1;
.super Ljava/lang/Object;
.source "WaveScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/WaveScene$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/lockscreen/WaveScene$2;

.field final synthetic val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveScene$2;Lcom/google/android/music/lockscreen/DrawableTexture;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene$2$1;->this$1:Lcom/google/android/music/lockscreen/WaveScene$2;

    iput-object p2, p0, Lcom/google/android/music/lockscreen/WaveScene$2$1;->val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$2$1;->val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v1, 0x2bc

    const-wide/16 v3, 0x0

    const-string v5, "alpha"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 162
    return-void
.end method
