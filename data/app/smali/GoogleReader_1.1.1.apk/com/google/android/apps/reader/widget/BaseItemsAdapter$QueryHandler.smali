.class Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BaseItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/BaseItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# static fields
.field public static final TOKEN_DELETE:I = 0x2

.field public static final TOKEN_MARK_ALL_AS_READ:I = 0x3

.field public static final TOKEN_MARK_PREVIOUS_AS_READ:I = 0x4

.field public static final TOKEN_UPDATE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 816
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mContext:Landroid/content/Context;

    .line 817
    return-void
.end method

.method private toast(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    .local v0, text:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->toast(Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method

.method private toast(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 823
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mToast:Landroid/widget/Toast;

    .line 824
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 825
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 855
    packed-switch p1, :pswitch_data_16

    .line 866
    :cond_3
    :goto_3
    return-void

    .line 857
    :pswitch_4
    if-eqz p3, :cond_e

    .line 858
    if-eqz p2, :cond_3

    .line 859
    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->toast(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 862
    :cond_e
    const-string v0, "BaseItemsAdapter"

    const-string v1, "Delete failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 855
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    packed-switch p1, :pswitch_data_1e

    .line 846
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 836
    :pswitch_4
    if-eqz p3, :cond_e

    .line 837
    if-eqz p2, :cond_3

    .line 838
    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->toast(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 841
    :cond_e
    const-string v0, "BaseItemsAdapter"

    const-string v1, "Item was not updated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 845
    :pswitch_16
    const v0, 0x7f0d002b

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;->toast(I)V

    goto :goto_3

    .line 834
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_16
    .end packed-switch
.end method
