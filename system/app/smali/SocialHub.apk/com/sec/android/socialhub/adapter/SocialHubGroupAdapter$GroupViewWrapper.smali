.class public Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
.super Ljava/lang/Object;
.source "SocialHubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupViewWrapper"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public lUpdateTime:J

.field public strCoverUrl:Ljava/lang/String;

.field public strGroupID:Ljava/lang/String;

.field public strGroupName:Ljava/lang/String;

.field public viewGroupImage:Landroid/widget/ImageView;

.field public viewGroupName:Landroid/widget/TextView;

.field public viewGroupUpdate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 111
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cover_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modify_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strGroupID:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strGroupName:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strCoverUrl:Ljava/lang/String;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->lUpdateTime:J

    .line 92
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupName:Landroid/widget/TextView;

    .line 93
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    .line 94
    iput-object v2, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupUpdate:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupName:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupUpdate:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    .line 101
    return-void
.end method


# virtual methods
.method public changeData(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 105
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strGroupID:Ljava/lang/String;

    .line 106
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strGroupName:Ljava/lang/String;

    .line 107
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strCoverUrl:Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->lUpdateTime:J

    .line 109
    return-void
.end method
