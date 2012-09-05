.class Lcom/sec/android/app/music/TrackBrowserActivity$20;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeChangeOrderHeader(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$20;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1246
    if-eq p1, p2, :cond_1a

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$20;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-wide v1, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    invoke-static {v0, v1, v2, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$20;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1200(Lcom/sec/android/app/music/TrackBrowserActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1a

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$20;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I
    invoke-static {v0, p2}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1202(Lcom/sec/android/app/music/TrackBrowserActivity;I)I

    .line 1254
    :cond_1a
    return-void
.end method
