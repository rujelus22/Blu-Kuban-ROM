.class public Lcom/sec/android/socialhub/messagelist/MessageListBinder;
.super Ljava/lang/Object;
.source "MessageListBinder.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static instance:Lcom/sec/android/socialhub/messagelist/MessageListBinder;


# instance fields
.field private bIsSearch:Z

.field private mCondtion:Ljava/lang/String;

.field protected mContactIdPictureCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFieldResource:I

.field private mGroupRecipients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field private mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;

.field private mStringIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "MessageListBinder"

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->initialize()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawFavoriteIcon(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ImageView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEasFlagIcon(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private calcSection(J)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1406
    .line 1408
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1410
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1423
    :goto_13
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1425
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :goto_20
    return-object v0

    .line 1413
    :cond_21
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1415
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1420
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1430
    :cond_40
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private changeWrapper(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 176
    return-void
.end method

.method private drawEASIcon()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 758
    const/4 v1, -0x1

    .line 759
    .local v1, resid:I
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->milastVerb:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8b

    .line 761
    const v1, 0x7f020121

    .line 767
    :cond_11
    :goto_11
    if-eq v1, v7, :cond_96

    .line 769
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iState2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iState2:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 777
    :goto_25
    const/4 v1, -0x1

    .line 779
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miImportance:I

    if-nez v2, :cond_a0

    .line 781
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    const v3, 0x7f020123

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    :cond_41
    :goto_41
    const/4 v1, -0x1

    .line 795
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSmimeFlag:I

    if-ne v2, v8, :cond_cd

    .line 797
    const v1, 0x7f02011d

    .line 816
    :cond_4b
    :goto_4b
    if-eq v1, v7, :cond_105

    .line 818
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    :goto_5f
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEasFlagIcon(Landroid/widget/ImageView;I)V

    .line 829
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 831
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/state/MessageBaseState;

    .line 833
    .local v0, current:Lcom/sec/android/socialhub/state/MessageBaseState;
    if-nez v0, :cond_110

    .line 835
    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v3, "onClick()"

    const-string v4, "current is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :goto_8a
    return-void

    .line 762
    .end local v0           #current:Lcom/sec/android/socialhub/state/MessageBaseState;
    :cond_8b
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->milastVerb:I

    if-ne v2, v4, :cond_11

    .line 764
    const v1, 0x7f020124

    goto/16 :goto_11

    .line 774
    :cond_96
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iState2:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_25

    .line 784
    :cond_a0
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miImportance:I

    if-ne v2, v4, :cond_b0

    .line 786
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 788
    :cond_b0
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miImportance:I

    if-ne v2, v8, :cond_41

    .line 790
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    const v3, 0x7f020122

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_41

    .line 799
    :cond_cd
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSmimeFlag:I

    if-ne v2, v4, :cond_d8

    .line 801
    const v1, 0x7f020125

    goto/16 :goto_4b

    .line 803
    :cond_d8
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrumCallerId:Ljava/lang/String;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrumCallerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ed

    .line 805
    const v1, 0x7f020127

    goto/16 :goto_4b

    .line 807
    :cond_ed
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miMessageType:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_fa

    .line 809
    const v1, 0x7f020126

    goto/16 :goto_4b

    .line 811
    :cond_fa
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miflags:I

    if-eqz v2, :cond_4b

    .line 813
    const v1, 0x7f02011a

    goto/16 :goto_4b

    .line 823
    :cond_105
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5f

    .line 837
    .restart local v0       #current:Lcom/sec/android/socialhub/state/MessageBaseState;
    :cond_110
    if-eqz v0, :cond_12c

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageBaseState;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_12c

    .line 839
    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v3, "onClick()"

    const-string v4, "MODE_DELETE"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_8a

    .line 846
    :cond_12c
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8a
.end method

.method private static drawEasFlagIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "img_flag"
    .parameter "value"

    .prologue
    .line 891
    packed-switch p1, :pswitch_data_18

    .line 902
    const v0, 0x7f02011b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    :goto_9
    return-void

    .line 894
    :pswitch_a
    const v0, 0x7f020120

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 898
    :pswitch_11
    const v0, 0x7f02011c

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 891
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method private drawEmailIcon()V
    .registers 5

    .prologue
    .line 685
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iState2:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagFavorite:I

    invoke-static {v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawFavoriteIcon(Landroid/widget/ImageView;I)V

    .line 690
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/state/MessageBaseState;

    .line 694
    .local v0, current:Lcom/sec/android/socialhub/state/MessageBaseState;
    if-nez v0, :cond_37

    .line 696
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v2, "onClick()"

    const-string v3, "current is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_36
    return-void

    .line 698
    :cond_37
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageBaseState;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_54

    .line 700
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v2, "onClick()"

    const-string v3, "MODE_DELETE"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_36

    .line 707
    :cond_54
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_36
.end method

.method private static drawFavoriteIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "img_favorite"
    .parameter "value"

    .prologue
    .line 746
    if-nez p1, :cond_9

    .line 748
    const v0, 0x7f0200b1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    :goto_8
    return-void

    .line 752
    :cond_9
    const v0, 0x7f0200b0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8
.end method

.method public static drawReadState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 6
    .parameter "context"
    .parameter "wrapper"

    .prologue
    .line 204
    if-eqz p0, :cond_19

    .line 206
    const-string v1, "Title"

    iget-object v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    .local v0, isTitle:Z
    iget v1, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    packed-switch v1, :pswitch_data_24

    .line 215
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setTextColorState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;ZZ)V

    .line 223
    .end local v0           #isTitle:Z
    :goto_13
    return-void

    .line 211
    .restart local v0       #isTitle:Z
    :pswitch_14
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setTextColorState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;ZZ)V

    goto :goto_13

    .line 221
    .end local v0           #isTitle:Z
    :cond_19
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v2, "drawReadState()"

    const-string v3, "context is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 208
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/messagelist/MessageListBinder;
    .registers 4
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->instance:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    if-nez v0, :cond_13

    .line 82
    const-class v1, Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    monitor-enter v1

    .line 84
    :try_start_7
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->instance:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    .line 85
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 87
    :cond_13
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->instance:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    return-object v0

    .line 85
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private initLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_64

    :cond_13
    const-string v0, "Title"

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 230
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 256
    :goto_59
    return-void

    .line 236
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_59

    .line 240
    :cond_64
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    const-string v0, "Title"

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 245
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->listExpander:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    const-string v1, "Open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 247
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->ExpanderIcon:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_59

    .line 249
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->ExpanderIcon:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_59

    .line 253
    :cond_b1
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->listExpander:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_59
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContactIdPictureCache:Ljava/util/HashMap;

    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method private setCheckBox()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getMessageViewMode()I

    move-result v6

    if-ne v6, v4, :cond_8f

    const-string v6, "Title"

    iget-object v7, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v7, v7, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 262
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, bEnable:Z
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v7, 0x258

    if-ne v6, v7, :cond_37

    .line 266
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v6}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    .line 269
    .local v3, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v6, 0x18

    :try_start_30
    invoke-interface {v3, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_33
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_30 .. :try_end_33} :catch_75

    move-result v6

    if-nez v6, :cond_37

    .line 271
    const/4 v0, 0x0

    .line 279
    .end local v3           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_37
    :goto_37
    if-eqz v0, :cond_7c

    .line 281
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 283
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getCheckedItemList()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_74

    .line 285
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v7, v7, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v7, v7, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getCheckedItemList()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    :goto_71
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    .end local v0           #bEnable:Z
    .end local v2           #key:Ljava/lang/String;
    :cond_74
    :goto_74
    return-void

    .line 274
    .restart local v0       #bEnable:Z
    .restart local v3       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_75
    move-exception v1

    .line 275
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_37

    .end local v1           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    .end local v3           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v2       #key:Ljava/lang/String;
    :cond_7a
    move v4, v5

    .line 286
    goto :goto_71

    .line 291
    .end local v2           #key:Ljava/lang/String;
    :cond_7c
    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_74

    .line 298
    .end local v0           #bEnable:Z
    :cond_8f
    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_74
.end method

.method private setContent()V
    .registers 8

    .prologue
    const v6, 0x7f09000d

    const/4 v5, 0x1

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, mText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 527
    .local v1, mTextview:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v2, :sswitch_data_128

    .line 579
    :goto_d
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 580
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-boolean v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    if-ne v2, v5, :cond_2e

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v3, 0x7f0800e0

    if-eq v2, v3, :cond_25

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v3, 0x7f0800e3

    if-ne v2, v3, :cond_2e

    .line 584
    :cond_25
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 586
    :cond_2e
    return-void

    .line 533
    :sswitch_2f
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 535
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    .line 543
    :goto_43
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    .line 545
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_d

    .line 538
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 539
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    goto :goto_43

    .line 541
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 549
    :sswitch_8f
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    .line 550
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miPresence:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b2

    .line 551
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    :goto_ac
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    .line 557
    goto/16 :goto_d

    .line 553
    :cond_b2
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_ac

    .line 562
    :sswitch_b8
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    .line 564
    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_ee
    const-string v2, "Title"

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 569
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents2:Landroid/widget/TextView;

    goto/16 :goto_d

    .line 573
    :cond_102
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 574
    :goto_11b
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    goto/16 :goto_d

    .line 573
    :cond_123
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    goto :goto_11b

    .line 527
    :sswitch_data_128
    .sparse-switch
        0xc8 -> :sswitch_2f
        0x12c -> :sswitch_2f
        0x136 -> :sswitch_2f
        0x190 -> :sswitch_b8
        0x19a -> :sswitch_b8
        0x258 -> :sswitch_2f
        0x2bc -> :sswitch_8f
    .end sparse-switch
.end method

.method private setDisplayName()V
    .registers 5

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_29

    :cond_10
    const-string v0, "Title"

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 513
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNumber2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_29
    iget-boolean v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v1, 0x7f0800e0

    if-eq v0, v1, :cond_3c

    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v1, 0x7f0800e1

    if-ne v0, v1, :cond_4b

    .line 518
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNumber2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v3, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 521
    :cond_4b
    return-void
.end method

.method private setIndexer()V
    .registers 8

    .prologue
    const v6, 0x7f0b0025

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 304
    sget v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountType:Ljava/lang/String;

    const-string v3, "2_Email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountType:Ljava/lang/String;

    const-string v3, "3_SevenEmail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 309
    :cond_31
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_43
    return-void

    .line 314
    :cond_44
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    sget v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b0

    .line 318
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 320
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 327
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_9d
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 333
    :cond_b0
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 335
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 336
    .local v0, index:I
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 338
    .restart local v1       #tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_43

    .line 344
    .end local v0           #index:I
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_f9
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_43
.end method

.method private setInfoIcon()V
    .registers 7

    .prologue
    const v5, 0x7f020172

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 592
    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 594
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    :cond_24
    :goto_24
    return-void

    .line 599
    :cond_25
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_35

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_7d

    .line 601
    :cond_35
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iAttachment2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIcon2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miHasAttachment:I

    if-nez v1, :cond_6f

    .line 607
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iAttachment2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    :goto_5f
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAccountId:I

    invoke-static {v1, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->isEASAccounts(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 613
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEASIcon()V

    goto :goto_24

    .line 609
    :cond_6f
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iAttachment2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5f

    .line 617
    :cond_79
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEmailIcon()V

    goto :goto_24

    .line 623
    :cond_7d
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tUnreadCnt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v1, :sswitch_data_148

    goto :goto_24

    .line 631
    :sswitch_97
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    if-eqz v1, :cond_24

    .line 634
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tUnreadCnt:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 637
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tUnreadCnt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 641
    :sswitch_d7
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    const/4 v0, -0x1

    .line 643
    .local v0, resid:I
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miPresence:I

    packed-switch v1, :pswitch_data_162

    .line 663
    :goto_e8
    :pswitch_e8
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 665
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    if-eqz v1, :cond_24

    .line 667
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_24

    .line 646
    :pswitch_10b
    const v0, 0x7f020109

    .line 647
    goto :goto_e8

    .line 649
    :pswitch_10f
    const v0, 0x7f02010b

    .line 650
    goto :goto_e8

    .line 652
    :pswitch_113
    const v0, 0x7f02010d

    .line 653
    goto :goto_e8

    .line 656
    :pswitch_117
    const v0, 0x7f02010f

    .line 657
    goto :goto_e8

    .line 659
    :pswitch_11b
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e8

    .line 672
    .end local v0           #resid:I
    :sswitch_125
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    if-eqz v1, :cond_24

    .line 675
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_24

    .line 625
    :sswitch_data_148
    .sparse-switch
        0xc8 -> :sswitch_97
        0x12c -> :sswitch_97
        0x136 -> :sswitch_97
        0x258 -> :sswitch_125
        0x2bc -> :sswitch_d7
        0x384 -> :sswitch_97
    .end sparse-switch

    .line 643
    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_117
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_e8
        :pswitch_e8
        :pswitch_117
        :pswitch_11b
    .end packed-switch
.end method

.method private setLeftColorBar()V
    .registers 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAccountId:I

    invoke-static {v1}, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->getAccountColor(I)I

    move-result v0

    .line 354
    .local v0, color:I
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_18

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_2e

    :cond_18
    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 357
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColor:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    :goto_2d
    return-void

    .line 361
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 363
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColorType3:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColorType3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d

    .line 368
    :cond_54
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColorType3:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d
.end method

.method private setProfileImage(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v1, :sswitch_data_e0

    .line 423
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->profile:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    :cond_14
    :goto_14
    return-void

    .line 381
    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->profile:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawContactProfileImage(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 383
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 386
    :sswitch_2d
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->profile:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    if-le v1, v4, :cond_72

    .line 389
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v2, 0x7f020134

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    :goto_53
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 399
    .local v0, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getSmallIspIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_14

    .line 394
    .end local v0           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_72
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 395
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawSnsProfileImage(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    goto :goto_53

    .line 404
    :sswitch_83
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->profile:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b6

    .line 411
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 413
    :cond_b6
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_cb

    .line 415
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 417
    :cond_cb
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    if-ne v1, v4, :cond_14

    .line 419
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 375
    nop

    :sswitch_data_e0
    .sparse-switch
        0xc8 -> :sswitch_15
        0x12c -> :sswitch_15
        0x136 -> :sswitch_15
        0x258 -> :sswitch_2d
        0x2bc -> :sswitch_83
        0x384 -> :sswitch_15
    .end sparse-switch
.end method

.method private setTextColor()V
    .registers 5

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_10

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_46

    .line 182
    :cond_10
    const/4 v0, 0x0

    .line 184
    .local v0, view:Landroid/widget/TextView;
    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 186
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    .line 193
    :goto_23
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-static {v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawReadState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 195
    iget-boolean v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    iget v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v2, 0x7f0800e0

    if-eq v1, v2, :cond_3d

    iget v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v2, 0x7f0800e3

    if-ne v1, v2, :cond_46

    .line 197
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v3, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 200
    .end local v0           #view:Landroid/widget/TextView;
    :cond_46
    return-void

    .line 190
    .restart local v0       #view:Landroid/widget/TextView;
    :cond_47
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName2:Landroid/widget/TextView;

    goto :goto_23
.end method

.method private static setTextColorState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f09000d

    const v3, 0x7f06003d

    const/4 v0, 0x1

    const v1, 0x7f090013

    const v2, 0x7f060039

    .line 1250
    if-eqz p2, :cond_6c

    .line 1252
    if-ne p3, v0, :cond_37

    .line 1254
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1255
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1256
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1282
    :goto_36
    return-void

    .line 1260
    :cond_37
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName2:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1261
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents2:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1262
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime2:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1263
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNumber2:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_36

    .line 1268
    :cond_6c
    if-ne p3, v0, :cond_87

    .line 1270
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1271
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1272
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    const v1, 0x7f090011

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_36

    .line 1276
    :cond_87
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName2:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1277
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents2:Landroid/widget/TextView;

    const v1, 0x7f090012

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1278
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime2:Landroid/widget/TextView;

    const v1, 0x7f090012

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1279
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNumber2:Landroid/widget/TextView;

    const v1, 0x7f090011

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_36
.end method

.method private setTime()V
    .registers 10

    .prologue
    const v3, 0x7f06003d

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 910
    const-string v0, "Title"

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 912
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime3:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    :cond_1d
    :goto_1d
    return-void

    .line 916
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_7f

    :cond_37
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime2:Landroid/widget/TextView;

    move-object v6, v0

    .line 921
    :goto_3e
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v0, :sswitch_data_15a

    .line 966
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miDate:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 971
    :cond_60
    :goto_60
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-boolean v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    if-ne v0, v8, :cond_1d

    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v1, 0x7f0800e0

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v1, 0x7f0800e2

    if-ne v0, v1, :cond_1d

    .line 975
    :cond_75
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v2, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_1d

    .line 918
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime3:Landroid/widget/TextView;

    move-object v6, v0

    goto :goto_3e

    .line 931
    :sswitch_87
    :try_start_87
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b9
    .catchall {:try_start_87 .. :try_end_b9} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b9} :catch_134

    move-result-object v1

    .line 933
    if-eqz v1, :cond_eb

    :try_start_bc
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_eb

    .line 935
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_bc .. :try_end_d2} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d2} :catch_14f

    move-result-object v7

    .line 936
    :try_start_d3
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_e3
    .catchall {:try_start_d3 .. :try_end_e3} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e3} :catch_154

    move-object v0, v7

    .line 958
    :goto_e4
    if-eqz v1, :cond_60

    .line 960
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_60

    .line 940
    :cond_eb
    :try_start_eb
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miError:I

    if-lez v0, :cond_114

    .line 942
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_101} :catch_14f

    move-result-object v7

    .line 943
    :try_start_102
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_112
    .catchall {:try_start_102 .. :try_end_112} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_112} :catch_154

    move-object v0, v7

    goto :goto_e4

    .line 947
    :cond_114
    :try_start_114
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getTime(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_121} :catch_14f

    move-result-object v7

    .line 948
    :try_start_122
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_132
    .catchall {:try_start_122 .. :try_end_132} :catchall_14a
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_132} :catch_154

    move-object v0, v7

    goto :goto_e4

    .line 952
    :catch_134
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v0, v7

    .line 954
    :goto_138
    :try_start_138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_14c

    .line 958
    if-eqz v2, :cond_60

    .line 960
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_60

    .line 958
    :catchall_142
    move-exception v0

    move-object v1, v7

    :goto_144
    if-eqz v1, :cond_149

    .line 960
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 961
    :cond_149
    throw v0

    .line 958
    :catchall_14a
    move-exception v0

    goto :goto_144

    :catchall_14c
    move-exception v0

    move-object v1, v2

    goto :goto_144

    .line 952
    :catch_14f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_138

    :catch_154
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_138

    .line 921
    nop

    :sswitch_data_15a
    .sparse-switch
        0xc8 -> :sswitch_87
        0x12c -> :sswitch_87
        0x136 -> :sswitch_87
        0x384 -> :sswitch_87
    .end sparse-switch
.end method

.method private setTitle()V
    .registers 8

    .prologue
    const v6, 0x7f0800e0

    const/4 v5, 0x1

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, mText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 432
    .local v1, mTextview:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v2, :sswitch_data_160

    .line 487
    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v3, 0x190

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v3, 0x19a

    if-ne v2, v3, :cond_135

    .line 491
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawReadState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 493
    iget-boolean v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    if-ne v2, v5, :cond_4a

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    if-eq v2, v6, :cond_41

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v3, 0x7f0800e3

    if-ne v2, v3, :cond_4a

    .line 495
    :cond_41
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 507
    :cond_4a
    :goto_4a
    return-void

    .line 439
    :sswitch_4b
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->getContactInfo(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    const-string v3, "CBmessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 442
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_69
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    .line 457
    goto :goto_18

    .line 444
    :cond_70
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    const-string v3, "Push message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 446
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 448
    :cond_8a
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 450
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 454
    :cond_a4
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    goto :goto_69

    .line 460
    :sswitch_a9
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    if-eqz v2, :cond_113

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_113

    .line 461
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    .line 465
    :goto_bf
    const-string v2, "Title"

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 467
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const-string v2, "Fwd: "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Re: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    goto/16 :goto_18

    .line 463
    :cond_113
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_bf

    .line 474
    :cond_121
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName2:Landroid/widget/TextView;

    .line 477
    goto/16 :goto_18

    .line 480
    :sswitch_129
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    .line 482
    goto/16 :goto_18

    .line 500
    :cond_135
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-boolean v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    if-ne v2, v5, :cond_4a

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    if-eq v2, v6, :cond_154

    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I

    const v3, 0x7f0800e1

    if-ne v2, v3, :cond_4a

    .line 504
    :cond_154
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_4a

    .line 433
    nop

    :sswitch_data_160
    .sparse-switch
        0xc8 -> :sswitch_4b
        0x12c -> :sswitch_4b
        0x136 -> :sswitch_4b
        0x190 -> :sswitch_a9
        0x19a -> :sswitch_a9
        0x258 -> :sswitch_129
        0x2bc -> :sswitch_129
        0x384 -> :sswitch_4b
    .end sparse-switch
.end method


# virtual methods
.method public changeGroupRecipients(Landroid/database/Cursor;)V
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0xb

    const/4 v8, 0x1

    .line 1322
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1323
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1325
    if-eqz p1, :cond_cb

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 1327
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1331
    :cond_19
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1333
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1335
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_32
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v8, :cond_c5

    .line 1344
    :try_start_3a
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_db
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_69} :catch_e5

    move-result-object v1

    .line 1349
    if-eqz v1, :cond_d5

    .line 1351
    :try_start_6c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1352
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1353
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1354
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    if-nez v0, :cond_89

    .line 1358
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v3, "changeGroupRecipients()"

    const-string v4, "name is null!!!"

    invoke-static {v0, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v0, ""

    .line 1362
    :cond_89
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_91
    :goto_91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1367
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1369
    if-nez v0, :cond_a9

    .line 1371
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v4, "changeGroupRecipients()"

    const-string v5, "name is null!!! (in while)"

    invoke-static {v0, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v0, ""

    .line 1375
    :cond_a9
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1377
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1378
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_bb
    .catchall {:try_start_6c .. :try_end_bb} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_bb} :catch_bc

    goto :goto_91

    .line 1385
    :catch_bc
    move-exception v0

    .line 1387
    :goto_bd
    :try_start_bd
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_e3

    .line 1391
    if-eqz v1, :cond_c5

    .line 1393
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_c5
    :goto_c5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1401
    :cond_cb
    return-void

    .line 1382
    :cond_cc
    :try_start_cc
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d5} :catch_bc

    .line 1391
    :cond_d5
    if-eqz v1, :cond_c5

    .line 1393
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c5

    .line 1391
    :catchall_db
    move-exception v0

    move-object v1, v6

    :goto_dd
    if-eqz v1, :cond_e2

    .line 1393
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1394
    :cond_e2
    throw v0

    .line 1391
    :catchall_e3
    move-exception v0

    goto :goto_dd

    .line 1385
    :catch_e5
    move-exception v0

    move-object v1, v6

    goto :goto_bd
.end method

.method public changeIndexer(Landroid/database/Cursor;)V
    .registers 7
    .parameter

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1290
    if-eqz p1, :cond_69

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_69

    .line 1292
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1293
    const-string v0, ""

    .line 1296
    const-string v0, ""

    .line 1297
    const/4 v0, 0x0

    .line 1300
    :cond_1f
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1301
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1302
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1303
    invoke-direct {p0, v3, v4}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->calcSection(J)Ljava/lang/String;

    move-result-object v1

    .line 1304
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1306
    if-eqz v1, :cond_50

    .line 1308
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_50
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 1312
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 1316
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1318
    :cond_69
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContactIdPictureCache:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContactIdPictureCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    if-eqz v0, :cond_25

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mStringIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    :cond_25
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    if-eqz v0, :cond_2e

    .line 135
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mGroupRecipients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    :cond_2e
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 139
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 140
    return-void
.end method

.method public drawContactProfileImage(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v5, 0x7f020135

    const/4 v8, 0x0

    .line 983
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    const-string v1, "CBmessages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 985
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1072
    :cond_1a
    :goto_1a
    return-void

    .line 988
    :cond_1b
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    const-string v1, "Push message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 990
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a

    .line 994
    :cond_30
    const-wide/16 v0, -0x1

    .line 998
    :try_start_32
    iget-object v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    if-eqz v2, :cond_3c

    .line 999
    iget-object v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_58

    move-result-wide v0

    :cond_3c
    move-wide v6, v0

    .line 1007
    :goto_3d
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1009
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v3

    .line 1013
    iget v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    if-le v0, v4, :cond_5e

    .line 1015
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a

    .line 1001
    :catch_58
    move-exception v2

    .line 1003
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v6, v0

    goto :goto_3d

    .line 1019
    :cond_5e
    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    if-gez v0, :cond_6c

    .line 1021
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a

    .line 1027
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContactIdPictureCache:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1029
    if-nez v0, :cond_dd

    .line 1031
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_e6
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_86} :catch_e9

    move-result-object v1

    .line 1034
    if-eqz v1, :cond_cb

    :try_start_89
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 1036
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1038
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_b5

    .line 1042
    iget-object v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1043
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContactIdPictureCache:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_89 .. :try_end_ae} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_ae} :catch_c0

    .line 1066
    :goto_ae
    if-eqz v1, :cond_1a

    .line 1068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a

    .line 1047
    :cond_b5
    :try_start_b5
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v2, 0x7f020135

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bf} :catch_c0

    goto :goto_ae

    .line 1060
    :catch_c0
    move-exception v0

    .line 1062
    :goto_c1
    :try_start_c1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_d6

    .line 1066
    if-eqz v1, :cond_1a

    .line 1068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a

    .line 1052
    :cond_cb
    :try_start_cb
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    const v2, 0x7f020135

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d5} :catch_c0

    goto :goto_ae

    .line 1066
    :catchall_d6
    move-exception v0

    :goto_d7
    if-eqz v1, :cond_dc

    .line 1068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_dc
    throw v0

    .line 1057
    :cond_dd
    :try_start_dd
    iget-object v1, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_e6
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e4} :catch_e9

    move-object v1, v8

    goto :goto_ae

    .line 1066
    :catchall_e6
    move-exception v0

    move-object v1, v8

    goto :goto_d7

    .line 1060
    :catch_e9
    move-exception v0

    move-object v1, v8

    goto :goto_c1
.end method

.method public drawSnsProfileImage(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1076
    .line 1077
    const-string v0, "content://com.sec.android.app.provider.sns/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1078
    const-string v0, "msg_receiver_map/"

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1082
    if-nez p2, :cond_1a

    .line 1084
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v1, "drawSnsProfileImage()"

    const-string v2, "wrapper is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_19
    :goto_19
    return-void

    .line 1088
    :cond_1a
    iget v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 1090
    if-nez v8, :cond_3f

    .line 1092
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v1, "drawSnsProfileImage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sns is null. spType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 1098
    :cond_3f
    const/16 v0, 0xf

    :try_start_41
    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v5, :cond_10f

    .line 1100
    iget-object v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    if-nez v0, :cond_d5

    .line 1102
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v3, "drawSnsProfileImage()"

    const-string v4, "mstrName is null!!!"

    invoke-static {v0, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_41 .. :try_end_54} :catch_55

    goto :goto_19

    .line 1114
    :catch_55
    move-exception v0

    .line 1116
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    move-object v3, v6

    .line 1123
    :goto_5a
    :try_start_5a
    iget v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v5, :cond_160

    const/16 v0, 0xf

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_160

    .line 1127
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v5, :cond_143

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    :goto_88
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "message/"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sender_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "sender_photo_url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a6
    .catchall {:try_start_5a .. :try_end_a6} :catchall_19c
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_a6} :catch_17b
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_a6} :catch_186
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_5a .. :try_end_a6} :catch_191

    move-result-object v7

    .line 1154
    :goto_a7
    if-eqz v7, :cond_1af

    :try_start_a9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1156
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1159
    :goto_b5
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    const/4 v3, 0x0

    iget-object v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v4, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    invoke-interface {v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_ce

    .line 1162
    iget-object v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_ce
    .catchall {:try_start_a9 .. :try_end_ce} :catchall_1a3
    .catch Ljava/lang/IllegalStateException; {:try_start_a9 .. :try_end_ce} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_ce} :catch_1a9
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_a9 .. :try_end_ce} :catch_1a6

    .line 1174
    :cond_ce
    if-eqz v7, :cond_19

    .line 1176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 1105
    :cond_d5
    :try_start_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and UPPER("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "receiver_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10c
    move-object v3, v0

    .line 1117
    goto/16 :goto_5a

    .line 1110
    :cond_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "receiver_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_141
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_d5 .. :try_end_141} :catch_55

    move-result-object v0

    goto :goto_10c

    .line 1133
    :cond_143
    :try_start_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_88

    .line 1145
    :cond_160
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "receiver_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "receiver_photo_url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_178
    .catchall {:try_start_143 .. :try_end_178} :catchall_19c
    .catch Ljava/lang/IllegalStateException; {:try_start_143 .. :try_end_178} :catch_17b
    .catch Ljava/lang/NumberFormatException; {:try_start_143 .. :try_end_178} :catch_186
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_143 .. :try_end_178} :catch_191

    move-result-object v7

    goto/16 :goto_a7

    .line 1165
    :catch_17b
    move-exception v0

    .line 1166
    :goto_17c
    :try_start_17c
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_19c

    .line 1174
    if-eqz v6, :cond_19

    .line 1176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 1167
    :catch_186
    move-exception v0

    .line 1168
    :goto_187
    :try_start_187
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_19c

    .line 1174
    if-eqz v6, :cond_19

    .line 1176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 1169
    :catch_191
    move-exception v0

    .line 1170
    :goto_192
    :try_start_192
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_19c

    .line 1174
    if-eqz v6, :cond_19

    .line 1176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 1174
    :catchall_19c
    move-exception v0

    :goto_19d
    if-eqz v6, :cond_1a2

    .line 1176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1a2
    throw v0

    .line 1174
    :catchall_1a3
    move-exception v0

    move-object v6, v7

    goto :goto_19d

    .line 1169
    :catch_1a6
    move-exception v0

    move-object v6, v7

    goto :goto_192

    .line 1167
    :catch_1a9
    move-exception v0

    move-object v6, v7

    goto :goto_187

    .line 1165
    :catch_1ac
    move-exception v0

    move-object v6, v7

    goto :goto_17c

    :cond_1af
    move-object v2, v6

    goto/16 :goto_b5
.end method

.method public getContactInfo(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 1211
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1213
    iget-object v1, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1215
    array-length v4, v3

    move v1, v0

    :goto_13
    if-ge v0, v4, :cond_51

    aget-object v5, v3, v0

    .line 1218
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v7, v8, v5}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->getContactName(JLjava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v6

    .line 1220
    if-eqz v6, :cond_4b

    iget-wide v7, v6, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4b

    .line 1222
    iget-wide v7, v6, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    .line 1223
    iget-object v5, v6, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    .line 1232
    array-length v5, v3

    if-ge v1, v5, :cond_48

    .line 1233
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1215
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1227
    :cond_4b
    iput-object v11, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    .line 1228
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    .line 1238
    :cond_51
    iget-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1240
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1241
    const-string v1, "name"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1245
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    .line 1246
    return-void
.end method

.method public loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1183
    .line 1188
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3c

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_36

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1194
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1195
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_44

    move-result-object v6

    .line 1200
    :cond_36
    if-eqz v1, :cond_3b

    .line 1202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1206
    :cond_3b
    return-object v6

    .line 1200
    :catchall_3c
    move-exception v0

    move-object v1, v6

    :goto_3e
    if-eqz v1, :cond_43

    .line 1202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_43
    throw v0

    .line 1200
    :catchall_44
    move-exception v0

    goto :goto_3e
.end method

.method public setBindView(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 7
    .parameter "context"
    .parameter "arg0"

    .prologue
    .line 144
    if-nez p2, :cond_c

    .line 146
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->TAG:Ljava/lang/String;

    const-string v2, "setBindView()"

    const-string v3, "wrapper is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_b
    return-void

    .line 150
    :cond_c
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->changeWrapper(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 154
    :try_start_f
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->initLayout()V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setCheckBox()V

    .line 156
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setIndexer()V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setLeftColorBar()V

    .line 158
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setTitle()V

    .line 159
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setProfileImage(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setDisplayName()V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setContent()V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setInfoIcon()V

    .line 163
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setTime()V

    .line 164
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setTextColor()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_31

    goto :goto_b

    .line 166
    :catch_31
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public setMessageAPI(Lcom/sec/android/socialhub/messagelist/IMessageAPI;)V
    .registers 2
    .parameter "api"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 93
    return-void
.end method

.method public setSearchMode(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 1438
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v3

    .line 1439
    .local v3, tab_state:Lcom/sec/android/socialhub/state/tab/MessageTabState;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/state/MessageBaseState;

    .line 1440
    .local v1, current:Lcom/sec/android/socialhub/state/MessageBaseState;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1442
    .local v0, bSearchMode:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->bIsSearch:Z

    .line 1443
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->getQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getConidtion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mCondtion:Ljava/lang/String;

    .line 1444
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->getQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getFieldResource()I

    move-result v4

    iput v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mFieldResource:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 1450
    .end local v0           #bSearchMode:Ljava/lang/Boolean;
    .end local v1           #current:Lcom/sec/android/socialhub/state/MessageBaseState;
    .end local v3           #tab_state:Lcom/sec/android/socialhub/state/tab/MessageTabState;
    :goto_36
    return-void

    .line 1446
    :catch_37
    move-exception v2

    .line 1448
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public setState(Lcom/sec/android/socialhub/state/tab/TabState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 98
    return-void
.end method
