.class Lcom/google/android/finsky/exploreactivity/DocumentNode$1;
.super Ljava/lang/Object;
.source "DocumentNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/DocumentNode;->docChanged(Lcom/google/android/finsky/exploreactivity/DocWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 2
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setNodeThumbnail()Z

    .line 601
    return-void
.end method
