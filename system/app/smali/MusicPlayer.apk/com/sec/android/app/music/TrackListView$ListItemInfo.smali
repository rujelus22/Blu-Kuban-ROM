.class public Lcom/sec/android/app/music/TrackListView$ListItemInfo;
.super Ljava/lang/Object;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemInfo"
.end annotation


# instance fields
.field itemId:J

.field keyWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/TrackListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
