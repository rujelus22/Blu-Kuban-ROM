.class public Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;
.super Ljava/lang/Object;
.source "SocialHubSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListsViewSearchWrapper"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public layoutLists:Landroid/widget/LinearLayout;

.field public strKeywordID:Ljava/lang/String;

.field public strListsName:Ljava/lang/String;

.field public viewListsName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyword_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "created_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->PROJECTION:[Ljava/lang/String;

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
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strKeywordID:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strListsName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->viewListsName:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->layoutLists:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->viewListsName:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->layoutLists:Landroid/widget/LinearLayout;

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

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strKeywordID:Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strListsName:Ljava/lang/String;

    .line 69
    return-void
.end method
