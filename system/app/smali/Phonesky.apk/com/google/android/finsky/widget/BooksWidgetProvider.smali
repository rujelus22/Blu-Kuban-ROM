.class public Lcom/google/android/finsky/widget/BooksWidgetProvider;
.super Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.source "BooksWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDfeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/finsky/config/G;->booksWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getValidDocumentTypes()[I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method
