.class Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;
.super Ljava/lang/Object;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->expandArtist(JLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

.field final synthetic val$animate:Z

.field final synthetic val$artistId:J

.field final synthetic val$focusOnFirstExpandedArtist:Z

.field final synthetic val$sortableAlbumArtistName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;JLjava/lang/String;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    iput-wide p2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$artistId:J

    iput-object p4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$sortableAlbumArtistName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$animate:Z

    iput-boolean p6, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$focusOnFirstExpandedArtist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 139
    new-instance v1, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {v1}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .line 140
    .local v1, pile:Lcom/google/android/music/albumwall/MusicPile;
    iget-wide v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$artistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 141
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    #getter for: Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I
    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->access$000(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/MusicPile;->setMode(I)V

    .line 142
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$sortableAlbumArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$sortableAlbumArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$sortableAlbumArtistName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    #getter for: Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->access$100(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAlbumArtistIndexForPile(Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v0

    .line 147
    .local v0, albumIndex:I
    if-ltz v0, :cond_3f

    .line 148
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    #getter for: Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->access$200(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$animate:Z

    iget-boolean v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$focusOnFirstExpandedArtist:Z

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setExpandAlbumForIndex(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;IZZ)V

    .line 151
    :cond_3f
    return-void
.end method
