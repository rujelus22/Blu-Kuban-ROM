.class public Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
.super Ljava/lang/Object;
.source "CommonMusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/widget/CommonMusicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtInfo"
.end annotation


# instance fields
.field public albumId:J

.field public context:Landroid/content/Context;

.field public d:Landroid/graphics/drawable/Drawable;

.field public iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/music/widget/CommonMusicListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->this$0:Lcom/sec/android/app/music/widget/CommonMusicListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
