.class Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 191
    return-void
.end method

.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 7
    .parameter "ref"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 196
    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500()I

    move-result v0

    if-ne p3, v0, :cond_1f

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600()I

    move-result v0

    if-ne p4, v0, :cond_1f

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 199
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
