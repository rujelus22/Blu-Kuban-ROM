.class public final Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
.super Ljava/lang/Object;
.source "AlbumWallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewState"
.end annotation


# instance fields
.field public centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field public centerVisibleItemIndex:I

.field public centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public centerVisiblePileExpandedItemCount:I

.field public centerVisiblePileIndex:I

.field public centerVisiblePileUnexpandedItemCount:I

.field public expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public expandedPileExpandedItemCount:I

.field public expandedPileIndex:I

.field public expandedPileUnexpandedItemCount:I

.field public labelsVisible:Z

.field public pileCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 2
    .parameter "original"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 104
    return-void
.end method


# virtual methods
.method public set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 4
    .parameter "original"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 110
    if-nez p1, :cond_1e

    .line 111
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 112
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 113
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 114
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 115
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 116
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 117
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 118
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 119
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 120
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 121
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 137
    :goto_1d
    return-void

    .line 124
    :cond_1e
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 125
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 126
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 127
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 128
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 129
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 130
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 131
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 132
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 133
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 134
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    .line 135
    iget-boolean v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    goto :goto_1d
.end method
