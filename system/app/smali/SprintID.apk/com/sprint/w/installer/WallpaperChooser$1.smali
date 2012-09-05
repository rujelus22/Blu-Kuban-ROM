.class Lcom/sprint/w/installer/WallpaperChooser$1;
.super Ljava/lang/Object;
.source "WallpaperChooser.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/WallpaperChooser;->findWallpapers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/WallpaperChooser;

.field final synthetic val$wpDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/WallpaperChooser;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperChooser$1;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    iput-object p2, p0, Lcom/sprint/w/installer/WallpaperChooser$1;->val$wpDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$1;->val$wpDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 94
    :cond_18
    const/4 v0, 0x1

    .line 96
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
