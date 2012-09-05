.class public Lcom/google/android/apps/books/appwidget/BooksAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "BooksAppWidgetService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 3
    .parameter "intent"

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
