.class Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;
.super Landroid/support/v4/util/LruCache;
.source "EsFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;I)V
    .registers 3
    .parameter
    .parameter "size"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;->this$0:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;

    .line 178
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 179
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 176
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3
    check-cast p4, Landroid/support/v4/app/Fragment;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;->entryRemoved(ZLjava/lang/String;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 185
    if-nez p1, :cond_6

    if-eqz p4, :cond_f

    if-eq p3, p4, :cond_f

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;->this$0:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->access$000(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    :cond_f
    return-void
.end method
