.class Lcom/google/common/logging/RotatingLogStream$2;
.super Ljava/lang/Object;
.source "RotatingLogStream.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/logging/RotatingLogStream;->findAllFilesWithBasenameAndExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/logging/RotatingLogStream;

.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$relativeBaseName:Ljava/lang/String;

.field final synthetic val$relativeLinkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/logging/RotatingLogStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/common/logging/RotatingLogStream$2;->this$0:Lcom/google/common/logging/RotatingLogStream;

    iput-object p2, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$relativeLinkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$relativeBaseName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .parameter "directory"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 462
    iget-object v2, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$relativeLinkName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 473
    :cond_a
    :goto_a
    return v0

    .line 465
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$relativeBaseName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 466
    iget-object v2, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$extension:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 467
    iget-object v2, p0, Lcom/google/common/logging/RotatingLogStream$2;->val$extension:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a

    :cond_21
    move v0, v1

    .line 470
    goto :goto_a
.end method
