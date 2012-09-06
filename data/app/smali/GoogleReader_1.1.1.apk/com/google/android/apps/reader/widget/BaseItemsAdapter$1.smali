.class Lcom/google/android/apps/reader/widget/BaseItemsAdapter$1;
.super Landroid/support/v4/content/CursorLoader;
.source "BaseItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/widget/BaseItemsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/reader/widget/BaseItemsAdapter;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$1;->this$0:Lcom/google/android/apps/reader/widget/BaseItemsAdapter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/apps/reader/widget/ModifiedCursor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;-><init>(Landroid/database/Cursor;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$1;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
