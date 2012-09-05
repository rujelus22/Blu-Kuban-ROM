.class Lcom/infraware/filemanager/FilePropertyActivity$2;
.super Ljava/lang/Object;
.source "FilePropertyActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FilePropertyActivity;->getLocalSubfolders(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FilePropertyActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FilePropertyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FilePropertyActivity$2;->this$0:Lcom/infraware/filemanager/FilePropertyActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 5
    .parameter "pathname"

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_e

    .line 354
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method
