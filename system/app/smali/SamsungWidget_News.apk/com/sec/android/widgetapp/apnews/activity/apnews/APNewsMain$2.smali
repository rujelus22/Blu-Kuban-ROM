.class Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$2;
.super Ljava/lang/Object;
.source "APNewsMain.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->initAPNewsMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->m_firstVisibleItem:I
    invoke-static {v0, p2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$202(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;I)I

    .line 256
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 250
    return-void
.end method
