.class Lcom/android/browser/BookmarkWidgetPage$1;
.super Ljava/lang/Object;
.source "BookmarkWidgetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkWidgetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkWidgetPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkWidgetPage;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/browser/BookmarkWidgetPage$1;->this$0:Lcom/android/browser/BookmarkWidgetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage$1;->this$0:Lcom/android/browser/BookmarkWidgetPage;

    const-class v2, Lcom/android/browser/FolderListPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage$1;->this$0:Lcom/android/browser/BookmarkWidgetPage;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/BookmarkWidgetPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    return-void
.end method
