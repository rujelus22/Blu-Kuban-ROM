.class Lcom/google/android/apps/plus/service/AvatarCache$1;
.super Landroid/support/v4/util/LruCache;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/AvatarCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Lcom/google/android/apps/plus/content/AvatarRequest;",
        "Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/AvatarCache;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/AvatarCache;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AvatarCache$1;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;)I
    .registers 4
    .parameter "request"
    .parameter "value"

    .prologue
    .line 211
    iget-object v0, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    check-cast p1, Lcom/google/android/apps/plus/content/AvatarRequest;

    .end local p1
    check-cast p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/AvatarCache$1;->sizeOf(Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;)I

    move-result v0

    return v0
.end method
