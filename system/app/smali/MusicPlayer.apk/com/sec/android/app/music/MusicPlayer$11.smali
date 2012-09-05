.class Lcom/sec/android/app/music/MusicPlayer$11;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$11;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$11;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayer;->doChangeRepeatMode()V

    .line 1177
    return-void
.end method
