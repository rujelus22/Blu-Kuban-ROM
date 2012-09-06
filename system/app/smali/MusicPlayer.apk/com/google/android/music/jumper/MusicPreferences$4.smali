.class Lcom/google/android/music/jumper/MusicPreferences$4;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/jumper/MusicPreferences;->setDisplayOptions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 2
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 823
    return-void
.end method
