.class Lcom/google/android/music/lockscreen/WaveScene$3$1;
.super Ljava/lang/Object;
.source "WaveScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/WaveScene$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/lockscreen/WaveScene$3;

.field final synthetic val$index:I

.field final synthetic val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveScene$3;Lcom/google/android/music/lockscreen/DrawableTexture;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene$3$1;->this$1:Lcom/google/android/music/lockscreen/WaveScene$3;

    iput-object p2, p0, Lcom/google/android/music/lockscreen/WaveScene$3$1;->val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;

    iput p3, p0, Lcom/google/android/music/lockscreen/WaveScene$3$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$3$1;->val$wave:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v1, 0xc8

    iget v3, p0, Lcom/google/android/music/lockscreen/WaveScene$3$1;->val$index:I

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    const-string v5, "alpha"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 206
    return-void
.end method
