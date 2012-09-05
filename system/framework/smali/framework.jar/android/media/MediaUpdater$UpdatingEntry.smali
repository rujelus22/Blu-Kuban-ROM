.class Landroid/media/MediaUpdater$UpdatingEntry;
.super Ljava/lang/Object;
.source "MediaUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatingEntry"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mValue:Landroid/content/ContentValues;

.field final synthetic this$0:Landroid/media/MediaUpdater;


# direct methods
.method public constructor <init>(Landroid/media/MediaUpdater;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4
    .parameter
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/media/MediaUpdater$UpdatingEntry;->this$0:Landroid/media/MediaUpdater;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Landroid/media/MediaUpdater$UpdatingEntry;->mUri:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Landroid/media/MediaUpdater$UpdatingEntry;->mValue:Landroid/content/ContentValues;

    .line 50
    return-void
.end method
