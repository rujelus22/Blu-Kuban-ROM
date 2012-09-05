.class Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
.super Ljava/lang/Object;
.source "EsPhotoWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlotContents"
.end annotation


# instance fields
.field public mNeedsImage:Z

.field public final mRef:Lcom/google/android/apps/plus/api/MediaRef;

.field public mRemoteViews:Landroid/widget/RemoteViews;

.field public mRequested:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "ref"

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRequested:Z

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mNeedsImage:Z

    .line 437
    return-void
.end method
