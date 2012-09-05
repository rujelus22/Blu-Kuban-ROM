.class public Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
.super Ljava/lang/Object;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveWallpaperInfo"
.end annotation


# instance fields
.field public info:Landroid/app/WallpaperInfo;

.field public intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

.field public thumbnail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
