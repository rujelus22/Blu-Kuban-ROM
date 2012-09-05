.class Lcom/sec/android/app/music/MusicPicker$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field duration:Landroid/widget/TextView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field play_indicator:Landroid/widget/ImageView;

.field radio:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter$ViewHolder;->this$1:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
