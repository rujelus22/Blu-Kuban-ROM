.class public Lcom/samsung/stri/ui3dglobe/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# instance fields
.field mbPlaying:Z

.field mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/SoundManager;->mp:Landroid/media/MediaPlayer;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/SoundManager;->mbPlaying:Z

    .line 10
    return-void
.end method
