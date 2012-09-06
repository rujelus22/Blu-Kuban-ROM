.class final Lcom/google/android/music/albumwall/Model$Focusable;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Focusable"
.end annotation


# instance fields
.field public mIsPileList:Z

.field public mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field public mItemIndex:I

.field public mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public mPileIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 767
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 3
    .parameter "pile"

    .prologue
    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mIsPileList:Z

    .line 763
    return-void
.end method


# virtual methods
.method public isPileList()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mIsPileList:Z

    return v0
.end method
