.class Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;
.super Ljava/lang/Object;
.source "MediaOutputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupingViewHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public name:Landroid/widget/TextView;

.field public nowPlaying:Landroid/widget/ImageView;

.field public status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .registers 5
    .parameter "name"
    .parameter "nowPlaying"
    .parameter "status"
    .parameter "checkBox"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->name:Landroid/widget/TextView;

    .line 66
    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->nowPlaying:Landroid/widget/ImageView;

    .line 67
    iput-object p3, p0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->status:Landroid/widget/TextView;

    .line 68
    iput-object p4, p0, Lcom/android/athome/picker/MediaOutputAdapter$GroupingViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 69
    return-void
.end method
