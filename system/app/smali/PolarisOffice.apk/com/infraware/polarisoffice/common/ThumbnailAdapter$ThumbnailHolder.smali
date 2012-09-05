.class public Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailHolder"
.end annotation


# instance fields
.field mFrame:Landroid/widget/FrameLayout;

.field mThumbnail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/common/ThumbnailAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->this$0:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
