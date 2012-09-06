.class final Lcom/dropbox/android/activity/ag;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryPickerFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dropbox/android/activity/ag;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/android/activity/ag;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a()V

    .line 141
    return-void
.end method
