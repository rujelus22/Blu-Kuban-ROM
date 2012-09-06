.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
.super Ljava/lang/Object;
.source "EsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewInfo"
.end annotation


# instance fields
.field private mAuthorId:Ljava/lang/String;

.field private mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

.field private mAvatarLoaded:Z

.field private final mAvatarLock:Ljava/lang/Object;

.field private mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

.field private mImageLoaded:Z

.field private final mImageLock:Ljava/lang/Object;

.field private mRemoteView:Landroid/widget/RemoteViews;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAuthorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAuthorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;

    return-object v0
.end method
