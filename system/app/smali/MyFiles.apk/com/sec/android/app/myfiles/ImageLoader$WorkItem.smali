.class Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkItem"
.end annotation


# instance fields
.field mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

.field mOnLoadedRunnable:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;

.field mPostBack:Z

.field mTag:I

.field final synthetic this$0:Lcom/sec/android/app/myfiles/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ImageLoader;Lcom/sec/android/app/myfiles/SimpleIcon;ILcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;Z)V
    .registers 6
    .parameter
    .parameter "image"
    .parameter "tag"
    .parameter "onLoadedRunnable"
    .parameter "postBack"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    .line 164
    iput p3, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mTag:I

    .line 165
    iput-object p4, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;

    .line 166
    iput-boolean p5, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mPostBack:Z

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;

    .line 171
    .local v0, otherWorkItem:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    iget-object v1, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    if-eq v1, v2, :cond_b

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleIcon;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method
