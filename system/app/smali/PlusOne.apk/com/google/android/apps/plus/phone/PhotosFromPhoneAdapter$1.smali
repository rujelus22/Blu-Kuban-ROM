.class Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;
.super Ljava/lang/Object;
.source "PhotosFromPhoneAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->access$000(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
