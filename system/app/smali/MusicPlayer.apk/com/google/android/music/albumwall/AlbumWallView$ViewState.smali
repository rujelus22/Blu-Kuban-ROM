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

.field public pileCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 2
    .parameter "original"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 102
    return-void
.end method


# virtual methods
.method public set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 4
    .parameter "original"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 108
    if-nez p1, :cond_1b

    .line 109
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 110
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 111
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 112
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 113
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 114
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 115
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 116
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 117
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 118
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 119
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    .line 133
    :goto_1a
    return-void

    .line 121
    :cond_1b
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 122
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 123
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 124
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 125
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 126
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 127
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 128
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 129
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 130
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 131
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    goto :goto_1a
.end method
