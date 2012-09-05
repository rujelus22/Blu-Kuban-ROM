.class Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field duration:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

.field thumbnailButton:Landroid/widget/ImageView;

.field thumbnailView:Landroid/widget/ImageView;

.field title:Landroid/view/View;

.field titleImage:Landroid/widget/ImageView;

.field titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
