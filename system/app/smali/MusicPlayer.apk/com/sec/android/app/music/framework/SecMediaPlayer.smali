.class public Lcom/sec/android/app/music/framework/SecMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "SecMediaPlayer.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method
