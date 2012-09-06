.class final Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/RemoteImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoaderOperation"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mRequest:Lcom/google/android/apps/plus/content/ImageRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 3
    .parameter "context"
    .parameter "request"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    .line 42
    return-void
.end method
