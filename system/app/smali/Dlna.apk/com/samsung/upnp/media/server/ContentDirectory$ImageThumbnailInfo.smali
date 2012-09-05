.class Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;
.super Ljava/lang/Object;
.source "ContentDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/media/server/ContentDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageThumbnailInfo"
.end annotation


# instance fields
.field protected filepath:Ljava/lang/String;

.field protected height:I

.field final synthetic this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

.field protected thumbUri:Landroid/net/Uri;

.field protected width:I


# direct methods
.method private constructor <init>(Lcom/samsung/upnp/media/server/ContentDirectory;)V
    .registers 2
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/upnp/media/server/ContentDirectory;Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;-><init>(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    return-void
.end method
