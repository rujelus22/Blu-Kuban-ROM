.class Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicTabListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field splitSelectedIcon:Landroid/widget/ImageView;

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

.field thumbnailView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->this$1:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
