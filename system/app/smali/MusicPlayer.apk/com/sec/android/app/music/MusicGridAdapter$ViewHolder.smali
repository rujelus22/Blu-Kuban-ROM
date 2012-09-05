.class Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/music/MusicGridAdapter;

.field thumbnailView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicGridAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
