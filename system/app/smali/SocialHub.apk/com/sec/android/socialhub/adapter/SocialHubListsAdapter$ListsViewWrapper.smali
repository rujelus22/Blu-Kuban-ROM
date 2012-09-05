.class public Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
.super Ljava/lang/Object;
.source "SocialHubListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListsViewWrapper"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public layoutLists:Landroid/widget/LinearLayout;

.field public strGroupingID:Ljava/lang/String;

.field public strListsName:Ljava/lang/String;

.field public viewListsName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "grouping_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "owner_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "owner_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strGroupingID:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strListsName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->viewListsName:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->layoutLists:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->viewListsName:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->layoutLists:Landroid/widget/LinearLayout;

    .line 63
    return-void
.end method


# virtual methods
.method public changeData(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strGroupingID:Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strListsName:Ljava/lang/String;

    .line 69
    return-void
.end method
