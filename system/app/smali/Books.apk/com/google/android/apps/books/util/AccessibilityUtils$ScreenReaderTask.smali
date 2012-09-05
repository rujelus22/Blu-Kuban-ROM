.class public abstract Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;
.super Landroid/os/AsyncTask;
.source "AccessibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/AccessibilityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScreenReaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .parameter "voids"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onPostExecute(Ljava/lang/Boolean;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
