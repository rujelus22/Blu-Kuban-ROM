.class Lcom/sec/android/app/music/MusicPlayer$23;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
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
    .line 3284
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$23;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$23;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->setRingtone(I)V
    invoke-static {v0, p2}, Lcom/sec/android/app/music/MusicPlayer;->access$2000(Lcom/sec/android/app/music/MusicPlayer;I)V

    .line 3292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3294
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$23;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->dismissDialog(I)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_f

    .line 3297
    :goto_e
    return-void

    .line 3295
    :catch_f
    move-exception v0

    goto :goto_e
.end method
