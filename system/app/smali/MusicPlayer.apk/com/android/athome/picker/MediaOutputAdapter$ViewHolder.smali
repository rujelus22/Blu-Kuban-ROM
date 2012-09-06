.class Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MediaOutputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public inUse:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public volumeIcon:Landroid/widget/ImageView;

.field public volumeSlider:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .registers 6
    .parameter "volumeIcon"
    .parameter "slider"
    .parameter "name"
    .parameter "inUse"
    .parameter "checkbox"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->volumeSlider:Landroid/widget/SeekBar;

    .line 51
    iput-object p3, p0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 52
    iput-object p4, p0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->inUse:Landroid/widget/TextView;

    .line 53
    iput-object p5, p0, Lcom/android/athome/picker/MediaOutputAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 54
    return-void
.end method
