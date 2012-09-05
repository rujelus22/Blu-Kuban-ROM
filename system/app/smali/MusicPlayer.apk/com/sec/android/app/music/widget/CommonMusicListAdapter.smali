.class public Lcom/sec/android/app/music/widget/CommonMusicListAdapter;
.super Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;
.source "CommonMusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;,
        Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field protected static sDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 10
    .parameter "context"
    .parameter "view"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 25
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    if-nez v0, :cond_25

    .line 26
    sget-object v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlbumArtLoader Thread state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    invoke-virtual {v2}, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_25
    sget-object v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->sDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2f

    .line 30
    invoke-static {p1}, Lcom/sec/android/app/music/MusicUtils;->getListDefaultArtwork(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->sDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    :cond_2f
    return-void
.end method
