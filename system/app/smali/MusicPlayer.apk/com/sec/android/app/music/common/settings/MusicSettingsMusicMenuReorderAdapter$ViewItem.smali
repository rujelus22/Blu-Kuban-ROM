.class public Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewItem"
.end annotation


# instance fields
.field public mId:I

.field public mMainText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
