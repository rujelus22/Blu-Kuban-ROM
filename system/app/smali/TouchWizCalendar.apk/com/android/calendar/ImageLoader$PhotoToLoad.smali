.class Lcom/android/calendar/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public container:Landroid/view/View;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/calendar/ImageLoader;

.field public url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ImageLoader;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "uri"
    .parameter "i"
    .parameter "c"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/calendar/ImageLoader$PhotoToLoad;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    .line 393
    iput-object p3, p0, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 396
    iput-object p4, p0, Lcom/android/calendar/ImageLoader$PhotoToLoad;->container:Landroid/view/View;

    .line 399
    return-void
.end method
