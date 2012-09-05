.class Landroid/media/MediaDeleter$DeletingEntry;
.super Ljava/lang/Object;
.source "MediaDeleter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDeleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletingEntry"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mValue:Landroid/content/ContentValues;

.field final synthetic this$0:Landroid/media/MediaDeleter;


# direct methods
.method public constructor <init>(Landroid/media/MediaDeleter;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4
    .parameter
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/media/MediaDeleter$DeletingEntry;->this$0:Landroid/media/MediaDeleter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Landroid/media/MediaDeleter$DeletingEntry;->mUri:Landroid/net/Uri;

    .line 50
    iput-object p3, p0, Landroid/media/MediaDeleter$DeletingEntry;->mValue:Landroid/content/ContentValues;

    .line 51
    return-void
.end method
